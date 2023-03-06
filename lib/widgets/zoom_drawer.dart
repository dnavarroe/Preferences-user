import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:preferenc_user/screens/screens.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: const Center(child: Text('Titulo')),
      //),
      body: ZoomDrawer(
        controller: drawerController,
        menuScreen: const MenuScreen(), 
        mainScreen: const HomeScreen(),
        borderRadius: 20,
        showShadow: true,
        angle: -2.0,
        slideWidth: MediaQuery.of(context).size.width * 0.6,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
        androidCloseOnBackTap: true,
        mainScreenTapClose: true,
      ),
    );
  }
}