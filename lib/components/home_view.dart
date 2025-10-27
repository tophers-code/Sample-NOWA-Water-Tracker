import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:water_tracker/components/addwaterbutton.dart';
import 'package:water_tracker/components/custom_amount_dialog.dart';
import 'package:water_tracker/globals/water_state.dart';
import 'package:water_tracker/pages/today_history.dart';

@NowaGenerated({'auto-width': 393.0, 'auto-height': 684.0})
class HomeView extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return NFlex(
      direction: Axis.vertical,
      spacing: 0.0,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FlexSizedBox(
          width: double.infinity,
          height: 92.0,
          child: Material(
            color: Theme.of(context).colorScheme.primary,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
                top: 10.0,
                bottom: 10.0,
              ),
              child: NFlex(
                direction: Axis.horizontal,
                spacing: 30.756332397460938,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlexSizedBox(
                    width: null,
                    height: null,
                    child: Material(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                      color: const Color(0xff8cbeff),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 14.0,
                          right: 14.0,
                          top: 10.0,
                          bottom: 10.0,
                        ),
                        child: NFlex(
                          direction: Axis.vertical,
                          spacing: 0.0,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const FlexSizedBox(
                              width: null,
                              height: null,
                              child: Text(
                                'YOUR GOAL:',
                                style: TextStyle(color: Color(0xffffffff)),
                              ),
                            ),
                            FlexSizedBox(
                              width: null,
                              height: null,
                              child: Text(
                                WaterState.of(context).dailyGoal!.toString() + ' ml',
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  FlexSizedBox(
                    width: null,
                    height: null,
                    child: Material(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                      color: const Color(0xff8cbeff),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 14.0,
                          right: 14.0,
                          top: 10.0,
                          bottom: 10.0,
                        ),
                        child: NFlex(
                          direction: Axis.vertical,
                          spacing: 0.0,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const FlexSizedBox(
                              width: null,
                              height: null,
                              child: Text(
                                'REMAINING:',
                                style: TextStyle(color: Color(0xffffffff)),
                              ),
                            ),
                            FlexSizedBox(
                              width: null,
                              height: null,
                              child: Text(
                                WaterState.of(context).getRemaining()!,
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        FlexSizedBox(
          width: double.infinity,
          height: 250.0,
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                )),
            child: NFlex(
              direction: Axis.horizontal,
              spacing: 0.0,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlexSizedBox(
                  width: 200.0,
                  height: 200.0,
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: const Alignment(0.0, 0.0),
                    children: [
                      Positioned(
                        top: 0.0,
                        left: 0.0,
                        width: 200.0,
                        height: 200.0,
                        child: CircularProgressIndicator(
                          value: WaterState.of(context).getProgressBarValue(),
                          strokeWidth: 12.0,
                          color: Theme.of(context).colorScheme.tertiary,
                          backgroundColor: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      Positioned(
                        top: 79.5,
                        left: 0.0,
                        right: 0.0,
                        child: Text(
                          WaterState.of(context).todayWaterIntake!.toString() + ' ml',
                          style: Theme.of(context).textTheme.displaySmall,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const FlexSizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 16.0,
              bottom: 10.0,
            ),
            child: NFlex(
              direction: Axis.horizontal,
              spacing: 24.0,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlexSizedBox(
                  width: 155.0,
                  height: null,
                  child: Addwaterbutton(
                    cardAmount: 100,
                  ),
                ),
                FlexSizedBox(
                  width: 155.0,
                  height: null,
                  child: Addwaterbutton(
                    param1: 'https://i.ibb.co/sPMCvzx/mug.png',
                    cardAmount: 200,
                  ),
                )
              ],
            ),
          ),
        ),
        const FlexSizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 10.0,
              bottom: 10.0,
            ),
            child: NFlex(
              direction: Axis.horizontal,
              spacing: 24.0,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlexSizedBox(
                  width: 155.0,
                  height: null,
                  child: Addwaterbutton(
                    param1: 'https://i.ibb.co/S7drdrp/jug.png',
                    cardAmount: 300,
                  ),
                ),
                FlexSizedBox(
                  width: 155.0,
                  height: null,
                  child: Addwaterbutton(
                    param1: 'https://i.ibb.co/sVHyNSc/bottle.png',
                    cardAmount: 500,
                  ),
                )
              ],
            ),
          ),
        ),
        FlexSizedBox(
          width: double.infinity,
          height: 96.0,
          child: NFlex(
            direction: Axis.horizontal,
            spacing: 22.0,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlexSizedBox(
                width: 34.0,
                height: 34.0,
                child: Container(
                  decoration: BoxDecoration(color: const Color(0x00c4c4c4), borderRadius: BorderRadius.circular(0.0)),
                ),
              ),
              FlexSizedBox(
                width: null,
                height: null,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      builder: (context) => const CustomAmountDialog(),
                      useRootNavigator: false,
                      context: context,
                      anchorPoint: const Offset(0.0, 0.0),
                    );
                  },
                  child: Material(
                    color: Theme.of(context).colorScheme.tertiary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
                    elevation: 2.0,
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 14.0,
                        right: 14.0,
                        top: 14.0,
                        bottom: 14.0,
                      ),
                      child: Icon(
                        IconData(59224, fontFamily: 'MaterialIcons'),
                        color: Color(0xff000000),
                        size: 34.0,
                      ),
                    ),
                  ),
                ),
              ),
              FlexSizedBox(
                width: null,
                height: null,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TodayHistory()));
                  },
                  child: Icon(
                    const IconData(60030, fontFamily: 'MaterialIcons'),
                    color: Theme.of(context).colorScheme.secondary,
                    size: 34.0,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
