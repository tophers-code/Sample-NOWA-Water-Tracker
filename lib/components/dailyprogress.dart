import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 276, 'auto-height': 84})
class Dailyprogress extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Dailyprogress({super.key});

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
          direction: Axis.vertical,
          spacing: 10.0,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlexSizedBox(
              width: double.infinity,
              child: NFlex(
                direction: Axis.horizontal,
                spacing: 85.89126443862915,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                            '10.10.2024',
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ),
                        FlexSizedBox(
                          width: null,
                          height: null,
                          child: NFlex(
                            direction: Axis.horizontal,
                            spacing: 5.0,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FlexSizedBox(
                                width: null,
                                height: null,
                                child: Text(
                                  '1000ml',
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ),
                              FlexSizedBox(
                                width: null,
                                height: null,
                                child: Text(
                                  '/',
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ),
                              FlexSizedBox(
                                width: null,
                                height: null,
                                child: Text(
                                  '2000ml',
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const FlexSizedBox(
                    width: null,
                    height: null,
                    child: Icon(
                      IconData(57689, fontFamily: 'MaterialIcons'),
                      color: Color(0xff2ba525),
                      size: 18.0,
                    ),
                  )
                ],
              ),
            ),
            FlexSizedBox(
              width: double.infinity,
              height: 8.0,
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.circular(20.0),
                value: 0.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
