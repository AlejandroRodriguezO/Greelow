import 'package:flutter/material.dart';

import '../config/app_colors.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/draggable_widget.dart';
import 'widgets/items_body_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(horizontal: 24);

    return const Scaffold(
      appBar: AppBarWidget(),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: padding,
                child: Text(
                  'Mover dinero',
                  style: TextStyle(
                    fontSize: 24,
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Padding(
                padding: padding,
                child: ItemsBodyWidget(),
              ),
            ],
          ),
          DraggableWidget(),
        ],
      ),
    );
  }
}
