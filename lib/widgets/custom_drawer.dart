import 'package:flutter/material.dart';
import 'package:preferenc_user/screens/screens.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [


          const _DrawerHeader(),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: (() {
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
            }),
          ),
          ListTile(
            leading: const Icon(Icons.person_outline_sharp),
            title: const Text('People'),
            onTap: (() {
              
            }),
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            onTap: (() {
              Navigator.pushReplacementNamed(context, SettingsScreen.routerName);
            }),
          ),

        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/wano.jpg'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}