import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 398, 'auto-height': 290})
class Setreminders extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Setreminders({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Set Reminders:',
        style: Theme.of(context).textTheme.labelLarge,
      ),
      content: DropdownButtonFormField<String>(
        items: [
          const DropdownMenuItem<String>(
            value: 'first',
            child: Text(
              'first',
            ),
          )
        ],
        value: 'first',
        onChanged: (value) {},
        borderRadius: BorderRadius.circular(18.0),
        decoration: InputDecoration(
          prefixIcon: Icon(
            const IconData(58447, fontFamily: 'MaterialIcons'),
            color: Theme.of(context).colorScheme.tertiary,
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      actions: [
        CustomButton(
          onPressed: () {},
          color: Theme.of(context).colorScheme.onPrimary,
          child: Text(
            'Confirm',
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          ),
        )
      ],
    );
  }
}
