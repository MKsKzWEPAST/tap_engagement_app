import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_auth/local_auth.dart';
import 'package:minimal_example/src/presentation/dependency_injection/dependencies_provider.dart';
import 'package:minimal_example/src/presentation/navigations/routes.dart';
import 'package:minimal_example/src/presentation/ui/common/widgets/button_next_action.dart';
import 'package:minimal_example/src/presentation/ui/common/widgets/feature_card.dart';
import 'package:minimal_example/src/presentation/ui/home/home_bloc.dart';
import 'package:minimal_example/src/presentation/ui/home/home_event.dart';
import 'package:minimal_example/src/presentation/ui/home/home_state.dart';
import 'package:minimal_example/src/presentation/ui/init/tap_init.dart';
import 'package:minimal_example/utils/custom_button_style.dart';
import 'package:minimal_example/utils/custom_colors.dart';
import 'package:minimal_example/utils/custom_strings.dart';
import 'package:minimal_example/utils/custom_text_styles.dart';
import 'package:minimal_example/utils/custom_widgets_keys.dart';
import 'package:minimal_example/utils/image_resources.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uni_links/uni_links.dart';
import 'package:http/http.dart' as http;

bool _initialUriIsHandled = false;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LocalAuthentication auth = LocalAuthentication();
  late final HomeBloc _bloc;
  TapInitData _tapInfo =
      TapInitData(nonce: "", timestamp: "", signature: "", email: "");
  bool tapSetup = false;
  late StreamController<bool> fetched_stream;
  late StreamSubscription _sub;

  @override
  void initState() {
    super.initState();
    fetched_stream = StreamController<bool>();
    SharedPreferences.getInstance().then((prefs) => _initStream(prefs));
    _bloc = getIt<HomeBloc>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initGetIdentifier();
    });
    _handleIncomingLinks();
    _handleInitialUri();
  }

  void _initStream(SharedPreferences prefs) {
    final tapFetched = prefs.getBool("tapFetched") ?? false;
    fetched_stream.sink.add(tapFetched);
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }

  Future<void> _handleIncomingLinks() async {
    _sub = uriLinkStream.listen((Uri? uri) async {
      final prefs = await SharedPreferences.getInstance();

      if (!mounted || tapSetup) return;
      if (uri != null) {
        String nonce = uri.queryParameters['nonce'] ?? "";
        String email = uri.queryParameters['email'] ?? "";
        String timestamp = uri.queryParameters['timestamp'] ?? "";
        String signature = uri.queryParameters['signature'] ?? "";
        //Get.to(()=> RegisterScreen());
        prefs.setBool("tapSetup", true);
        prefs.setString("email", email);
        setState(() {
          tapSetup = true;
          _tapInfo.nonce = nonce;
          _tapInfo.signature = signature;
          _tapInfo.email = email;
          _tapInfo.timestamp = timestamp;
        });
      }
    }, onError: (Object err) {
      if (!mounted) return;
      print('got err: $err');
    });
  }

  Future<void> _handleInitialUri() async {
    if (!_initialUriIsHandled && !tapSetup) {
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool("tapSetup", false);
      prefs.setString("email", "");

      _initialUriIsHandled = true;
      try {
        final uri = await getInitialUri();
        if (uri != null) {
          String nonce = uri.queryParameters['nonce'] ?? "";
          String email = uri.queryParameters['email'] ?? "";
          String timestamp = uri.queryParameters['timestamp'] ?? "";
          String signature = uri.queryParameters['signature'] ?? "";

          prefs.setBool("tapSetup", true);
          prefs.setString("email", email);

          setState(() {
            tapSetup = true;
            _tapInfo.nonce = nonce;
            _tapInfo.signature = signature;
            _tapInfo.email = email;
            _tapInfo.timestamp = timestamp;
          });
        }

        if (!mounted) return;
      } on PlatformException {
        print('failed to get initial uri');
      } on FormatException catch (err) {
        if (!mounted) return;
        print('malformed initial uri');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: fetched_stream.stream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator(); // Display a loading indicator when waiting for data.
          } else if (snapshot.hasError) {
            return Text(
                'Error: ${snapshot.error}'); // Display an error message if an error occurs.
          } else if (!snapshot.hasData) {
            return Text('No data available'); // Display a message when no data is available.
          } else {
            final fetched = snapshot.data ?? false;
            return Scaffold(
              backgroundColor: CustomColors.background,
              body: SafeArea(
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 50),
                              _buildLogo(),
                              const SizedBox(height: 50),
                              _buildDescription(),
                              const SizedBox(height: 20),
                              _buildProgress(),
                              if (fetched)
                                _buildOwnerSection()
                              else
                                _buildWalletSection(),
                              const SizedBox(height: 20),
                              _buildErrorSection(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        });
  }

  ///
  void _initGetIdentifier() {
    _bloc.add(const CreateIdentityHomeEvent());
  }

  ///
  Widget _buildLogo() {
    return SvgPicture.asset(
      ImageResources.logo,
      width: 120,
    );
  }

  ///
  Widget _buildDescription() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        CustomStrings.homeDescription,
        textAlign: TextAlign.center,
        style: CustomTextStyles.descriptionTextStyle,
      ),
    );
  }

  ///
  Widget _buildProgress() {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, HomeState state) {
        if (state is! LoadingDataHomeState) return const SizedBox.shrink();
        return Column(children: [
          Text(
            CustomStrings.loading,
            textAlign: TextAlign.center,
            style: CustomTextStyles.descriptionTextStyle.copyWith(fontSize: 20),
          ),
          const CircularProgressIndicator(
            backgroundColor: CustomColors.primaryButton,
          ),
        ]);
      },
    );
  }

  Widget _buildOwnerSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, HomeState state) {
          return Align(
            alignment: Alignment.center,
            child: BlocBuilder(
              bloc: _bloc,
              builder: (BuildContext context, HomeState state) {
                return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [ Text(
                                  CustomStrings.homeOwnsTAP,
                                  style: CustomTextStyles.descriptionTextStyle
                                      .copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                ),
                          const SizedBox(height: 20),
                          _buildEnterButton(CustomStrings.homeAccessTAP),
                        ],
                      );
              },
            ),
          );
        },
        buildWhen: (_, currentState) =>
            currentState is LoadedIdentifierHomeState,
      ),
    );
  }

  Widget _buildWalletSection() {
    return FutureBuilder<SharedPreferences>(
        future: SharedPreferences.getInstance(),
        builder:
            (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const CircularProgressIndicator();
            default:
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                tapSetup = snapshot.data!.getBool("tapSetup") ?? false;

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: BlocBuilder(
                    bloc: _bloc,
                    builder: (BuildContext context, HomeState state) {
                      return Align(
                        alignment: Alignment.center,
                        child: BlocBuilder(
                          bloc: _bloc,
                          builder: (BuildContext context, HomeState state) {
                            return state.identifier != null && tapSetup
                                ? Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      state.identifier!.isNotEmpty
                                          ? Text(
                                              CustomStrings.homeHasWallet,
                                              style: CustomTextStyles
                                                  .descriptionTextStyle
                                                  .copyWith(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700),
                                            )
                                          : Text(
                                              CustomStrings.homeNoWallet +
                                                  _tapInfo.nonce,
                                              style: CustomTextStyles
                                                  .descriptionTextStyle
                                                  .copyWith(fontSize: 15),
                                            ),
                                      const SizedBox(height: 20),
                                      _buildEnterButton(CustomStrings.homeNewTAP),
                                    ],
                                  )
                                : Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        CustomStrings.homeNoWallet,
                                        style: CustomTextStyles
                                            .descriptionTextStyle
                                            .copyWith(fontSize: 15),
                                      ),
                                    ],
                                  );
                          },
                        ),
                      );
                    },
                    buildWhen: (_, currentState) =>
                        currentState is LoadedIdentifierHomeState,
                  ),
                );
              }
          }
        });
  }

  ///
  Widget _buildEnterButton(String text) {
    return ElevatedButton(
      // TODO (see same todo in combined)check KYC/Pay status then: Object? personal_data = await Navigator.pushNamed(context, Routes.kycFlow); accordingly (start state may be diff if payed and no kyc...)
    onPressed: () => Navigator.pushNamed(context, Routes.combinedPath),
        child: Text(text));
  }

  ///
  Widget _buildErrorSection() {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, HomeState state) {
        if (state is! ErrorHomeState) return const SizedBox.shrink();
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            state.message,
            style: CustomTextStyles.descriptionTextStyle
                .copyWith(color: CustomColors.redError),
          ),
        );
      },
    );
  }
}
