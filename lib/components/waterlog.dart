import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:water_tracker/models/water_log_entry.dart';

@NowaGenerated({'auto-width': 269.0, 'auto-height': 63})
class Waterlog extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Waterlog({this.logEntry, this.deleteCallback, super.key});

  final WaterLogEntry? logEntry;

  final void Function()? deleteCallback;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.onPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 10.0,
          bottom: 10.0,
        ),
        child: NFlex(
          direction: Axis.horizontal,
          spacing: 116.99612426757812,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlexSizedBox(
              width: null,
              height: null,
              child: NFlex(
                direction: Axis.horizontal,
                spacing: 8.0,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FlexSizedBox(
                    width: null,
                    height: null,
                    child: Icon(
                      const IconData(984482, fontFamily: 'MaterialIcons'),
                      color: Theme.of(context).colorScheme.primary,
                      size: 26.0,
                    ),
                  ),
                  FlexSizedBox(
                    width: null,
                    height: null,
                    child: NFlex(
                      direction: Axis.vertical,
                      spacing: 0.0,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FlexSizedBox(
                          width: null,
                          height: null,
                          child: Text(
                            logEntry != null ? logEntry!.amount!.toString() + ' ml' : 'Amount not found',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                        FlexSizedBox(
                          width: null,
                          height: null,
                          child: Text(
                            logEntry != null ? logEntry!.date!.hour.toString() + ':' + logEntry!.date!.minute.toString() : 'Time not found',
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            FlexSizedBox(
              width: null,
              height: null,
              child: GestureDetector(
                onTap: deleteCallback,
                child: const Icon(
                  IconData(57787, fontFamily: 'MaterialIcons'),
                  color: Color(0x50000000),
                  size: 22.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
