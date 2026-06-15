import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('fr')];

  /// No description provided for @yes.
  ///
  /// In fr, this message translates to:
  /// **'Oui'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In fr, this message translates to:
  /// **'Non'**
  String get no;

  /// No description provided for @my_scans_screen_title.
  ///
  /// In fr, this message translates to:
  /// **'Mes scans'**
  String get my_scans_screen_title;

  /// No description provided for @my_scans_screen_description.
  ///
  /// In fr, this message translates to:
  /// **'Vous n\'avez pas encore scanné de produit'**
  String get my_scans_screen_description;

  /// No description provided for @my_scans_screen_button.
  ///
  /// In fr, this message translates to:
  /// **'Commencer'**
  String get my_scans_screen_button;

  /// No description provided for @my_scans_screen_barcode_button.
  ///
  /// In fr, this message translates to:
  /// **'Scanner un code-barres'**
  String get my_scans_screen_barcode_button;

  /// No description provided for @nova_group.
  ///
  /// In fr, this message translates to:
  /// **'Groupe NOVA'**
  String get nova_group;

  /// No description provided for @nutriscore.
  ///
  /// In fr, this message translates to:
  /// **'Nutri-Score'**
  String get nutriscore;

  /// No description provided for @greenscore.
  ///
  /// In fr, this message translates to:
  /// **'Green-Score'**
  String get greenscore;

  /// No description provided for @product_action_add_to_favorites.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter aux favoris'**
  String get product_action_add_to_favorites;

  /// No description provided for @product_action_remove_from_favorites.
  ///
  /// In fr, this message translates to:
  /// **'Retirer des favoris'**
  String get product_action_remove_from_favorites;

  /// No description provided for @product_quantity.
  ///
  /// In fr, this message translates to:
  /// **'Quantité :'**
  String get product_quantity;

  /// No description provided for @product_countries.
  ///
  /// In fr, this message translates to:
  /// **'Vendu en :'**
  String get product_countries;

  /// No description provided for @product_vegan.
  ///
  /// In fr, this message translates to:
  /// **'Végan'**
  String get product_vegan;

  /// No description provided for @product_vegetarian.
  ///
  /// In fr, this message translates to:
  /// **'Végétarien'**
  String get product_vegetarian;

  /// No description provided for @product_recall_banner.
  ///
  /// In fr, this message translates to:
  /// **'Ce produit fait l’objet d’un rappel'**
  String get product_recall_banner;

  /// No description provided for @product_tab_summary.
  ///
  /// In fr, this message translates to:
  /// **'Fiche'**
  String get product_tab_summary;

  /// No description provided for @product_tab_properties.
  ///
  /// In fr, this message translates to:
  /// **'Caractéristiques'**
  String get product_tab_properties;

  /// No description provided for @product_tab_nutrition.
  ///
  /// In fr, this message translates to:
  /// **'Nutrition'**
  String get product_tab_nutrition;

  /// No description provided for @product_tab_nutrition_facts.
  ///
  /// In fr, this message translates to:
  /// **'Tableau'**
  String get product_tab_nutrition_facts;

  /// No description provided for @product_properties_ingredients.
  ///
  /// In fr, this message translates to:
  /// **'Ingrédients'**
  String get product_properties_ingredients;

  /// No description provided for @product_properties_allergens.
  ///
  /// In fr, this message translates to:
  /// **'Substances allergènes'**
  String get product_properties_allergens;

  /// No description provided for @product_properties_additives.
  ///
  /// In fr, this message translates to:
  /// **'Additifs'**
  String get product_properties_additives;

  /// No description provided for @product_properties_empty.
  ///
  /// In fr, this message translates to:
  /// **'Aucune'**
  String get product_properties_empty;

  /// No description provided for @product_nutrition_facts_per_100g.
  ///
  /// In fr, this message translates to:
  /// **'Pour 100 g'**
  String get product_nutrition_facts_per_100g;

  /// No description provided for @product_nutrition_facts_per_serving.
  ///
  /// In fr, this message translates to:
  /// **'Par portion'**
  String get product_nutrition_facts_per_serving;

  /// No description provided for @product_nutrition_facts_energy.
  ///
  /// In fr, this message translates to:
  /// **'Énergie'**
  String get product_nutrition_facts_energy;

  /// No description provided for @product_nutrition_facts_fat.
  ///
  /// In fr, this message translates to:
  /// **'Matières grasses'**
  String get product_nutrition_facts_fat;

  /// No description provided for @product_nutrition_facts_saturated_fats.
  ///
  /// In fr, this message translates to:
  /// **'dont acides gras saturés'**
  String get product_nutrition_facts_saturated_fats;

  /// No description provided for @product_nutrition_facts_carbohydrates.
  ///
  /// In fr, this message translates to:
  /// **'Glucides'**
  String get product_nutrition_facts_carbohydrates;

  /// No description provided for @product_nutrition_facts_sugars.
  ///
  /// In fr, this message translates to:
  /// **'dont sucres'**
  String get product_nutrition_facts_sugars;

  /// No description provided for @product_nutrition_facts_fiber.
  ///
  /// In fr, this message translates to:
  /// **'Fibres alimentaires'**
  String get product_nutrition_facts_fiber;

  /// No description provided for @product_nutrition_facts_proteins.
  ///
  /// In fr, this message translates to:
  /// **'Protéines'**
  String get product_nutrition_facts_proteins;

  /// No description provided for @product_nutrition_facts_salt.
  ///
  /// In fr, this message translates to:
  /// **'Sel'**
  String get product_nutrition_facts_salt;

  /// No description provided for @product_nutrition_facts_sodium.
  ///
  /// In fr, this message translates to:
  /// **'Sodium'**
  String get product_nutrition_facts_sodium;

  /// No description provided for @product_recall_header.
  ///
  /// In fr, this message translates to:
  /// **'Rappel produit'**
  String get product_recall_header;

  /// No description provided for @product_recall_share.
  ///
  /// In fr, this message translates to:
  /// **'Partager ce rappel produit'**
  String get product_recall_share;

  /// No description provided for @product_recall_section_dates.
  ///
  /// In fr, this message translates to:
  /// **'Dates de commercialisation'**
  String get product_recall_section_dates;

  /// No description provided for @product_recall_dates_label.
  ///
  /// In fr, this message translates to:
  /// **'Du {startDate} au {endDate}'**
  String product_recall_dates_label(Object startDate, Object endDate);

  /// No description provided for @product_recall_section_distributors.
  ///
  /// In fr, this message translates to:
  /// **'Distributeurs'**
  String get product_recall_section_distributors;

  /// No description provided for @product_recall_geographical_area.
  ///
  /// In fr, this message translates to:
  /// **'Zone géographique'**
  String get product_recall_geographical_area;

  /// No description provided for @product_recall_reason.
  ///
  /// In fr, this message translates to:
  /// **'Motif du rappel'**
  String get product_recall_reason;

  /// No description provided for @product_recall_safety_measures.
  ///
  /// In fr, this message translates to:
  /// **'Mesures de sécurité'**
  String get product_recall_safety_measures;

  /// No description provided for @product_recall_additional_info.
  ///
  /// In fr, this message translates to:
  /// **'Informations complémentaires'**
  String get product_recall_additional_info;

  /// No description provided for @product_recall_action_required.
  ///
  /// In fr, this message translates to:
  /// **'Action(s) requise(s)'**
  String get product_recall_action_required;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'fr':
      return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
