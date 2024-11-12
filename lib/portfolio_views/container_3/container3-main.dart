import 'package:flutter/material.dart';
import 'package:untitled5/components/responsive_layout/responsive-layout.dart';
import 'package:untitled5/portfolio_views/container_3/container_three_responsive/container3_desktop.dart';
import 'package:untitled5/portfolio_views/container_3/container_three_responsive/container3_mobile.dart';


class ContainerThreeMain extends StatefulWidget {
  const ContainerThreeMain({super.key});

  @override
  State<ContainerThreeMain> createState() => _ContainerThreeMainState();
}

class _ContainerThreeMainState extends State<ContainerThreeMain> {
  @override
  Widget build(BuildContext context) {
    return
      ResponsiveLayotWidget(
          desktop: ContainerthreeDesktop(),
          mobile: ContainerthreeMobile(),
          tablet: ContainerthreeMobile());
  }
}
