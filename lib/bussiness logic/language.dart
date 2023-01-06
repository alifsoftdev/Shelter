import 'package:get/get.dart';
import 'package:shelter/UI/language/english.dart';

import '../UI/language/bangla.dart';


class AppLanguages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': eng,
        'bn_BD': ban,
      };
}