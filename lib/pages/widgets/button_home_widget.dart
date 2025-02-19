import 'package:flutter/material.dart';
import 'package:prueba/config/app_colors.dart';

class ButtonHomeWidget extends StatelessWidget {
  const ButtonHomeWidget({super.key, required this.label, required this.icon});

  final String label;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.grayColor1,
            AppColors.grayColor2,
          ],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon),
          Text(
            label,
            style: TextStyle(
              color: AppColors.whiteColor.withValues(alpha: .8),
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
