import 'package:flutter/material.dart';

import 'button_home_widget.dart';

class ItemsBodyWidget extends StatelessWidget {
  const ItemsBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: ButtonHomeWidget(
                label: 'Transferir',
                icon: 'assets/move-money.png',
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: ButtonHomeWidget(
                label: 'Pagar',
                icon: 'assets/cash-payment.png',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
              child: ButtonHomeWidget(
                label: 'Retirar',
                icon: 'assets/cash-out-white.png',
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: ButtonHomeWidget(
                label: 'Depositar',
                icon: 'assets/cash-in-white.png',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
