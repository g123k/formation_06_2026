import 'package:flutter/material.dart';
import 'package:formation_flutter/l10n/app_localizations.dart';
import 'package:formation_flutter/res/app_theme.dart';
import 'package:formation_flutter/screens/product_page/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        extensions: [OffThemeExtension.defaultValues()],
        fontFamily: 'Avenir',
        colorScheme: .fromSeed(
          seedColor: Colors.red,
        ),
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const ProductPage(),
    );
  }
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          children: [
            PositionedDirectional(
              top: 10.0,
              start: 10.0,
              end: 10.0,
              bottom: 10.0,
              child: Container(
                color: Colors.red,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
