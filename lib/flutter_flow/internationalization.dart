import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi', 'mr', 'kn'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
    String? mrText = '',
    String? knText = '',
  }) =>
      [enText, hiText, mrText, knText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Auth1
  {
    '1l102jch': {
      'en': 'KisanMitra',
      'hi': 'किसानमित्र',
      'kn': 'ಕಿಸಾನ್ ಮಿತ್ರ',
      'mr': 'किसनमित्र',
    },
    'hjskdypw': {
      'en': 'Sign In',
      'hi': 'दाखिल करना',
      'kn': 'ಸೈನ್ ಇನ್ ಮಾಡಿ',
      'mr': 'साइन इन करा',
    },
    't4s3v918': {
      'en': 'Let\'s get started by filling out the form below.',
      'hi': 'आइये नीचे दिया गया फॉर्म भरकर शुरुआत करें।',
      'kn': 'ಕೆಳಗಿನ ಫಾರ್ಮ್ ಅನ್ನು ಭರ್ತಿ ಮಾಡುವ ಮೂಲಕ ಪ್ರಾರಂಭಿಸೋಣ.',
      'mr': 'चला खालील फॉर्म भरून सुरुवात करूया.',
    },
    '4z3qbab3': {
      'en': 'Email',
      'hi': 'ईमेल',
      'kn': 'ಇಮೇಲ್',
      'mr': 'ईमेल',
    },
    '39a4em9c': {
      'en': 'Password',
      'hi': 'पासवर्ड',
      'kn': 'ಪಾಸ್ವರ್ಡ್',
      'mr': 'पासवर्ड',
    },
    'xlrsz4oz': {
      'en': 'Sign In',
      'hi': 'दाखिल करना',
      'kn': 'ಸೈನ್ ಇನ್ ಮಾಡಿ',
      'mr': 'साइन इन करा',
    },
    'bkd9jccn': {
      'en': 'Forgot Password',
      'hi': 'पासवर्ड भूल गए',
      'kn': 'ಪಾಸ್ವರ್ಡ್ ಮರೆತುಹೋಗಿದೆ',
      'mr': 'पासवर्ड विसरलात',
    },
    '9ur31ruq': {
      'en': 'Or sign up with',
      'hi': 'या साइन अप करें',
      'kn': 'ಅಥವಾ ಸೈನ್ ಅಪ್ ಮಾಡಿ',
      'mr': 'किंवा सह साइन अप करा',
    },
    'iksj7qfe': {
      'en': 'Continue with Google',
      'hi': 'Google के साथ जारी रखें',
      'kn': 'Google ನೊಂದಿಗೆ ಮುಂದುವರಿಯಿರಿ',
      'mr': 'Google सह सुरू ठेवा',
    },
    'gymow3g7': {
      'en': 'Sign Up',
      'hi': 'साइन अप करें',
      'kn': 'ಸೈನ್ ಅಪ್ ಮಾಡಿ',
      'mr': 'साइन अप करा',
    },
    'tsc4e0y3': {
      'en': 'Let\'s get started by filling out the form below.',
      'hi': 'आइये नीचे दिया गया फॉर्म भरकर शुरुआत करें।',
      'kn': 'ಕೆಳಗಿನ ಫಾರ್ಮ್ ಅನ್ನು ಭರ್ತಿ ಮಾಡುವ ಮೂಲಕ ಪ್ರಾರಂಭಿಸೋಣ.',
      'mr': 'चला खालील फॉर्म भरून सुरुवात करूया.',
    },
    'cgnxdz4u': {
      'en': 'Name',
      'hi': 'नाम',
      'kn': 'ಹೆಸರು',
      'mr': 'नाव',
    },
    'x9hexnyf': {
      'en': 'Email',
      'hi': 'ईमेल',
      'kn': 'ಇಮೇಲ್',
      'mr': 'ईमेल',
    },
    '41qwcbeg': {
      'en': 'Password',
      'hi': 'पासवर्ड',
      'kn': 'ಪಾಸ್ವರ್ಡ್',
      'mr': 'पासवर्ड',
    },
    'zaxpp5b9': {
      'en': 'Confirm Password',
      'hi': 'पासवर्ड की पुष्टि कीजिये',
      'kn': 'ಪಾಸ್ವರ್ಡ್ ಅನ್ನು ದೃಢೀಕರಿಸಿ',
      'mr': 'पासवर्डची पुष्टी करा',
    },
    'vh2jn957': {
      'en': 'Create Account',
      'hi': 'खाता बनाएं',
      'kn': 'ಖಾತೆಯನ್ನು ರಚಿಸಿ',
      'mr': 'खाते तयार करा',
    },
    '6abh5r70': {
      'en': 'Or sign up with',
      'hi': 'या साइन अप करें',
      'kn': 'ಅಥವಾ ಸೈನ್ ಅಪ್ ಮಾಡಿ',
      'mr': 'किंवा सह साइन अप करा',
    },
    'w84gtyjc': {
      'en': 'Continue with Google',
      'hi': 'Google के साथ जारी रखें',
      'kn': 'Google ನೊಂದಿಗೆ ಮುಂದುವರಿಯಿರಿ',
      'mr': 'Google सह सुरू ठेवा',
    },
    'lyfj921j': {
      'en': 'Home',
      'hi': 'घर',
      'kn': 'ಮನೆ',
      'mr': 'घर',
    },
  },
  // HomePage
  {
    'ci5e4wvg': {
      'en': 'Fertilizers',
      'hi': 'उर्वरक',
      'kn': 'ರಸಗೊಬ್ಬರಗಳು',
      'mr': 'खते',
    },
    'siimipjq': {
      'en': 'Reccomend A Fertilzer',
      'hi': 'एक उर्वरक की सिफारिश करें',
      'kn': 'ಒಂದು ರಸಗೊಬ್ಬರವನ್ನು ಶಿಫಾರಸು ಮಾಡಿ',
      'mr': 'खताची शिफारस करा',
    },
    'xhiyankz': {
      'en': 'Organic Products',
      'hi': 'जैविक उत्पाद',
      'kn': 'ಸಾವಯವ ಉತ್ಪನ್ನಗಳು',
      'mr': 'सेंद्रिय उत्पादने',
    },
    'd7t4tc37': {
      'en': 'Weedicide',
      'hi': 'वीडिसाइड',
      'kn': 'ಕಳೆನಾಶಕ',
      'mr': 'तणनाशक',
    },
    'q3s1glyq': {
      'en': '₹400/litre',
      'hi': '₹400/लीटर',
      'kn': '₹400/ಲೀಟರ್',
      'mr': '₹४००/लिटर',
    },
    '3cckkl9f': {
      'en': 'Pesticide',
      'hi': 'कीटनाशक',
      'kn': 'ಕೀಟನಾಶಕ',
      'mr': 'कीटकनाशक',
    },
    '8dw8o380': {
      'en': '₹400/litre',
      'hi': '₹400/लीटर',
      'kn': '₹400/ಲೀಟರ್',
      'mr': '₹४००/लिटर',
    },
    '7uz15vsb': {
      'en': 'News',
      'hi': 'समाचार',
      'kn': 'ಸುದ್ದಿ',
      'mr': 'बातम्या',
    },
    'uw9pg3bo': {
      'en': 'Latest News',
      'hi': 'ताजा खबर',
      'kn': 'ಇತ್ತೀಚಿನ ಸುದ್ದಿ',
      'mr': 'ताज्या बातम्या',
    },
    'x5nbregf': {
      'en': 'KisanMitra',
      'hi': 'किसानमित्र',
      'kn': 'ಕಿಸಾನ್ ಮಿತ್ರ',
      'mr': 'किसानमित्र',
    },
    'xryv2f09': {
      'en': 'Home',
      'hi': 'होम',
      'kn': 'ಮನೆ',
      'mr': 'होम',
    },
  },
  // FertilizeSelect
  {
    'sn2pvo3z': {
      'en': 'Crop Type',
      'hi': 'फसल का प्रकार',
      'kn': 'ಬೆಳೆ ಪ್ರಕಾರ',
      'mr': 'पीक प्रकार',
    },
    'z3i5w3vi': {
      'en': 'Vegetable',
      'hi': 'सब्ज़ी',
      'kn': 'ತರಕಾರಿ',
      'mr': 'भाजी',
    },
    'qrgrxhxl': {
      'en': 'Fruit',
      'hi': 'फल',
      'kn': 'ಹಣ್ಣು',
      'mr': 'फळ',
    },
    'io3qwxkj': {
      'en': 'Flower',
      'hi': 'फूल',
      'kn': 'ಹೂವು',
      'mr': 'फ्लॉवर',
    },
    'pi3edkhl': {
      'en': 'Growth Stage',
      'hi': 'वृद्धि चरण',
      'kn': 'ಬೆಳವಣಿಗೆಯ ಹಂತ',
      'mr': 'वाढीचा टप्पा',
    },
    'beh0wjb5': {
      'en': 'Seedling',
      'hi': 'अंकुर',
      'kn': 'ಮೊಳಕೆ',
      'mr': 'बीपासून नुकतेच तयार झालेले रोप',
    },
    '2ccwtna2': {
      'en': 'Vegetation',
      'hi': 'वनस्पति',
      'kn': 'ಸಸ್ಯವರ್ಗ',
      'mr': 'वनस्पति',
    },
    'o3864njn': {
      'en': 'Flowering/Fruiting',
      'hi': 'पुष्पन/फलन',
      'kn': 'ಹೂ ಬಿಡುವುದು/ಹಣ್ಣಾಗುವುದು',
      'mr': 'फ्लॉवरिंग / फ्रूटिंग',
    },
    'i4bddmld': {
      'en': 'Symptoms',
      'hi': 'लक्षण',
      'kn': 'ರೋಗಲಕ್ಷಣಗಳು',
      'mr': 'लक्षणे',
    },
    'dof700fj': {
      'en': 'Yellow Leaves',
      'hi': 'पीली पत्तियां',
      'kn': 'ಹಳದಿ ಎಲೆಗಳು',
      'mr': 'पिवळी पाने',
    },
    '8bbiglj9': {
      'en': 'Stunted Growth',
      'hi': 'अवरुद्ध विकास',
      'kn': 'ಕುಂಠಿತ ಬೆಳವಣಿಗೆ',
      'mr': 'वाढ खुंटली',
    },
    'nsn1io9l': {
      'en': 'Weak Growth',
      'hi': 'कमजोर वृद्धि',
      'kn': 'ದುರ್ಬಲ ಬೆಳವಣಿಗೆ',
      'mr': 'कमकुवत वाढ',
    },
    'kraed3z9': {
      'en': 'No Symptom',
      'hi': 'कोई लक्षण नहीं',
      'kn': 'ರೋಗಲಕ್ಷಣವಿಲ್ಲ',
      'mr': 'कोणतेही लक्षण नाही',
    },
    'zw2t15hi': {
      'en': 'Area(acres)',
      'hi': 'क्षेत्रफल (एकड़ में)',
      'kn': 'ಪ್ರದೇಶ (ಎಕರೆ)',
      'mr': 'क्षेत्र (एकर)',
    },
    'gnvysw5e': {
      'en': 'Enter area in acres',
      'hi': 'क्षेत्रफल एकड़ में दर्ज करें',
      'kn': 'ಎಕರೆ ಪ್ರದೇಶದಲ್ಲಿ ನಮೂದಿಸಿ',
      'mr': 'एकर मध्ये क्षेत्र प्रविष्ट करा',
    },
    '6g1w6pgk': {
      'en': '1',
      'hi': '1',
      'kn': '1',
      'mr': '1',
    },
    '1sbdfabj': {
      'en': 'Recommendation',
      'hi': 'सिफारिश',
      'kn': 'ಶಿಫಾರಸು',
      'mr': 'शिफारस',
    },
    'mral0hi8': {
      'en': 'N',
      'hi': 'एन',
      'kn': 'ಎನ್',
      'mr': 'एन',
    },
    'utee6pnd': {
      'en': 'Nitrogen',
      'hi': 'नाइट्रोजन',
      'kn': 'ಸಾರಜನಕ',
      'mr': 'नायट्रोजन',
    },
    'rpob2kvw': {
      'en': 'P',
      'hi': 'पी',
      'kn': 'ಪಿ',
      'mr': 'पी',
    },
    'uaxgt0h4': {
      'en': 'Phosphorous',
      'hi': 'फ़ास्फ़रोस',
      'kn': 'ರಂಜಕ',
      'mr': 'स्फुरद',
    },
    'hbcvmo6b': {
      'en': 'K',
      'hi': 'क',
      'kn': 'ಕೆ',
      'mr': 'के',
    },
    'grup9hl4': {
      'en': 'Phosphorous',
      'hi': 'फ़ास्फ़रोस',
      'kn': 'ರಂಜಕ',
      'mr': 'स्फुरद',
    },
    'ohhkz4t0': {
      'en': 'Nutrients',
      'hi': 'पोषक तत्व',
      'kn': 'ಪೋಷಕಾಂಶಗಳು',
      'mr': 'पोषक',
    },
    'hgpy8obq': {
      'en': 'Total Volume Required',
      'hi': 'कुल आवश्यक मात्रा',
      'kn': 'ಒಟ್ಟು ವಾಲ್ಯೂಮ್ ಅಗತ್ಯವಿದೆ',
      'mr': 'एकूण खंड आवश्यक',
    },
    'v3ifawg4': {
      'en': ' Litres for ',
      'hi': 'लीटर के लिए',
      'kn': 'ಗಾಗಿ ಲೀಟರ್',
      'mr': 'साठी लिटर',
    },
    'pyqkd2ed': {
      'en': ' Acres ',
      'hi': 'एकड़',
      'kn': 'ಎಕರೆ',
      'mr': 'एकर',
    },
    'j2zy83dq': {
      'en': 'Vend It',
      'hi': 'बेचो',
      'kn': 'ವೆಂಡ್ ಇಟ್',
      'mr': 'विक्री करा',
    },
    '5qaqwntk': {
      'en': 'Fertilizer Calculator',
      'hi': 'उर्वरक कैलकुलेटर',
      'kn': 'ರಸಗೊಬ್ಬರ ಕ್ಯಾಲ್ಕುಲೇಟರ್',
      'mr': 'खत कॅल्क्युलेटर',
    },
    'i0tj9yga': {
      'en': 'Fertilizers',
      'hi': 'उर्वरक',
      'kn': 'ರಸಗೊಬ್ಬರಗಳು',
      'mr': 'खते',
    },
  },
  // PesticidePage
  {
    'lg09zlql': {
      'en': 'Pesticide Despenser',
      'hi': 'कीटनाशक डिस्पेंसर',
      'kn': 'ಕೀಟನಾಶಕ ಡಿಸ್ಪೆನ್ಸರ್',
      'mr': 'कीटकनाशक डिस्पेंसर',
    },
    'e8fbkn9i': {
      'en': 'Area(acres)',
      'hi': 'क्षेत्रफल (एकड़ में)',
      'kn': 'ಪ್ರದೇಶ (ಎಕರೆ)',
      'mr': 'क्षेत्र (एकर)',
    },
    'cz82pdpv': {
      'en': 'Enter area in acres',
      'hi': 'क्षेत्रफल एकड़ में दर्ज करें',
      'kn': 'ಎಕರೆ ಪ್ರದೇಶದಲ್ಲಿ ನಮೂದಿಸಿ',
      'mr': 'एकर मध्ये क्षेत्र प्रविष्ट करा',
    },
    '7nxzejgn': {
      'en': '1',
      'hi': '1',
      'kn': '1',
      'mr': '1',
    },
    'r1g1kuc4': {
      'en': 'Total Volume Required',
      'hi': 'कुल आवश्यक मात्रा',
      'kn': 'ಒಟ್ಟು ವಾಲ್ಯೂಮ್ ಅಗತ್ಯವಿದೆ',
      'mr': 'एकूण खंड आवश्यक',
    },
    'u6rj19j8': {
      'en': ' Litres for ',
      'hi': 'लीटर के लिए',
      'kn': 'ಗಾಗಿ ಲೀಟರ್',
      'mr': 'साठी लिटर',
    },
    'ebsr49qe': {
      'en': ' Acres ',
      'hi': 'एकड़',
      'kn': 'ಎಕರೆ',
      'mr': 'एकर',
    },
    '3hn6i10x': {
      'en': 'Amount to be paid',
      'hi': 'जितनी राशि अदा की जानी है',
      'kn': 'ಪಾವತಿಸಬೇಕಾದ ಮೊತ್ತ',
      'mr': 'भरायची रक्कम',
    },
    'crovsj17': {
      'en': '  ₹  ',
      'hi': '₹',
      'kn': '₹',
      'mr': '₹',
    },
    'dkg8ei7t': {
      'en': '  For  ',
      'hi': 'के लिए',
      'kn': 'ಫಾರ್',
      'mr': 'साठी',
    },
    '8vvi7b33': {
      'en': '  litres ',
      'hi': 'लीटर',
      'kn': 'ಲೀಟರ್',
      'mr': 'लिटर',
    },
    '7jwolbgw': {
      'en': 'Vend It',
      'hi': 'बेचो',
      'kn': 'ವೆಂಡ್ ಇಟ್',
      'mr': 'विक्री करा',
    },
    '4skjeawt': {
      'en': 'Pesticides',
      'hi': 'कीटनाशकों',
      'kn': 'ಕೀಟನಾಶಕಗಳು',
      'mr': 'कीटकनाशके',
    },
  },
  // WeedicidePage
  {
    '2s428vi3': {
      'en': 'Weedicide Despenser',
      'hi': 'खरपतवारनाशक डिस्पेंसर',
      'kn': 'ಕಳೆನಾಶಕ ಡಿಸ್ಪೆನ್ಸರ್',
      'mr': 'तणनाशक डिस्पेंसर',
    },
    'mu9xytkc': {
      'en': 'Area(acres)',
      'hi': 'क्षेत्रफल (एकड़ में)',
      'kn': 'ಪ್ರದೇಶ (ಎಕರೆ)',
      'mr': 'क्षेत्र (एकर)',
    },
    '3ysirsw1': {
      'en': 'Enter area in acres',
      'hi': 'क्षेत्रफल एकड़ में दर्ज करें',
      'kn': 'ಎಕರೆ ಪ್ರದೇಶದಲ್ಲಿ ನಮೂದಿಸಿ',
      'mr': 'एकर मध्ये क्षेत्र प्रविष्ट करा',
    },
    'x5rcy5p4': {
      'en': '1',
      'hi': '1',
      'kn': '1',
      'mr': '1',
    },
    '6bz40uhp': {
      'en': 'Total Volume Required',
      'hi': 'कुल आवश्यक मात्रा',
      'kn': 'ಒಟ್ಟು ವಾಲ್ಯೂಮ್ ಅಗತ್ಯವಿದೆ',
      'mr': 'एकूण खंड आवश्यक',
    },
    'l6ebt70c': {
      'en': ' Litres for ',
      'hi': 'लीटर के लिए',
      'kn': 'ಗಾಗಿ ಲೀಟರ್',
      'mr': 'साठी लिटर',
    },
    '9mg2n6dn': {
      'en': ' Acres ',
      'hi': 'एकड़',
      'kn': 'ಎಕರೆ',
      'mr': 'एकर',
    },
    'kzwml5gj': {
      'en': 'Amount to be paid',
      'hi': 'जितनी राशि अदा की जानी है',
      'kn': '',
      'mr': 'भरायची रक्कम',
    },
    'unj7k2uj': {
      'en': '  ₹  ',
      'hi': '₹',
      'kn': '',
      'mr': '₹',
    },
    '4g7q5nl4': {
      'en': '  For  ',
      'hi': 'के लिए',
      'kn': '',
      'mr': 'साठी',
    },
    'x5aj6cto': {
      'en': '  litres ',
      'hi': 'लीटर',
      'kn': '',
      'mr': 'लिटर',
    },
    'x8tijmqz': {
      'en': 'Vend It',
      'hi': 'बेचो',
      'kn': 'ವೆಂಡ್ ಇಟ್',
      'mr': 'विक्री करा',
    },
    '4mzr6l7m': {
      'en': 'Weedicide',
      'hi': 'वीडिसाइड',
      'kn': '',
      'mr': 'तणनाशक',
    },
  },
  // NewsPage
  {
    'akk6m4mz': {
      'en': 'Weather Alert',
      'hi': 'मौसम चेतावनी',
      'kn': 'ಹವಾಮಾನ ಎಚ್ಚರಿಕೆ',
      'mr': 'हवामानाचा इशारा',
    },
    '1hfzshj2': {
      'en': 'Heavy Rainfall Expected',
      'hi': 'भारी वर्षा की संभावना',
      'kn': 'ಭಾರೀ ಮಳೆಯಾಗುವ ನಿರೀಕ್ಷೆಯಿದೆ',
      'mr': 'मुसळधार पावसाची अपेक्षा',
    },
    'ht6op9nj': {
      'en': 'Take necessary precautions to protect your crops',
      'hi': 'अपनी फसलों की सुरक्षा के लिए आवश्यक सावधानियां बरतें',
      'kn': 'ನಿಮ್ಮ ಬೆಳೆಗಳನ್ನು ರಕ್ಷಿಸಲು ಅಗತ್ಯ ಮುನ್ನೆಚ್ಚರಿಕೆಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳಿ',
      'mr': 'आपल्या पिकांचे संरक्षण करण्यासाठी आवश्यक ती खबरदारी घ्या',
    },
    '2uzdzzle': {
      'en': 'Latest Updates',
      'hi': 'नवीनतम अपडेट',
      'kn': 'ಇತ್ತೀಚಿನ ನವೀಕರಣಗಳು',
      'mr': 'नवीनतम अद्यतने',
    },
    '12fxbl1u': {
      'en': 'New MSP Rates Announced',
      'hi': 'नई एमएसपी दरें घोषित',
      'kn': 'ಹೊಸ MSP ದರಗಳನ್ನು ಪ್ರಕಟಿಸಲಾಗಿದೆ',
      'mr': 'नवीन एमएसपी दर जाहीर',
    },
    'iznqox4d': {
      'en': 'Government increases minimum support price for wheat and rice',
      'hi': 'सरकार ने गेहूं और चावल के लिए न्यूनतम समर्थन मूल्य बढ़ाया',
      'kn': 'ಗೋಧಿ ಮತ್ತು ಅಕ್ಕಿಗೆ ಸರ್ಕಾರ ಕನಿಷ್ಠ ಬೆಂಬಲ ಬೆಲೆಯನ್ನು ಹೆಚ್ಚಿಸಿದೆ',
      'mr': 'सरकारने गहू आणि तांदळाच्या किमान आधारभूत किमतीत वाढ केली आहे',
    },
    '42pzhry0': {
      'en': 'Organic Farming Workshop',
      'hi': 'जैविक खेती कार्यशाला',
      'kn': 'ಸಾವಯವ ಕೃಷಿ ಕಾರ್ಯಾಗಾರ',
      'mr': 'सेंद्रिय शेती कार्यशाळा',
    },
    'hvhd9up8': {
      'en': 'Free training session on organic farming techniques',
      'hi': 'जैविक खेती तकनीक पर निःशुल्क प्रशिक्षण सत्र',
      'kn': 'ಸಾವಯವ ಕೃಷಿ ತಂತ್ರಗಳ ಕುರಿತು ಉಚಿತ ತರಬೇತಿ',
      'mr': 'सेंद्रिय शेती तंत्रावर मोफत प्रशिक्षण सत्र',
    },
    '4z3uklow': {
      'en': 'Market Prices Update',
      'hi': 'बाजार मूल्य अद्यतन',
      'kn': 'ಮಾರುಕಟ್ಟೆ ಬೆಲೆಗಳ ನವೀಕರಣ',
      'mr': 'बाजार भाव अद्यतन',
    },
    'xtsbay7a': {
      'en': 'Today\'s commodity prices from major mandis',
      'hi': 'प्रमुख मंडियों से आज के कमोडिटी भाव',
      'kn': 'ಪ್ರಮುಖ ಮಂಡಿಗಳಿಂದ ಇಂದಿನ ಸರಕುಗಳ ಬೆಲೆಗಳು',
      'mr': 'प्रमुख मंडईतील आजच्या वस्तूंच्या किमती',
    },
    'map9n6g9': {
      'en': 'Expert Tips',
      'hi': 'विशेषज्ञ सुझाव',
      'kn': 'ತಜ್ಞರ ಸಲಹೆಗಳು',
      'mr': 'तज्ञांच्या टिप्स',
    },
    '755b26xq': {
      'en': 'Water Management',
      'hi': 'जल प्रबंधन',
      'kn': 'ನೀರಿನ ನಿರ್ವಹಣೆ',
      'mr': 'पाणी व्यवस्थापन',
    },
    '3vewk8dl': {
      'en': 'Tips for efficient irrigation',
      'hi': 'कुशल सिंचाई के लिए सुझाव',
      'kn': 'ಸಮರ್ಥ ನೀರಾವರಿಗಾಗಿ ಸಲಹೆಗಳು',
      'mr': 'कार्यक्षम सिंचनासाठी टिपा',
    },
    'echex5nf': {
      'en': 'Pest Control',
      'hi': 'कीट नियंत्रण',
      'kn': 'ಕೀಟ ನಿಯಂತ್ರಣ',
      'mr': 'कीटक नियंत्रण',
    },
    's7w8goem': {
      'en': 'Natural pest management',
      'hi': 'प्राकृतिक कीट प्रबंधन',
      'kn': 'ನೈಸರ್ಗಿಕ ಕೀಟ ನಿರ್ವಹಣೆ',
      'mr': 'नैसर्गिक कीड व्यवस्थापन',
    },
    'aumd9ocv': {
      'en': 'Soil Health',
      'hi': 'मृदा स्वास्थ्य',
      'kn': 'ಮಣ್ಣಿನ ಆರೋಗ್ಯ',
      'mr': 'मातीचे आरोग्य',
    },
    'mmm4d8zz': {
      'en': 'Maintaining soil fertility',
      'hi': 'मिट्टी की उर्वरता बनाए रखना',
      'kn': 'ಮಣ್ಣಿನ ಫಲವತ್ತತೆ ಕಾಪಾಡುವುದು',
      'mr': 'जमिनीची सुपीकता राखणे',
    },
    'ma10vbi8': {
      'en': 'KisanMitra News',
      'hi': 'किसानमित्र समाचार',
      'kn': 'ಕಿಸಾನಮಿತ್ರ ನ್ಯೂಸ್',
      'mr': 'किसानमित्र न्यूज',
    },
  },
  // MyComps
  {
    'ojpiw1z4': {
      'en': 'Reccomendation',
      'hi': 'अनुशंसा',
      'kn': 'ಶಿಫಾರಸು',
      'mr': 'शिफारस',
    },
    'pncrebmv': {
      'en': 'N',
      'hi': 'एन',
      'kn': 'ಎನ್',
      'mr': 'एन',
    },
    'zzmkf0tw': {
      'en': '12',
      'hi': '12',
      'kn': '12',
      'mr': '12',
    },
    'hu9sgzsi': {
      'en': 'Nitrogen',
      'hi': 'नाइट्रोजन',
      'kn': 'ಸಾರಜನಕ',
      'mr': 'नायट्रोजन',
    },
    'j0nbpqo3': {
      'en': 'P',
      'hi': 'पी',
      'kn': 'ಪಿ',
      'mr': 'पी',
    },
    'lrzsermb': {
      'en': '24',
      'hi': '24',
      'kn': '24',
      'mr': '24',
    },
    'j419xpuc': {
      'en': 'Phosphorus',
      'hi': 'फास्फोरस',
      'kn': 'ರಂಜಕ',
      'mr': 'फॉस्फरस',
    },
    'ldx5bo69': {
      'en': 'K',
      'hi': 'क',
      'kn': 'ಕೆ',
      'mr': 'के',
    },
    'h99gf3s1': {
      'en': '36',
      'hi': '36',
      'kn': '36',
      'mr': '36',
    },
    'y8jdx283': {
      'en': 'Potassium',
      'hi': 'पोटेशियम',
      'kn': 'ಪೊಟ್ಯಾಸಿಯಮ್',
      'mr': 'पोटॅशियम',
    },
    '3vjv14y2': {
      'en': '48',
      'hi': '48',
      'kn': '48',
      'mr': '48',
    },
    '9sksf4r0': {
      'en': 'Micronutrients',
      'hi': 'सूक्ष्म पोषक',
      'kn': 'ಸೂಕ್ಷ್ಮ ಪೋಷಕಾಂಶಗಳು',
      'mr': 'सूक्ष्म अन्नद्रव्ये',
    },
    '97m1ujtg': {
      'en': 'Total Volume Required',
      'hi': 'कुल आवश्यक मात्रा',
      'kn': 'ಒಟ್ಟು ವಾಲ್ಯೂಮ್ ಅಗತ್ಯವಿದೆ',
      'mr': 'एकूण खंड आवश्यक',
    },
    'zhcbu5xw': {
      'en': '250',
      'hi': '250',
      'kn': '250',
      'mr': '250',
    },
    '02nla4y2': {
      'en': ' Litres for ',
      'hi': 'लीटर के लिए',
      'kn': 'ಗಾಗಿ ಲೀಟರ್',
      'mr': 'साठी लिटर',
    },
    'nvfwy5n7': {
      'en': '5 acres',
      'hi': '5 एकड़',
      'kn': '5 ಎಕರೆ',
      'mr': '5 एकर',
    },
  },
  // Miscellaneous
  {
    '3d8p2fm3': {
      'en': 'Error',
      'hi': 'Error',
      'kn': '',
      'mr': 'Error',
    },
    '113lh1bg': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    'vvxoibjw': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    '9o6beuc7': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    'amfh7o9s': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    'emhd4rxy': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    'h6biuehx': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    '5e7nijip': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    'u2shxpmf': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    '8krajsqx': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    'bchc97hv': {
      'en': 'Wrong Creds',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    'uvuevre6': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    'is2736qw': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    'qimw5ezc': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    'h7r9gwpx': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    '5rasn2qd': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    'cd73xdu3': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    '45w7bkci': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    '84iqd4og': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    'rszm19fs': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    '9eablmiv': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    'm2z0v2t7': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    'kxjgt8wi': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    '10frmxob': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
    'ahas0alo': {
      'en': '',
      'hi': '',
      'kn': '',
      'mr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
