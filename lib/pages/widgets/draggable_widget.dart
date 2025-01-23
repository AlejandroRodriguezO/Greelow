import 'package:flutter/material.dart';
import 'package:prueba/config/extensions.dart';

import '../../config/app_colors.dart';

class DraggableWidget extends StatelessWidget {
  const DraggableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      shouldCloseOnMinExtent: false,
      initialChildSize: .67,
      minChildSize: .67,
      builder: (context, controller) {
        return Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                AppColors.grayColor1,
                AppColors.grayColor2,
              ],
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 21,
              ),
              child: CustomScrollView(
                controller: controller,
                slivers: [
                  const Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 20, left: 24),
                    child: _BuildTitle(),
                  ).asSliverToBoxAdapter,
                  const _BuildBtnNew().asSliverToBoxAdapter,
                  SliverList.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) => ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        child: Text(index.toString()),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      title: Text(
                        'Nombre: $index',
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }
}

class _BuildTitle extends StatelessWidget {
  const _BuildTitle();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Contactos',
      style: TextStyle(
        fontSize: 24,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _BuildBtnNew extends StatelessWidget {
  const _BuildBtnNew();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TextButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.add,
          color: AppColors.orangeColor,
        ),
        label: const Text(
          'Nuevo',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.orangeColor,
          ),
        ),
      ),
    );
  }
}
