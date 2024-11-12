import 'package:flutter/material.dart';
import 'package:untitled5/portfolio_views/container_1/container_1.dart';
import 'package:untitled5/portfolio_views/container_2/container-2.dart';
import 'package:untitled5/portfolio_views/container_3/container3-main.dart';


class StartingView extends StatefulWidget {
  const StartingView({super.key});

  @override
  State<StartingView> createState() => _StartingViewState();
}

class _StartingViewState extends State<StartingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          ContainerOneMain(),
          ContainerTwoMain(),
          ContainerThreeMain()

        ],),
      ),
    );
  }
}
