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
  TapInitData _tapInfo = TapInitData(nonce: "", timestamp: "", signature: "", email: "");
  bool tapSetup = false;
  late StreamSubscription _sub;

  @override
  void initState() {
    super.initState();
    _bloc = getIt<HomeBloc>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initGetIdentifier();
    });
    _handleIncomingLinks();
    _handleInitialUri();

  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }
  Future<void> fetchData(String email, String nonce, String timestamp, String signature) async {
    final url = Uri.parse('https://unbiased-newt-mint.ngrok-free.app/api/tap');
    final response =
    await http.get(url,headers: {'Content-Type': 'application/json', "email": email});
    if (response.statusCode == 200) {

      final jsonData = json.decode(response.body);
      final String t = jsonData['timestamp'] ?? "";
      final String n = jsonData['nonce'] ?? "";
      final s = jsonData['signature'] ?? "";

      if (t == "" || n == "" || s == "") return;

      // TODO ALSO PERFORM TIXNGO CHECK OF DATA!
      print("Get is done");
      final signUrl = Uri.parse('https://unbiased-newt-mint.ngrok-free.app/api/verify');

      final body =
      jsonEncode({'signature': s, 'nonce': n, 'timestamp': t.toString()});

      // Send POST request
      final postRes = await http
          .post(signUrl, body: body, headers: {'Content-Type': 'application/json'});

      // Check if the request was successful
      if (postRes.statusCode == 200) {
        setState(() {
          tapSetup = true;
          nonce = n;
          timestamp = t;
          signature = s;
        });
      }
    } else {
      print('Failed to fetch data. Status code: ${response.statusCode}');
    }
  }


  void _handleIncomingLinks() {
      _sub = uriLinkStream.listen((Uri? uri) {
        if (!mounted || tapSetup) return;
        if (uri != null) {
          String nonce = uri.queryParameters['nonce'] ?? "";
          String email = uri.queryParameters['email'] ?? "";
          String timestamp = uri.queryParameters['timestamp'] ?? "";
          String signature = uri.queryParameters['signature'] ?? "";
          //Get.to(()=> RegisterScreen());
          setState(() {
            tapSetup = true;
            _tapInfo.nonce = nonce;
            _tapInfo.signature =signature;
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
      _initialUriIsHandled = true;
      try {
        final uri = await getInitialUri();
        if (uri != null) {
          String nonce = uri.queryParameters['nonce'] ?? "";
          String email = uri.queryParameters['email'] ?? "";
          String timestamp = uri.queryParameters['timestamp'] ?? "";
          String signature = uri.queryParameters['signature'] ?? "";


          //Get.to(()=> RegisterScreen());
          setState(() {
            tapSetup = true;
            _tapInfo.nonce = nonce;
            _tapInfo.signature =signature;
            _tapInfo.email = email;
            _tapInfo.timestamp = timestamp;
          });
        }

        if (!mounted) return;
      } on PlatformException {
        print('falied to get initial uri');
      } on FormatException catch (err) {
        if (!mounted) return;
        print('malformed initial uri');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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

  ///
  void _initGetIdentifier() {
    _bloc.add(const CreateIdentityHomeEvent());
  }

  ///
  Widget _buildIdentityActionButton() {
    return Align(
      alignment: Alignment.center,
      child: BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, HomeState state) {
          bool enabled = state is! LoadingDataHomeState;
          bool showCreateIdentityButton =
              state.identifier == null || state.identifier!.isEmpty;

          return showCreateIdentityButton
              ? _buildCreateIdentityButton(enabled)
              : _buildRemoveIdentityButton(enabled);
        },
      ),
    );
  }

  ///
  Widget _buildCreateIdentityButton(bool enabled) {
    return AbsorbPointer(
      absorbing: !enabled,
      child: ElevatedButton(
        key: CustomWidgetsKeys.homeScreenButtonCreateIdentity,
        onPressed: () {
          _bloc.add(const HomeEvent.createIdentity());
        },
        style: enabled
            ? CustomButtonStyle.primaryButtonStyle
            : CustomButtonStyle.disabledPrimaryButtonStyle,
        child: const FittedBox(
          child: Text(
            CustomStrings.homeButtonCTA,
            textAlign: TextAlign.center,
            style: CustomTextStyles.primaryButtonTextStyle,
          ),
        ),
      ),
    );
  }

  ///
  Widget _buildRemoveIdentityButton(bool enabled) {
    return AbsorbPointer(
      absorbing: !enabled,
      child: ElevatedButton(
        key: CustomWidgetsKeys.homeScreenButtonRemoveIdentity,
        onPressed: () {
          _bloc.add(const HomeEvent.removeIdentity());
        },
        style: enabled
            ? CustomButtonStyle.outlinedPrimaryButtonStyle
            : CustomButtonStyle.disabledPrimaryButtonStyle,
        child: FittedBox(
          child: Text(
            CustomStrings.homeButtonRemoveIdentityCTA,
            textAlign: TextAlign.center,
            style: CustomTextStyles.primaryButtonTextStyle.copyWith(
              color: CustomColors.primaryButton,
            ),
          ),
        ),
      ),
    );
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
                style: CustomTextStyles.descriptionTextStyle
                    .copyWith(fontSize: 20),
              ),
              const CircularProgressIndicator(
                backgroundColor: CustomColors.primaryButton,
              ),
            ]);
      },
    );
  }

  ///
  Widget _buildWalletSection() {
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

                return state.identifier != null && tapSetup ? Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    state.identifier!.isNotEmpty
                        ? Text(
                      CustomStrings.homeHasWallet,
                      style: CustomTextStyles.descriptionTextStyle
                          .copyWith(fontSize: 20, fontWeight: FontWeight.w700),
                    ) : Text(
                      CustomStrings.homeNoWallet+_tapInfo.nonce,
                      style: CustomTextStyles.descriptionTextStyle
                          .copyWith(fontSize: 15),
                    ),
                    const SizedBox(height: 20),
                    _buildEnterButton(),
                  ],
                ): Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   Text(
                      CustomStrings.homeNoWallet,
                      style: CustomTextStyles.descriptionTextStyle
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



  ///
  Widget _buildEnterButton() {
    return ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, Routes.combinedPath),
        child: const Text("Login!"));
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

  ///
  Widget _buildFeaturesSection() {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        _buildCombinedFeatureCard(),
        _buildBackupIdentityFeatureCard(),
        _buildRestoreIdentityFeatureCard(),
      ],
    );
  }

  ///
  Widget _buildCombinedFeatureCard() {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, HomeState state) {
        bool enabled = (state is! LoadingDataHomeState) &&
            (state.identifier != null && state.identifier!.isNotEmpty);
        return FeatureCard(
          methodName: "auth() / getCredential()",
          title: "Combined Test",
          description: "Combined QR for auth and Claims",
          onTap: () {
            Navigator.pushNamed(context, Routes.combinedPath);
          },
          enabled: enabled,
          disabledReason: CustomStrings.homeFeatureCardDisabledReason,
        );
      },
    );
  }

  ///
  Widget _buildBackupIdentityFeatureCard() {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, HomeState state) {
        bool enabled = (state is! LoadingDataHomeState) &&
            (state.identifier != null && state.identifier!.isNotEmpty);
        return FeatureCard(
          methodName: CustomStrings.backupIdentityMethod,
          title: CustomStrings.backupIdentityTitle,
          description: CustomStrings.backupIdentityDescription,
          onTap: () {
            Navigator.pushNamed(context, Routes.backupIdentityPath);
          },
          enabled: enabled,
          disabledReason: CustomStrings.homeFeatureCardDisabledReason,
        );
      },
    );
  }

  ///
  Widget _buildRestoreIdentityFeatureCard() {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, HomeState state) {
        bool enabled = (state is! LoadingDataHomeState) &&
            (state.identifier != null && state.identifier!.isNotEmpty);
        return FeatureCard(
          methodName: CustomStrings.restoreIdentityMethod,
          title: CustomStrings.restoreIdentityTitle,
          description: CustomStrings.restoreIdentityDescription,
          onTap: () {
            Navigator.pushNamed(context, Routes.restoreIdentityPath);
          },
          enabled: enabled,
          disabledReason: CustomStrings.homeFeatureCardDisabledReason,
        );
      },
    );
  }
}
