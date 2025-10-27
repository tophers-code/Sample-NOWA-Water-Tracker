import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:provider/provider.dart';
import 'package:water_tracker/globals/themes.dart';

@NowaGenerated()
class AppState extends ChangeNotifier {
  factory AppState.of(BuildContext context, {bool listen = true}) {
    return Provider.of<AppState>(context, listen: listen);
  }

  AppState();

  ThemeData _theme = lightTheme;

  ThemeData get theme {
    return _theme;
  }

  void changeTheme(ThemeData theme) {
    _theme = theme;
    notifyListeners();
  }
}
