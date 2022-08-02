import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(Locale('en'));

  void selectEngLanguage() {
    emit(Locale('en'));
  }

  void selectArabicLanguage() {
    emit(Locale('ar'));
  }

  void selectPortugueseLanguage() {
    emit(Locale('pt'));
  }

  void selectFrenchLanguage() {
    emit(Locale('fr'));
  }

  void selectIndonesianLanguage() {
    emit(Locale('id'));
  }

  void selectSpanishLanguage() {
    emit(Locale('es'));
  }

  void selectItalianLanguage() {
    emit(Locale('it'));
  }

  void selectTurkishLanguage() {
    emit(Locale('tr'));
  }

  void selectSwahiliLanguage() {
    emit(Locale('sw'));
  }

  void selectGermanLanguage() {
    emit(Locale('de'));
  }

  void selectRomaniaLanguage() {
    emit(Locale('ro'));
  }
}
