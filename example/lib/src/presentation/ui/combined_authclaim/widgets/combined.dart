import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polygonid_flutter_sdk/iden3comm/domain/entities/common/iden3_message_entity.dart';
import 'package:polygonid_flutter_sdk_example/src/presentation/dependency_injection/dependencies_provider.dart';
import 'package:polygonid_flutter_sdk_example/src/presentation/navigations/routes.dart';
import 'package:polygonid_flutter_sdk_example/src/presentation/ui/auth/auth_bloc.dart';
import 'package:polygonid_flutter_sdk_example/src/presentation/ui/auth/auth_event.dart';
import 'package:polygonid_flutter_sdk_example/src/presentation/ui/auth/auth_state.dart';
import 'package:polygonid_flutter_sdk_example/src/presentation/ui/common/widgets/button_next_action.dart';
import 'package:polygonid_flutter_sdk_example/src/presentation/ui/common/widgets/profile_radio_button.dart';
import 'package:polygonid_flutter_sdk_example/utils/custom_button_style.dart';
import 'package:polygonid_flutter_sdk_example/utils/custom_colors.dart';
import 'package:polygonid_flutter_sdk_example/utils/custom_strings.dart';
import 'package:polygonid_flutter_sdk_example/utils/custom_text_styles.dart';
import 'package:polygonid_flutter_sdk_example/utils/custom_widgets_keys.dart';

import '../../claims/claims_state.dart';
import '../../claims/models/claim_model.dart';
import '../../claims/widgets/claim_card.dart';
import '../combined_bloc.dart';
import '../combined_event.dart';
import '../combined_state.dart';

class CombinedScreen extends StatefulWidget {
  final CombinedBloc _bloc;

  CombinedScreen({Key? key})
      : _bloc = getIt<CombinedBloc>(),
        super(key: key);

  @override
  State<CombinedScreen> createState() => _CombinedScreenState();
}

class _CombinedScreenState extends State<CombinedScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget._bloc.add(const CombinedEvent.getClaims());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  ///
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: CustomColors.background,
    );
  }

  ///
  Widget _buildBody() {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  _buildDescription(),
                  const SizedBox(height: 10),
                  _buildProgress(),
                  const SizedBox(height: 10),
                  _buildAuthenticationSuccessSection(),
                  const SizedBox(height: 10),
                  _buildErrorSection(),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  _buildRadioButtons(),
                  const SizedBox(height: 6),
                  _buildTitle(),
                  const SizedBox(height: 6),
                  _buildDescriptionClaims(),
                  const SizedBox(height: 6),
                  _buildErrorClaims(),
                  const SizedBox(height: 24),
                  _buildClaimList(),
                  const SizedBox(height: 40),
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Stack(
                children: [
                  _buildBlocListener(),
                  _buildBottomBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///
  Widget _buildDescription() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        "Auth and Claims combined:",
        textAlign: TextAlign.center,
        style: CustomTextStyles.descriptionTextStyle,
      ),
    );
  }

  ///
  Widget _buildBlocListener() {
    return BlocListener<CombinedBloc, CombinedState>(
      bloc: widget._bloc,
      listener: (context, state) {
        if (state is NavigateToQrCodeScannerCombinedState) {
          _handleNavigateToQrCodeScannerCombinedState();
        }
        if (state is QrCodeScannedCombinedState) {
          _handleQrCodeScanned(state.iden3message);
        }
        if (state is NavigateToClaimDetailCombinedState) {
          _handleNavigationToClaimDetail(state.claimModel);
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  ///
  Future<void> _handleNavigateToQrCodeScannerCombinedState() async {
    String? qrCodeScanningResult =
        await Navigator.pushNamed(context, Routes.qrCodeScannerPath) as String?;
    widget._bloc.add(CombinedEvent.onScanQrCodeResponse(qrCodeScanningResult));
  }

  ///
  Widget _buildProgress() {
    return BlocBuilder(
      bloc: widget._bloc,
      builder: (BuildContext context, CombinedState state) {
        if (state is! LoadingAuthState) {
          return const SizedBox(
            height: 48,
            width: 48,
          );
        }
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            StreamBuilder<String>(
              stream: widget._bloc.proofGenerationStepsStream,
              initialData: "",
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                return Text(
                  snapshot.data ?? "",
                  style: CustomTextStyles.descriptionTextStyle,
                );
              },
            ),
            const SizedBox(
              height: 48,
              width: 48,
              child: CircularProgressIndicator(
                backgroundColor: CustomColors.primaryButton,
              ),
            ),
          ],
        );
      },
    );
  }

  ///
  Widget _buildAuthenticationSuccessSection() {
    return BlocBuilder(
      bloc: widget._bloc,
      builder: (BuildContext context, CombinedState state) {
        if (state is! AuthenticatedCombinedState)
          return const SizedBox.shrink();
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            CustomStrings.authSuccess,
            style: CustomTextStyles.descriptionTextStyle
                .copyWith(color: CustomColors.greenSuccess),
          ),
        );
      },
    );
  }

  ///
  Widget _buildErrorSection() {
    return BlocBuilder(
      bloc: widget._bloc,
      builder: (BuildContext context, CombinedState state) {
        if (state is! ErrorCombinedState) return const SizedBox.shrink();
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
  Widget _buildRadioButtons() {
    void _selectProfile(SelectedProfile profile) {
      widget._bloc.add(CombinedEvent.profileSelected(profile));
    }

    return BlocBuilder(
        bloc: widget._bloc,
        builder: (BuildContext context, CombinedState state) {
          return ProfileRadio(widget._bloc.selectedProfile, _selectProfile);
        });
  }

  // Auth (above)
// Claim (below)

  ///
  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        CustomStrings.claimsTitle,
        style: CustomTextStyles.titleTextStyle.copyWith(fontSize: 20),
      ),
    );
  }

  ///
  Widget _buildDescriptionClaims() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        CustomStrings.claimsDescription,
        textAlign: TextAlign.start,
        style: CustomTextStyles.descriptionTextStyle,
      ),
    );
  }

  ///
  Widget _buildBottomBar() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(children: [
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildRemoveAllClaimsButton(),
            _buildClaimsConnectButton(),
            ButtonNextAction(
              key: CustomWidgetsKeys.authScreenButtonNextAction,
              enabled: true,
              onPressed: () {
                Navigator.pushNamed(context, Routes.claimsPath);
              },
            ),
          ],
        ),
        const SizedBox(height: 5),
        ///
        Align(
          alignment: Alignment.center,
          child: ElevatedButton(
            key: CustomWidgetsKeys.authScreenButtonConnect,
            onPressed: () {
              widget._bloc.add(const CombinedEvent.clickScanQrCode());
            },
            style: CustomButtonStyle.primaryButtonStyle,
            child: const Text(
              "Scan QR",
              style: CustomTextStyles.primaryButtonTextStyle,
            ),
          ),
        ),
      ]),
    );
  }



  ///
  Widget _buildClaimsConnectButton() {
    return Align(
      alignment: Alignment.center,
      child: BlocBuilder(
          bloc: widget._bloc,
          builder: (BuildContext context, CombinedState state) {
            bool loading = state is LoadingDataClaimsState;
            return ElevatedButton(
              onPressed: () {
                if (!loading) {
                  widget._bloc.add(const CombinedEvent.clickScanQrCode());
                }
              },
              style: CustomButtonStyle.primaryButtonStyle,
              child: Container(
                constraints: const BoxConstraints(
                  minWidth: 120,
                  maxWidth: 120,
                  maxHeight: 20,
                ),
                child: Center(
                  child: loading
                      ? _buildCircularProgress()
                      : const Text(
                          CustomStrings.authButtonCTA,
                          style: CustomTextStyles.primaryButtonTextStyle,
                        ),
                ),
              ),
            );
          }),
    );
  }

  ///
  Widget _buildRemoveAllClaimsButton() {
    return Align(
      alignment: Alignment.center,
      child: BlocBuilder(
          bloc: widget._bloc,
          builder: (BuildContext context, CombinedState state) {
            bool loading = state is LoadingDataClaimsState;
            return ElevatedButton(
              onPressed: () {
                if (!loading) {
                  widget._bloc.add(const CombinedEvent.removeAllClaims());
                }
              },
              style: CustomButtonStyle.outlinedPrimaryButtonStyle,
              child: Container(
                constraints: const BoxConstraints(
                  minWidth: 120,
                  maxWidth: 120,
                  maxHeight: 20,
                ),
                child: Center(
                  child: FittedBox(
                    child: Text(
                      CustomStrings.deleteAllClaimsButtonCTA,
                      style: CustomTextStyles.primaryButtonTextStyle
                          .copyWith(color: CustomColors.primaryButton),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  ///
  Widget _buildClaimList() {
    return BlocBuilder(
      bloc: widget._bloc,
      builder: (BuildContext context, CombinedState state) {
        if (state is LoadedDataCombinedState) {
          List<ClaimModel> claimList = state.claimList;
          List<Widget> claimWidgetList = _buildClaimCardWidgetList(claimList);
          return claimList.isNotEmpty
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: claimWidgetList,
                )
              : const Center(
                  child: Text(CustomStrings.claimsListNoResult),
                );
        }
        return const SizedBox.shrink();
      },
      buildWhen: (_, CombinedState currentState) {
        bool rebuild = currentState is LoadedDataCombinedState;
        return rebuild;
      },
    );
  }

  ///
  List<Widget> _buildClaimCardWidgetList(List<ClaimModel> claimList) {
    return claimList
        .map(
          (claimModelItem) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: InkWell(
              onTap: () {
                widget._bloc.add(CombinedEvent.onClickClaim(claimModelItem));
              },
              child: ClaimCard(claimModel: claimModelItem),
            ),
          ),
        )
        .toList();
  }

  ///
  Future<void> _handleNavigateToQrCodeScannerClaimsState() async {
    String? qrCodeScanningResult =
        await Navigator.pushNamed(context, Routes.qrCodeScannerPath) as String?;
    widget._bloc.add(CombinedEvent.onScanQrCodeResponse(qrCodeScanningResult));
  }

  ///
  void _handleQrCodeScanned(Iden3MessageEntity iden3message) {
    widget._bloc
        .add(CombinedEvent.fetchAndSaveClaims(iden3message: iden3message));
  }

  ///
  Future<void> _handleNavigationToClaimDetail(ClaimModel claimModel) async {
    bool? deleted = await Navigator.pushNamed(
      context,
      Routes.claimDetailPath,
      arguments: claimModel,
    ) as bool?;

    widget._bloc.add(CombinedEvent.onClaimDetailRemoveResponse(deleted));
  }

  ///
  Widget _buildCircularProgress() {
    return const SizedBox(
      height: 20,
      width: 20,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        backgroundColor: CustomColors.primaryButton,
      ),
    );
  }

  ///
  Widget _buildErrorClaims() {
    return BlocBuilder(
      bloc: widget._bloc,
      builder: (BuildContext context, CombinedState state) {
        if (state is ErrorCombinedState) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              state.message,
              textAlign: TextAlign.start,
              style: CustomTextStyles.descriptionTextStyle
                  .copyWith(color: CustomColors.redError),
            ),
          );
        }
        return const Text("");
      },
    );
  }
}
