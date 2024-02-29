import 'package:api_explore/src/presentation/dependency_injection/dependencies_provider.dart';
import 'package:api_explore/src/presentation/ui/home/home_bloc.dart';
import 'package:api_explore/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = getIt<HomeBloc>();

    WidgetsBinding.instance.addPostFrameCallback((_) { // TODO inspect what this binding / callback is
      // code of example: _initGetIdentifier();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CustomColors.background,
      body: SafeArea(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Add components here"),
                      SizedBox(height: 13),
                      Text("..."),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Stack(
                  children: [
                    Text("Stack component here"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}