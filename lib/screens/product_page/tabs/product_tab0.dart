import 'package:flutter/material.dart';
import 'package:formation_flutter/l10n/app_localizations.dart';
import 'package:formation_flutter/model/product.dart';
import 'package:formation_flutter/res/app_colors.dart';
import 'package:formation_flutter/res/app_icons.dart';
import 'package:formation_flutter/res/app_theme.dart';

class ProductTab0 extends StatelessWidget {
  const ProductTab0({super.key});

  static const double _kImageHeight = 300.0;
  static const double _kBorderRadius = 16.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        children: [
          PositionedDirectional(
            top: 0.0,
            start: 0.0,
            end: 0.0,
            height: _kImageHeight,
            child: Image.network(
              'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?q=80&w=1310&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              fit: .cover,
              cacheHeight:
                  (_kImageHeight * MediaQuery.devicePixelRatioOf(context))
                      .toInt(),
            ),
          ),
          PositionedDirectional(
            start: 0.0,
            end: 0.0,
            top: _kImageHeight - _kBorderRadius,
            bottom: 0.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(_kBorderRadius),
                ),
              ),
              padding: EdgeInsetsDirectional.only(
                top: 30.0,
                start: 16.0,
                end: 16.0,
              ),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'Text 1',
                    style: context.theme.title1,
                  ),
                  Text('Text 2'),
                  Scores(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Scores extends StatelessWidget {
  const Scores({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                flex: 44,
                child: _NutriScore(nutriscore: ProductNutriScore.A),
              ),
              VerticalDivider(),
              Expanded(flex: 56, child: _NovaGroup(novaScore: .group3)),
            ],
          ),
        ),
        Divider(),
        _GreenScore(greenScore: .D),
      ],
    );
  }
}

class _NutriScore extends StatelessWidget {
  const _NutriScore({required this.nutriscore});

  final ProductNutriScore nutriscore;

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            AppLocalizations.of(context)!.nutriscore,
            style: context.theme.title3,
          ),
          const SizedBox(height: 5.0),
          Image.asset(
            _findAssetName(),
            semanticLabel: nutriscore.name.toUpperCase(),
            height: 42.0,
          ),
        ],
      ),
    );
  }

  String _findAssetName() {
    return switch (nutriscore) {
      ProductNutriScore.A => 'res/drawables/nutriscore_a.png',
      ProductNutriScore.B => 'res/drawables/nutriscore_b.png',
      ProductNutriScore.C => 'res/drawables/nutriscore_c.png',
      ProductNutriScore.D => 'res/drawables/nutriscore_d.png',
      ProductNutriScore.E => 'res/drawables/nutriscore_e.png',
      ProductNutriScore.unknown => 'TODO',
    };
  }
}

class _NovaGroup extends StatelessWidget {
  const _NovaGroup({required this.novaScore});

  final ProductNovaScore novaScore;

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            AppLocalizations.of(context)!.nova_group,
            style: context.theme.title3,
          ),
          const SizedBox(height: 5.0),
          Text(_findLabel(), style: const TextStyle(color: AppColors.grey2)),
        ],
      ),
    );
  }

  String _findLabel() {
    return switch (novaScore) {
      ProductNovaScore.group1 =>
        'Aliments non transformés ou transformés minimalement',
      ProductNovaScore.group2 => 'Ingrédients culinaires transformés',
      ProductNovaScore.group3 => 'Aliments transformés',
      ProductNovaScore.group4 =>
        'Produits alimentaires et boissons ultra-transformés',
      ProductNovaScore.unknown => 'Score non calculé',
    };
  }
}

class _GreenScore extends StatelessWidget {
  const _GreenScore({required this.greenScore});

  final ProductGreenScore greenScore;

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            AppLocalizations.of(context)!.greenscore,
            style: context.theme.title3,
          ),
          const SizedBox(height: 5.0),
          Row(
            children: <Widget>[
              Icon(
                _findIcon(),
                semanticLabel: greenScore.name,
                color: _findIconColor(),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Text(
                  _findLabel(),
                  style: const TextStyle(color: AppColors.grey2),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  IconData _findIcon() {
    return switch (greenScore) {
      ProductGreenScore.APlus => AppIcons.greenscore_a_plus,
      ProductGreenScore.A => AppIcons.greenscore_a,
      ProductGreenScore.B => AppIcons.greenscore_b,
      ProductGreenScore.C => AppIcons.greenscore_c,
      ProductGreenScore.D => AppIcons.greenscore_d,
      ProductGreenScore.E => AppIcons.greenscore_e,
      ProductGreenScore.F => AppIcons.greenscore_f,
      ProductGreenScore.unknown => AppIcons.greenscore_e,
    };
  }

  Color _findIconColor() {
    return switch (greenScore) {
      ProductGreenScore.APlus => AppColors.greenScoreAPlus,
      ProductGreenScore.A => AppColors.greenScoreA,
      ProductGreenScore.B => AppColors.greenScoreB,
      ProductGreenScore.C => AppColors.greenScoreC,
      ProductGreenScore.D => AppColors.greenScoreD,
      ProductGreenScore.E => AppColors.greenScoreE,
      ProductGreenScore.F => AppColors.greenScoreF,
      ProductGreenScore.unknown => Colors.transparent,
    };
  }

  String _findLabel() {
    return switch (greenScore) {
      ProductGreenScore.APlus => 'Très faible impact environnemental',
      ProductGreenScore.A => 'Très faible impact environnemental',
      ProductGreenScore.B => 'Faible impact environnemental',
      ProductGreenScore.C => "Impact modéré sur l'environnement",
      ProductGreenScore.D => 'Impact environnemental élevé',
      ProductGreenScore.E => 'Impact environnemental très élevé',
      ProductGreenScore.F => 'Impact environnemental très élevé',
      ProductGreenScore.unknown => 'Score non calculé',
    };
  }
}
