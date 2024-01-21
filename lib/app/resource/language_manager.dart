/*

© 2024 B1 Digital

User         : mehmetalicubukcu
Project Name : nutrition_app 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 21.01.2024 16:26
Notes        : 

*/

import 'package:flutter/material.dart';

enum LanguageType {
  turkish, english;

  String getValue() {
    switch (this) {
      case LanguageType.english:
        return englishS;
      case LanguageType.turkish:
        return turkishS;
    }
  }

  Locale get getLocal{
    switch(this) {
      case LanguageType.turkish:
        return turkishLocal;
      case LanguageType.english:
        return englishLocal;
    }
  }

  String get getTitle{
    switch(this) {
      case LanguageType.turkish:
        return "Türkçe";
      case LanguageType.english:
        return "English";
    }
  }
}

const String turkishS = "tr";
const String englishS = "en";
const String assetsPathLocalizations = "assets/translations";
const Locale turkishLocal = Locale("tr");
const Locale englishLocal = Locale("en");



