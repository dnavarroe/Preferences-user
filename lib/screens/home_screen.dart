import 'package:flutter/material.dart';
import 'package:preferenc_user/share_preferences/preferences.dart';
import 'package:preferenc_user/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  static const String routerName = 'home';
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Home'),),
      ),
      drawer: const CustomDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarkMode: ${Preferences.isDarkMode}'),
          const Divider(),
          Text('Gnero: ${Preferences.gender}'),
          const Divider(),
          Text('Nombre de Usuario: ${Preferences.name}'),
          const Divider()
        ],
      )
    );
  }
}