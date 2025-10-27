import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class WaterLogEntry {
  @NowaGenerated({'loader': 'auto-constructor'})
  const WaterLogEntry({this.amount = 0, this.date});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory WaterLogEntry.fromJson({required Map<String, dynamic> json}) {
    return WaterLogEntry(
        amount: json['amount'] ?? 0,
        date: json['date'] != null ? DateTime.tryParse(json['date']!) : null);
  }

  final int? amount;

  final DateTime? date;

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'amount': amount, 'date': date?.toIso8601String()};
  }

  @NowaGenerated({'loader': 'auto-copy-with'})
  WaterLogEntry copyWith({int? amount, DateTime? date}) {
    return WaterLogEntry(
        amount: amount ?? this.amount, date: date ?? this.date);
  }
}
