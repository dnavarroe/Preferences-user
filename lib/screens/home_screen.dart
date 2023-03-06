import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:preferenc_user/share_preferences/preferences.dart';


class HomeScreen extends StatelessWidget {

  static const String routerName = 'home';
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            //ZoomDrawer.of(context)!.toggle();
            //if(ZoomDrawer.of(context)!.isOpen()){
            //  ZoomDrawer.of(context)!.close();
            //}else{
            //  ZoomDrawer.of(context)!.open();
            //}
            WidgetsBinding.instance.addPostFrameCallback((_) {
            final drawer = ZoomDrawer.of(context);
            if (drawer != null) {
              drawer.toggle();
            }else{
              Navigator.pushNamed(context, 'DrawerZ');
            }
          });
          },
        ),
      ),
      //drawer: const Borrador(),
      //drawer: const CustomDrawer(),
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