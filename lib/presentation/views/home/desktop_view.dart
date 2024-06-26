import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kostenlos/application/extensions/extentions.dart';
import 'package:kostenlos/constants/constants.dart';
import 'package:kostenlos/presentation/base/base_widget.dart';

import '../../../application/theme/app_colors.dart';
import '../../../application/theme/text_themes.dart';
import '../../../constants/assets_manager.dart';
import '../../../constants/string_manager.dart';

class DesktopView extends BaseStateFullWidget {
  final TrackingScrollController scrollController;

  DesktopView({super.key, required this.scrollController});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.light,
      appBar: AppBar(
        elevation: 5.0,
        shadowColor: AppColor.lightGrey,
        surfaceTintColor: Colors.white,
        backgroundColor: AppColor.light,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        actions: [
          Text('Login', style: textTheme.titleMedium!.copyWith(color: AppColor.green))
              .padding(const EdgeInsets.symmetric(horizontal: 15)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: context.getHeight(widget.dimens.k50.cm),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFEBF4FF), Color(0xFFE6FFFA)],
                  stops: [0.0, 1.0], // Defines the stop points for the gradient colors
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(StringManager.deinJob, style: textTheme.displayLarge!.copyWith(fontSize: 40)),
                      context.getHeight(widget.dimens.k2.cm).verticalBoxPadding(),
                      Container(
                        width: context.getWidth(widget.dimens.k25.cm),
                        height: context.getHeight(widget.dimens.k6.cm),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [Color(0xFF319795), Color(0xFF3182CE)]),
                          borderRadius: BorderRadius.circular(widget.dimens.k10),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(widget.dimens.k20),
                            ),
                          ),
                          child: Text(
                            "Kostenlos Registrieren",
                            style: context.textTheme.titleMedium!.copyWith(color: AppColor.light),
                          ),
                        ),
                      ),
                    ],
                  ),
                  context.getWidth(widget.dimens.k10.cm).horizontalBoxPadding(),
                  CircleAvatar(
                      radius: 150,
                      backgroundColor: AppColor.light,
                      child: SvgPicture.asset(
                        AssetsManager.handShake,
                        fit: BoxFit.cover,
                        height: context.getHeight(widget.dimens.k30.cm),
                      ))
                ],
              ),
            ),
            context.getHeight(widget.dimens.k2.cm).verticalBoxPadding(),
            Column(
              children: [
                SizedBox(
                  height: context.getHeight(widget.dimens.k30.cm),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(color: AppColor.lightGrey, shape: BoxShape.circle),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "1.",
                                style: context.textTheme.displayLarge!
                                    .copyWith(color: AppColor.darkGrey, letterSpacing: -10.0),
                              ).padding(EdgeInsets.only(right: 20)),
                              Text(
                                "Erstellen dein Lebenslauf",
                                style: context.textTheme.titleSmall!.copyWith(color: AppColor.darkGrey),
                              ).padding(const EdgeInsets.only(bottom: 10)),
                            ],
                          ).padding(const EdgeInsets.only(left: 25, right: 20, bottom: 10)),
                        ],
                      ),
                      SvgPicture.asset(
                        AssetsManager.profileData,
                        fit: BoxFit.cover,
                        height: context.getHeight(widget.dimens.k20.cm),
                      ),
                      const SizedBox(width: 190),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    SvgPicture.asset(AssetsManager.first,
                            fit: BoxFit.cover, width: context.width, height: context.getHeight(widget.dimens.k30.cm))
                        .padding(const EdgeInsets.only(left: 15)),
                    Container(
                      margin: const EdgeInsets.only(top: 150, left: 50),
                      height: context.getHeight(widget.dimens.k30.cm),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AssetsManager.task,
                              fit: BoxFit.cover, height: context.getHeight(widget.dimens.k20.cm)),
                          const SizedBox(width: 90),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "2.",
                                style: context.textTheme.displayLarge!.copyWith(color: AppColor.darkGrey),
                              ),
                              widget.dimens.k15.horizontalBoxPadding(),
                              Text(
                                "Erstellen dein Lebenslauf",
                                style: context.textTheme.titleSmall!.copyWith(color: AppColor.darkGrey),
                              ).padding(EdgeInsets.only(bottom: widget.dimens.k20)),
                            ],
                          ),
                          widget.dimens.k20.horizontalBoxPadding(),
                        ],
                      ),
                    ),
                    SvgPicture.asset(AssetsManager.second,
                            fit: BoxFit.cover, height: context.getHeight(widget.dimens.k20.cm))
                        .padding(const EdgeInsets.only(left: 80, top: 320)),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 140),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            decoration: const BoxDecoration(color: AppColor.lightGrey, shape: BoxShape.circle),
                          ),
                          Row(
                            children: [
                              Text(
                                "3.",
                                style: context.textTheme.displayLarge!.copyWith(
                                  color: AppColor.darkGrey,
                                ),
                              ),
                              widget.dimens.k15.horizontalBoxPadding(),
                              SizedBox(
                                width: 100,
                                child: Text(
                                  "Mit nur einem Klick bewerben",
                                  style: context.textTheme.titleSmall!.copyWith(color: AppColor.darkGrey),
                                ).padding(const EdgeInsets.only(bottom: 10)),
                              ),
                            ],
                          ).padding(const EdgeInsets.only(left: 60, top: 10)),
                        ],
                      ),
                      widget.dimens.k15.horizontalBoxPadding(),
                      SvgPicture.asset(AssetsManager.undraw,
                          fit: BoxFit.cover, height: context.getHeight(widget.dimens.k20.cm)),
                    ],
                  ),
                ),
                widget.dimens.k40.verticalBoxPadding()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
