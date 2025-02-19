import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Center(
              child: ClipOval(
                child: CircleAvatar(
                  radius: 50,
                  child: Image.network(
                      'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),
                ),
              ),
            ),
          ),
          const CupertinoListTile(
            leading: Icon(
              Icons.person_2_outlined,
              color: Colors.white,
            ),
            title: Text(
              'John Doe',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const CupertinoListTile(
            leading: Icon(
              Icons.work_outline,
              color: Colors.white,
            ),
            title: Text(
              'Software Engineer',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const CupertinoListTile(
            leading: Icon(
              Icons.pin_drop_outlined,
              color: Colors.white,
            ),
            title: Text(
              'Location: New York, USA',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const CupertinoListTile(
            leading: Icon(
              Icons.email_outlined,
              color: Colors.white,
            ),
            title: Text(
              'Email: johndoe@example.com',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const CupertinoListTile(
            leading: Icon(
              Icons.power_settings_new_sharp,
              color: Colors.red,
            ),
            title: Text(
              'Cerrar sesión',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
