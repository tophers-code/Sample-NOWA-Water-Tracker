import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:water_tracker/globals/water_state.dart';

@NowaGenerated({'auto-width': 155, 'auto-height': 100})
class Addwaterbutton extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Addwaterbutton({this.param1 = 'https://i.ibb.co/6ZyDXjZ/glassss.png', this.cardAmount = 0, super.key});

  final String param1;

  final int? cardAmount;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        WaterState.of(context, listen: false).addWaterLog(amount: cardAmount);
      },
      child: Material(
        color: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.0)),
        elevation: 3.0,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 16.0,
            bottom: 16.0,
          ),
          child: NFlex(
            direction: Axis.vertical,
            spacing: 10.0,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlexSizedBox(
                width: 32.0,
                height: 32.0,
                child: Image(
                  image: NetworkImage(param1),
                  fit: BoxFit.cover,
                ),
              ),
              FlexSizedBox(
                width: null,
                height: null,
                child: Text(
                  cardAmount!.toString() + ' ml',
                  style: TextStyle(color: Theme.of(context).colorScheme.onPrimary, fontSize: 18.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
