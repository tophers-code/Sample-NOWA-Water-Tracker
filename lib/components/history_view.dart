import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:water_tracker/components/dailyprogress.dart';
import 'package:water_tracker/globals/water_state.dart';
import 'package:water_tracker/models/water_log_entry.dart';

@NowaGenerated({'auto-width': 286, 'auto-height': 500})
class HistoryView extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: WaterState.of(context).todaysLogs!.length,
      itemBuilder: (context, index) {
        final WaterLogEntry? element = WaterState.of(context).todaysLogs?[index];
        return const Dailyprogress();
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 14.0,
        width: 20.0,
      ),
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16.0,
        bottom: 16.0,
      ),
    );
  }
}
