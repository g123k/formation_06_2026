import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formation_flutter/l10n/app_localizations.dart';
import 'package:formation_flutter/res/app_colors.dart';
import 'package:formation_flutter/res/app_icons.dart';
import 'package:formation_flutter/res/app_vectorial_images.dart';
import 'package:go_router/go_router.dart';
import 'package:vector_graphics/vector_graphics.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations appLocalizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(appLocalizations.my_scans_screen_title),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            tooltip: appLocalizations.my_scans_screen_barcode_button,
            icon: Padding(
              padding: const EdgeInsetsDirectional.only(end: 8.0),
              child: Icon(AppIcons.barcode),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 20),
            SvgPicture(AssetBytesLoader(AppVectorialImages.illEmpty)),
            Spacer(flex: 15),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 4.0),
              child: Text(
                appLocalizations.my_scans_screen_description,
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(flex: 10),
            TextButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.blue,
                backgroundColor: AppColors.yellow,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(22.0)),
                ),
              ),
              onPressed: () {
                GoRouter.of(context).push('/product?barcode=XXX');
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(appLocalizations.my_scans_screen_button.toUpperCase()),
                  const SizedBox(width: 10.0),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
            Spacer(flex: 20),
          ],
        ),
      ),
    );
  }
}
