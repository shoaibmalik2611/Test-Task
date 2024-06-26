import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kostenlos/application/extensions/extentions.dart';
import 'package:kostenlos/application/theme/app_colors.dart';
import 'package:kostenlos/application/theme/text_themes.dart';
import 'package:kostenlos/constants/assets_manager.dart';
import 'package:kostenlos/constants/constants.dart';
import 'package:kostenlos/constants/string_manager.dart';
import 'package:kostenlos/presentation/base/base_widget.dart';

import 'mobile-components/tabs_view.dart';

class MobileView extends BaseStateFullWidget {
  final TrackingScrollController scrollController;

  MobileView({super.key, required this.scrollController});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.light,
      appBar: AppBar(
        elevation: 5.0,
        backgroundColor: AppColor.light,
        surfaceTintColor: Colors.white,
        shadowColor: AppColor.lightGrey,
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
      bottomNavigationBar: Container(
        height: context.getHeight(widget.dimens.k12.cm),
        padding: EdgeInsets.all(widget.dimens.k15),
        width: context.width,
        decoration: BoxDecoration(
            color: AppColor.light,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(widget.dimens.k10), topRight: Radius.circular(widget.dimens.k10))),
        child: Column(
          children: [
            Container(
              width: context.width,
              height: context.getHeight(widget.dimens.k6.cm),
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Color(0xFF319795), Color(0xFF3182CE)]),
                borderRadius: BorderRadius.circular(widget.dimens.k20),
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
            context.getHeight(widget.dimens.k1.cm).verticalBoxPadding(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: context.getHeight(widget.dimens.k80.cm),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFEBF4FF), Color(0xFFE6FFFA)],
                    stops: [0.0, 1.0], // Defines the stop points for the gradient colors
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(StringManager.deinJob, style: textTheme.displayLarge!.copyWith(fontSize: 40)),
                    context.getHeight(widget.dimens.k1.cm).verticalBoxPadding(),
                    Expanded(child: SvgPicture.asset(AssetsManager.handShake, width: context.width)),
                  ],
                )),
            context.getHeight(widget.dimens.k2.cm).verticalBoxPadding(),
            TabsView(),
            context.getHeight(widget.dimens.k3.cm).verticalBoxPadding(),
            SizedBox(
                width: context.getWidth(widget.dimens.k50.cm),
                child: Text(
                  "Drei einfache Schritte zu deinem neuen Job",
                  style: textTheme.displayLarge,
                  textAlign: TextAlign.center,
                )),
            context.getHeight(widget.dimens.k2.cm).verticalBoxPadding(),
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(color: AppColor.lightGrey, shape: BoxShape.circle),
                ),
                SvgPicture.asset(
                  AssetsManager.profileData,
                  fit: BoxFit.cover,
                  height: context.getHeight(widget.dimens.k20.cm),
                ).padding(EdgeInsets.only(bottom: 50, left: 50)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "1.",
                      style: context.textTheme.displayLarge!.copyWith(color: AppColor.darkGrey, letterSpacing: -10.0),
                    ).padding(EdgeInsets.only(right: 20)),
                    Text(
                      "Erstellen dein Lebenslauf",
                      style: context.textTheme.titleSmall!.copyWith(color: AppColor.darkGrey),
                    ).padding(const EdgeInsets.only(bottom: 10)),
                  ],
                ).padding(const EdgeInsets.only(left: 25, right: 20, bottom: 10)),
              ],
            ),
            context.getHeight(widget.dimens.k3.cm).verticalBoxPadding(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "2.",
                  style: context.textTheme.displayLarge!.copyWith(color: AppColor.darkGrey),
                ).padding(EdgeInsets.only(left: 30)),
                widget.dimens.k15.horizontalBoxPadding(),
                Text(
                  "Erstellen dein Lebenslauf",
                  style: context.textTheme.titleSmall!.copyWith(color: AppColor.darkGrey),
                ).padding(EdgeInsets.only(bottom: widget.dimens.k20)),
              ],
            ),
            SvgPicture.asset(AssetsManager.task, fit: BoxFit.cover, height: context.getHeight(widget.dimens.k20.cm)),
            context.getHeight(widget.dimens.k3.cm).verticalBoxPadding(),
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
                SvgPicture.asset(AssetsManager.undraw,
                        fit: BoxFit.cover, height: context.getHeight(widget.dimens.k20.cm))
                    .padding(EdgeInsets.only(top: 50, left: 80)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
