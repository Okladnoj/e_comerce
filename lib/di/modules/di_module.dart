import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
@immutable
abstract class DiModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
