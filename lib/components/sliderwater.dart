import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 219, 'auto-height': 86})
class Sliderwater extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Sliderwater({this.amountParam = 0, this.onChangeCallback, super.key});

  final int? amountParam;

  final Function(double)? onChangeCallback;

  @override
  Widget build(BuildContext context) {
    return NFlex(
      direction: Axis.vertical,
      spacing: 6.0,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FlexSizedBox(
          width: null,
          height: null,
          child: Text(
            amountParam!.toString() + ' ml',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w800),
          ),
        ),
        FlexSizedBox(
          width: 219.0,
          height: 40.0,
          child: NSlider(
            value: amountParam!.toDouble(),
            onChanged: onChangeCallback,
            activeColor: Theme.of(context).colorScheme.primary,
            min: 0.0,
            max: 1000.0,
            inactiveColor: Theme.of(context).colorScheme.primary,
          ),
        )
      ],
    );
  }
}
