import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:water_tracker/globals/water_state.dart';

@NowaGenerated({'auto-width': 350, 'auto-height': 238})
class Setdailytarget extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Setdailytarget({super.key});

  @override
  State<Setdailytarget> createState() {
    return _SetdailytargetState();
  }
}

@NowaGenerated()
class _SetdailytargetState extends State<Setdailytarget> {
  TextEditingController? textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Set Daily Goal:',
        style: Theme.of(context).textTheme.labelLarge,
      ),
      content: TextFormField(
        decoration: InputDecoration(
          labelText: 'Your Goal',
          labelStyle: Theme.of(context).textTheme.labelMedium,
          filled: true,
          fillColor: Theme.of(context).colorScheme.onPrimary,
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Color(0x00000000))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0), borderSide: BorderSide(width: 2.0, color: Theme.of(context).colorScheme.tertiary)),
          prefixIcon: Icon(
            const IconData(983624, fontFamily: 'MaterialIcons'),
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        style: Theme.of(context).textTheme.labelMedium,
        controller: textFieldController,
      ),
      actions: [
        CustomButton(
          onPressed: () {
            try {
              final dailyGoalParsed = double.parse(textFieldController!.text);
              WaterState.of(context, listen: false).setDailyGoal(dailyGoalParam: dailyGoalParsed.round());
              Navigator.of(context).pop();
            } catch (error) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text(
                  'The value is invalid',
                ),
              ));
            }
          },
          color: Theme.of(context).colorScheme.onPrimary,
          child: const Text(
            'Confirm',
            style: TextStyle(),
          ),
        )
      ],
    );
  }
}
