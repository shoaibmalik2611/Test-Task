import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kostenlos/application/theme/app_colors.dart';
import 'package:kostenlos/presentation/views/home/desktop_view.dart';
import 'package:kostenlos/presentation/views/home/mobile_view.dart';

import '../../widgets/responsive.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TrackingScrollController _trackingScrollController = TrackingScrollController();

  @override
  void dispose() {
    _trackingScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsive(
          mobile: MobileView(scrollController: _trackingScrollController),
          desktop: DesktopView(scrollController: _trackingScrollController),
        ),
      ),
    );
  }
}


