import 'package:fl_boilerplate/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:global_configuration/global_configuration.dart';

AppStateController appController = AppStateController._();

/**
 * App State Variables Class
 * maintain all variables that share
 * across the app.
 *
 * Author: JZ
 * Date: 19-03-2020
 * Version: 0.0.1
 */
class AppStateVars {
  AppStateVars({
    this.lang,
    this.langMap,
  });

  final String lang;
  final Map<String, dynamic> langMap;

  AppStateVars copyWith({
    String lang,
    Map<String, dynamic> langMap,
  }) {
    return AppStateVars(
      lang: lang ?? this.lang,
      langMap: langMap ?? this.langMap,
    );
  }

  String language(String key) {
    if(langMap == null) return "";

    return langMap[key] ?? "";
  }

}

/**
 * App State Controller
 * manipulates the variables shared across the app
 *
 * Author: JZ
 * Date: 19-03-2020
 * Version: 0.0.1
 */
class AppStateController extends ValueNotifier<AppStateVars> {
  AppStateController._() : super(AppStateVars()) {
    _init();
  }



  void _init() async {
    await setLang(lang: 'en');
  }

  /*
  Set the language of the app
   */
  Future<void> setLang({String lang}) async {
    if (value.lang == lang) return null;

    var gc;
    if (lang == 'zh') {
      await GlobalConfiguration().loadFromPath(kZHLanguageFile);
    } else {
      await GlobalConfiguration().loadFromPath(kENLanguageFile);
    }

    value = value.copyWith(lang: lang, langMap: GlobalConfiguration().appConfig,);
  }


}
