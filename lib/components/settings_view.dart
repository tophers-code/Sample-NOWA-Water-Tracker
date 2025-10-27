import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:water_tracker/components/setdailytarget.dart';
import 'package:water_tracker/globals/water_state.dart';

@NowaGenerated({'auto-width': 298.0, 'auto-height': 477.81090909090904})
class SettingsView extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        top: 10.0,
        bottom: 10.0,
      ),
      child: NFlex(
        direction: Axis.vertical,
        spacing: 20.0,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FlexSizedBox(
            width: double.infinity,
            height: null,
            child: GestureDetector(
              onTap: () {
                showDialog(
                  builder: (context) => const Setdailytarget(),
                  useRootNavigator: false,
                  context: context,
                  anchorPoint: const Offset(0.0, 0.0),
                );
              },
              child: Material(
                color: Theme.of(context).colorScheme.onPrimary,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
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
                    spacing: 105.17622375488281,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlexSizedBox(
                        width: null,
                        height: 24.0,
                        child: NFlex(
                          direction: Axis.horizontal,
                          spacing: 6.0,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FlexSizedBox(
                              width: null,
                              height: null,
                              child: Icon(
                                const IconData(58995, fontFamily: 'MaterialIcons'),
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                            ),
                            FlexSizedBox(
                              width: null,
                              height: 24.0,
                              child: Text(
                                'Daily Target',
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            )
                          ],
                        ),
                      ),
                      FlexSizedBox(
                        width: null,
                        height: null,
                        child: Text(
                          WaterState.of(context).dailyGoal!.toString() + ' ml',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          FlexSizedBox(
            width: double.infinity,
            height: null,
            child: Material(
              color: Theme.of(context).colorScheme.onPrimary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
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
                  spacing: 105.17622375488281,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlexSizedBox(
                      width: null,
                      height: 24.0,
                      child: NFlex(
                        direction: Axis.horizontal,
                        spacing: 6.0,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FlexSizedBox(
                            width: null,
                            height: null,
                            child: Icon(
                              const IconData(58447, fontFamily: 'MaterialIcons'),
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                          ),
                          FlexSizedBox(
                            width: null,
                            height: 24.0,
                            child: Text(
                              'Reminders',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          )
                        ],
                      ),
                    ),
                    FlexSizedBox(
                      width: null,
                      height: null,
                      child: Text(
                        'every 2 hours',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const FlexSizedBox(
            width: null,
            height: null,
            child: Divider(
              color: Color(0xffc4c4c4),
              thickness: 1.0,
            ),
          ),
          const FlexSizedBox(
            width: 157.0,
            height: null,
            child: Image(
              image: AssetImage('assets/logo-nowa 1.png'),
              fit: BoxFit.cover,
            ),
          ),
          FlexSizedBox(
            width: double.infinity,
            height: null,
            child: Material(
              color: Theme.of(context).colorScheme.onPrimary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
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
                  spacing: 105.17622375488281,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FlexSizedBox(
                      width: null,
                      height: null,
                      child: Text(
                        'This app was built with Nowa',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                    FlexSizedBox(
                      width: null,
                      height: null,
                      child: Text(
                        'We are a group of passionate engineers, developers and designers who want to save the world from low-quality, ugly and complicated softwares.',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          FlexSizedBox(
            width: double.infinity,
            height: null,
            child: Material(
              color: Theme.of(context).colorScheme.onPrimary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
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
                  spacing: 105.17622375488281,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlexSizedBox(
                      width: null,
                      height: 24.0,
                      child: NFlex(
                        direction: Axis.horizontal,
                        spacing: 6.0,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const FlexSizedBox(
                            width: null,
                            height: null,
                            child: Image(
                              image: AssetImage('assets/mini-logo-front (1).png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          FlexSizedBox(
                            width: null,
                            height: 24.0,
                            child: Text(
                              'Try Nowa →',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          )
                        ],
                      ),
                    ),
                    FlexSizedBox(
                      width: null,
                      height: null,
                      child: Text(
                        'www.nowa.dev',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          FlexSizedBox(
            width: double.infinity,
            height: null,
            child: Material(
              color: Theme.of(context).colorScheme.onPrimary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
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
                  spacing: 105.17622375488281,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlexSizedBox(
                      width: null,
                      height: 24.0,
                      child: NFlex(
                        direction: Axis.horizontal,
                        spacing: 6.0,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const FlexSizedBox(
                            width: null,
                            height: null,
                            child: Image(
                              image: AssetImage('assets/discord-icon-svgrepo-com.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          FlexSizedBox(
                            width: null,
                            height: 24.0,
                            child: Text(
                              'Join our Community',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          )
                        ],
                      ),
                    ),
                    FlexSizedBox(
                      width: null,
                      height: null,
                      child: Text(
                        'discord',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
