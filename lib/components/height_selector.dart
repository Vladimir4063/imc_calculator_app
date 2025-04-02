import 'package:flutter/material.dart';
import 'package:imc_calculator_app/core/app_colors.dart';
import 'package:imc_calculator_app/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final double value;
  final Function() onIncrement;
  final Function() onDecrement;

  const HeightSelector({super.key, required this.value, required this.onDecrement, required this.onIncrement});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double height = 170; // Altura inicial

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 0, bottom: 0, right: 16),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.backgroundComponent,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "ALTURA",
                style: TextStyles.bodyText,
              ),
            ),
            Text(
              "${height.toStringAsFixed(0)} cm",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold),
            ),
            Slider(
                value: height,
                onChanged: (newHeight) {
                  setState(() {
                    height = newHeight;
                  });
                },
                min: 140,
                max: 220,
                divisions: 80,
                label: "${height.toStringAsFixed(0)} cm",
                activeColor: AppColors.primary)
          ],
        ),
      ),
    );
  }
}
