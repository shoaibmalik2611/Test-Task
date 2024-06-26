import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kostenlos/application/extensions/extentions.dart';
import 'package:kostenlos/application/theme/app_colors.dart';
import 'package:kostenlos/constants/constants.dart';
import 'package:kostenlos/presentation/base/base_widget.dart';

import '../../../../application/theme/text_themes.dart';

class TabsView extends BaseStateFullWidget {
  TabsView({super.key});

  @override
  State<TabsView> createState() => _TabsViewState();
}

class _TabsViewState extends State<TabsView> with TickerProviderStateMixin {
  List<String> tabsList = ["Arbeitnehmer", "Arbeitgeber", "Temporärbüro"];

  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  int _selectedTab = 0;

  BorderRadius dynamicBorder = const BorderRadius.only(
    topLeft: Radius.circular(20),
    bottomLeft: Radius.circular(20),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSlidingSegmentedControl<int>(
          fromMax: true,
          height: context.getHeight(widget.dimens.k6.cm),
          innerPadding: EdgeInsets.zero,
          children: const {
            0: Text("Arbeitnehmer"),
            1: Text("Arbeitgeber"),
            2: Text("Temporärbüro"),
          },
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: widget.dimens.k30,
          thumbDecoration: BoxDecoration(
            borderRadius: dynamicBorder,
            color: AppColor.primary,
          ),
          onValueChanged: (int value) {
            switch (value) {
              case 0:
                setState(() {
                  dynamicBorder = const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(0),
                    topRight: Radius.circular(0),
                  );
                });
                break;
              case 1:
                setState(() {
                  dynamicBorder = const BorderRadius.only(
                    topLeft: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topRight: Radius.circular(0),
                  );
                });
                break;
              case 2:
                setState(() {
                  dynamicBorder = const BorderRadius.only(
                    topLeft: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                  );
                });
                break;
              default:
            }
          },
        )
      ],
    );
  }
}
