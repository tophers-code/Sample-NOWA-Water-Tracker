import 'package:shared_preferences/shared_preferences.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_tracker/globals/app_state.dart';
import 'package:water_tracker/globals/water_state.dart';
import 'package:water_tracker/pages/home_page.dart';
import 'package:water_tracker/pages/today_history.dart';

@NowaGenerated()
late final SharedPreferences sharedPrefs;

@NowaGenerated()
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPrefs = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

@NowaGenerated({'visibleInNowa': false})
class MyApp extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WaterState>(
      create: (context) => WaterState(),
      child: ChangeNotifierProvider<AppState>(
        create: (context) => AppState(),
        builder: (context, child) => MaterialApp(
          theme: AppState.of(context).theme,
          debugShowCheckedModeBanner: false,
          initialRoute: 'HomePage',
          routes: {'HomePage': (context) => const HomePage(), 'TodayHistory': (context) => const TodayHistory()},
        ),
      ),
    );
  }
}
