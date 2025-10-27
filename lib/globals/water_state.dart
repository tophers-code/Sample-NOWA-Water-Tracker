import 'dart:convert';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_tracker/main.dart';
import 'package:water_tracker/models/water_log_entry.dart';

@NowaGenerated()
class WaterState extends ChangeNotifier {
  WaterState();

  factory WaterState.of(BuildContext context, {bool listen = true}) {
    return Provider.of<WaterState>(context, listen: listen);
  }

  int? todayWaterIntake = 0;

  List<WaterLogEntry?>? todaysLogs = [];

  int? dailyGoal = 0;

  void saveTodaysLogs() {
    final encodedList = encodeList(todaysLogs!);
    sharedPrefs.setString('todaysLogs', encodedList);
  }

  void loadData() {
    final tempDailyGoal = sharedPrefs.getInt('dailyGoal');
    if (tempDailyGoal != null) {
      dailyGoal = tempDailyGoal;
    }
    final storedTodaysLogs = sharedPrefs.getString('todaysLogs');
    if (storedTodaysLogs != null) {
      todaysLogs = decodeList(storedTodaysLogs!);
      calculateTotalIntake(list: todaysLogs);
    }
  }

  String? getRemaining() {
    if (dailyGoal != 0) {
      if (todayWaterIntake! < dailyGoal!) {
        final int? result = dailyGoal! - todayWaterIntake!;
        return result?.toString();
      } else {
        return 'Congrats';
      }
    } else {
      return '-';
    }
  }

  void addWaterLog({int? amount = 0}) {
    final waterIntake = WaterLogEntry(amount: amount, date: DateTime.now());
    todaysLogs?.insert(0, waterIntake);
    todayWaterIntake = todayWaterIntake! + amount!;
    notifyListeners();
    saveTodaysLogs();
  }

  void deleteEntry({WaterLogEntry? item = const WaterLogEntry()}) {
    todaysLogs?.remove(item);
    todayWaterIntake = todayWaterIntake! - item!.amount!;
    notifyListeners();
    saveTodaysLogs();
  }

  void setDailyGoal({int? dailyGoalParam = 0}) {
    dailyGoal = dailyGoalParam;
    notifyListeners();
    sharedPrefs.setInt('dailyGoal', dailyGoalParam!);
  }

  double? getProgressBarValue() {
    if (dailyGoal != 0) {
      return todayWaterIntake! / dailyGoal!;
    } else {
      return 0.0;
    }
  }

  void calculateTotalIntake({List<WaterLogEntry?>? list = const []}) {
    int? totalSum = 0;
    list?.forEach((element) {
      totalSum = totalSum! + element!.amount!;
    });
    todayWaterIntake = totalSum;
  }
}

String encodeList(List<WaterLogEntry?> list) {
  return jsonEncode(list.map((e) => e?.toJson()).toList());
}

List<WaterLogEntry> decodeList(String encodedList) {
  return (jsonDecode(encodedList) as List).map((e) => WaterLogEntry.fromJson(json: e)).toList();
}
