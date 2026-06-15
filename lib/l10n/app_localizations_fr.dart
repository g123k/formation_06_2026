// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';

  @override
  String get my_scans_screen_title => 'Mes scans';

  @override
  String get my_scans_screen_description =>
      'Vous n\'avez pas encore scanné de produit';

  @override
  String get my_scans_screen_button => 'Commencer';

  @override
  String get my_scans_screen_barcode_button => 'Scanner un code-barres';

  @override
  String get nova_group => 'Groupe NOVA';

  @override
  String get nutriscore => 'Nutri-Score';

  @override
  String get greenscore => 'Green-Score';

  @override
  String get product_action_add_to_favorites => 'Ajouter aux favoris';

  @override
  String get product_action_remove_from_favorites => 'Retirer des favoris';

  @override
  String get product_quantity => 'Quantité :';

  @override
  String get product_countries => 'Vendu en :';

  @override
  String get product_vegan => 'Végan';

  @override
  String get product_vegetarian => 'Végétarien';

  @override
  String get product_recall_banner => 'Ce produit fait l’objet d’un rappel';

  @override
  String get product_tab_summary => 'Fiche';

  @override
  String get product_tab_properties => 'Caractéristiques';

  @override
  String get product_tab_nutrition => 'Nutrition';

  @override
  String get product_tab_nutrition_facts => 'Tableau';

  @override
  String get product_properties_ingredients => 'Ingrédients';

  @override
  String get product_properties_allergens => 'Substances allergènes';

  @override
  String get product_properties_additives => 'Additifs';

  @override
  String get product_properties_empty => 'Aucune';

  @override
  String get product_nutrition_facts_per_100g => 'Pour 100 g';

  @override
  String get product_nutrition_facts_per_serving => 'Par portion';

  @override
  String get product_nutrition_facts_energy => 'Énergie';

  @override
  String get product_nutrition_facts_fat => 'Matières grasses';

  @override
  String get product_nutrition_facts_saturated_fats =>
      'dont acides gras saturés';

  @override
  String get product_nutrition_facts_carbohydrates => 'Glucides';

  @override
  String get product_nutrition_facts_sugars => 'dont sucres';

  @override
  String get product_nutrition_facts_fiber => 'Fibres alimentaires';

  @override
  String get product_nutrition_facts_proteins => 'Protéines';

  @override
  String get product_nutrition_facts_salt => 'Sel';

  @override
  String get product_nutrition_facts_sodium => 'Sodium';

  @override
  String get product_recall_header => 'Rappel produit';

  @override
  String get product_recall_share => 'Partager ce rappel produit';

  @override
  String get product_recall_section_dates => 'Dates de commercialisation';

  @override
  String product_recall_dates_label(Object startDate, Object endDate) {
    return 'Du $startDate au $endDate';
  }

  @override
  String get product_recall_section_distributors => 'Distributeurs';

  @override
  String get product_recall_geographical_area => 'Zone géographique';

  @override
  String get product_recall_reason => 'Motif du rappel';

  @override
  String get product_recall_safety_measures => 'Mesures de sécurité';

  @override
  String get product_recall_additional_info => 'Informations complémentaires';

  @override
  String get product_recall_action_required => 'Action(s) requise(s)';
}
