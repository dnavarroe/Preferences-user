import 'package:flutter/material.dart';
import 'package:preferenc_user/screens/screens.dart';

class MenuScreen extends StatelessWidget {
   
  const MenuScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            DrawerHeader(
            child: Column(
              children: const [
                CircleAvatar( backgroundImage: AssetImage('assets/wano.jpg'),
                maxRadius: 40,),
                SizedBox(height: 5,),
                Text('Menu Options')
              ],
            ),
    ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: (){
                Navigator.pushReplacementNamed(context, HomeScreen.routerName);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
              onTap: (){
                Navigator.pushReplacementNamed(context, SettingsScreen.routerName);
              },
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}