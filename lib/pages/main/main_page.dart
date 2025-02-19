import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../config/app_colors.dart';
import '../../config/routes.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => context.pushNamed(Routes.profile.name),
            child: const CircleAvatar(
              child: Text('JD'),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
            onPressed: () => context.pushNamed(Routes.notification.name),
          ),
          IconButton(
            icon: const Icon(
              Icons.message_outlined,
              color: AppColors.orangeColor,
            ),
            onPressed: () => showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 200,
                  color: Colors.amber,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text('Modal BottomSheet'),
                        ElevatedButton(
                          child: const Text('Close BottomSheet'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
        centerTitle: false,
        title: const Text(
          'John Doe',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        currentIndex: navigationShell.currentIndex,
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Mover Dinero', icon: Icon(Icons.attach_money_rounded)),
          BottomNavigationBarItem(
              label: 'Tarjetas', icon: Icon(Icons.credit_card)),
          BottomNavigationBarItem(
              label: 'Para ti', icon: Icon(Icons.account_box_outlined)),
        ],
        onTap: navigationShell.goBranch,
      ),
    );
  }
}
