import 'package:flutter/material.dart';
import 'package:formation_flutter/l10n/app_localizations.dart';
import 'package:formation_flutter/model/product.dart';
import 'package:formation_flutter/res/app_colors.dart';
import 'package:formation_flutter/res/app_icons.dart';
import 'package:formation_flutter/res/app_theme.dart';

class ProductTab0 extends StatelessWidget {
  const ProductTab0({super.key});

  static const double kImageHeight = 300.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PositionedDirectional(
          top: 0.0,
          start: 0.0,
          end: 0.0,
          height: kImageHeight,
          child: _ProductImage(),
        ),
        Positioned.fill(
          child: SingleChildScrollView(
            padding: EdgeInsetsDirectional.only(
              top: kImageHeight - _ProductBody._radius,
            ),
            child: _ProductBody(),
          ),
        ),
      ],
    );
  }
}

class _ProductImage extends StatelessWidget {
  const _ProductImage();

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?q=80&w=1310&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      fit: .cover,
      cacheWidth:
          (MediaQuery.widthOf(context) * MediaQuery.devicePixelRatioOf(context))
              .toInt(),
    );
  }
}

class _ProductBody extends StatelessWidget {
  const _ProductBody();

  static const double _radius = 16.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(_radius)),
      ),
      padding: EdgeInsetsDirectional.only(
        top: 30.0,
        start: 20.0,
        end: 20.0,
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            'Petits pois et carottes',
            style: Theme.of(context).extension<OffThemeExtension>()!.title1,
          ),
          Text('Cassegrain'),
          SizedBox(height: 20.0),
          _Scores(),
          SizedBox(height: 20.0),
          _Info(),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}

class _Scores extends StatelessWidget {
  const _Scores();

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: context.theme.altText,
      child: ColoredBox(
        color: AppColors.grey1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 44,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 5.0),
                      child: _NutriScore(
                        nutriscore: ProductNutriScore.A,
                      ),
                    ),
                  ),
                  const VerticalDivider(),
                  Expanded(
                    flex: 56,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 25.0),
                      child: _NovaGroup(novaScore: ProductNovaScore.group4),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            _GreenScore(
              greenScore: ProductGreenScore.D,
            ),
          ],
        ),
      ),
    );
  }
}

class _NutriScore extends StatelessWidget {
  const _NutriScore({required this.nutriscore});

  final ProductNutriScore nutriscore;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      value: 'Nutriscore A',
      excludeSemantics: true,
      container: true,
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

class _Info extends StatelessWidget {
  const _Info();

  @override
  Widget build(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _ProductItemValue(
          label: localizations.product_quantity,
          value: '100g',
        ),
        _ProductItemValue(
          label: localizations.product_countries,
          value: 'France',
          includeDivider: false,
        ),
        const SizedBox(height: 15.0),
        Row(
          children: <Widget>[
            Expanded(
              flex: 40,
              child: _ProductBubble(
                label: localizations.product_vegan,
                value: _ProductBubbleValue.off,
              ),
            ),
            const Spacer(flex: 10),
            Expanded(
              flex: 40,
              child: _ProductBubble(
                label: localizations.product_vegetarian,
                value: _ProductBubbleValue.on,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ProductItemValue extends StatelessWidget {
  const _ProductItemValue({
    required this.label,
    required this.value,
    this.includeDivider = true,
  });

  final String label;
  final String value;
  final bool includeDivider;

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(vertical: 12.0),
            child: Row(
              children: <Widget>[
                Expanded(child: Text(label)),
                Expanded(child: Text(value, textAlign: TextAlign.end)),
              ],
            ),
          ),
          if (includeDivider) const Divider(height: 1.0),
        ],
      ),
    );
  }
}

class _ProductBubble extends StatelessWidget {
  const _ProductBubble({required this.label, required this.value});

  final String label;
  final _ProductBubbleValue value;

  @override
  Widget build(BuildContext context) {
    final String semanticsValue = value == _ProductBubbleValue.on
        ? AppLocalizations.of(context)!.yes
        : AppLocalizations.of(context)!.no;
    return Semantics(
      label: '$label : $semanticsValue',
      excludeSemantics: true,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.blueLight,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsetsDirectional.symmetric(
          vertical: 10.0,
          horizontal: 15.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              value == _ProductBubbleValue.on
                  ? AppIcons.checkmark
                  : AppIcons.close,
              color: AppColors.white,
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(color: AppColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum _ProductBubbleValue { on, off }
