import 'package:flutter/material.dart';
import 'package:imc_calculator_app/core/app_colors.dart';
import 'package:imc_calculator_app/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final double selectedHeight;
  final Function(double) onHeightChange;

  const HeightSelector(
      {super.key, required this.selectedHeight, required this.onHeightChange});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
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
              "${widget.selectedHeight.toStringAsFixed(0)} cm",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold),
            ),
            Slider(
                value: widget.selectedHeight,
                onChanged: (newHeight) {
                  widget.onHeightChange(newHeight);
                },
                min: 140,
                max: 220,
                divisions: 80,
                label: "${widget.selectedHeight.toStringAsFixed(0)} cm",
                activeColor: AppColors.primary)
          ],
        ),
      ),
    );
  }
}
