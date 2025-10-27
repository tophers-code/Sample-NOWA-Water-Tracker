import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:water_tracker/components/waterlog.dart';
import 'package:water_tracker/globals/water_state.dart';
import 'package:water_tracker/models/water_log_entry.dart';

@NowaGenerated({'auto-width': 386})
class TodayHistory extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const TodayHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NFlex(
          direction: Axis.vertical,
          spacing: 0.0,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FlexSizedBox(
              width: double.infinity,
              flex: 1,
              child: ListView.separated(
                itemCount: WaterState.of(context).todaysLogs!.length,
                itemBuilder: (context, index) {
                  final WaterLogEntry? element = WaterState.of(context).todaysLogs?[index];
                  return Waterlog(
                    logEntry: element,
                    deleteCallback: () {
                      WaterState.of(context, listen: false).deleteEntry(item: element);
                    },
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 16.0,
                  width: 20.0,
                ),
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 16.0,
                  bottom: 16.0,
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Daily Logs',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
