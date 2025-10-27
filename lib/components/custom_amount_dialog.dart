import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:water_tracker/components/sliderwater.dart';
import 'package:water_tracker/globals/water_state.dart';

@NowaGenerated({'auto-width': 347.0, 'auto-height': 282.0})
class CustomAmountDialog extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const CustomAmountDialog({super.key});

  @override
  State<CustomAmountDialog> createState() {
    return _CustomAmountDialogState();
  }
}

@NowaGenerated()
class _CustomAmountDialogState extends State<CustomAmountDialog> {
  int? amount = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'How much did you drink?',
        style: Theme.of(context).textTheme.labelLarge,
      ),
      content: Sliderwater(
        amountParam: amount,
        onChangeCallback: (p0) {
          amount = p0.round();
          setState(() {});
        },
      ),
      actions: [
        CustomButton(
          onPressed: () {
            WaterState.of(context, listen: false).addWaterLog(amount: amount);
            Navigator.of(context).pop();
          },
          color: Theme.of(context).colorScheme.onPrimary,
          child: Text(
            'Confirm',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        )
      ],
    );
  }
}
