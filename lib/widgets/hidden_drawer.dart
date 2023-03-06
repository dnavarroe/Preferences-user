import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:preferenc_user/screens/screens.dart';


class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List<ScreenHiddenDrawer> items =  [];

  @override
  void initState() {
    items.add(ScreenHiddenDrawer(
      ItemHiddenMenu(
        name: "Home",
        baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
        colorLineSelected: Colors.teal, 
        selectedStyle: const TextStyle(),
      ),
      const HomeScreen()));

    items.add(ScreenHiddenDrawer(
      ItemHiddenMenu(
        name: "Settings",
        baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
        colorLineSelected: Colors.orange, 
        selectedStyle: const TextStyle(),
        ),
        const SettingsScreen()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.blueGrey,
      screens: items,
        //    typeOpen: TypeOpen.FROM_RIGHT,
        //    disableAppBarDefault: false,
        //    enableScaleAnimation: true,
        //    enableCornerAnimation: false,
      slidePercent: 50.0,
      verticalScalePercent: 83.0,
      contentCornerRadius: 20.0,
        //    iconMenuAppBar: Icon(Icons.menu),
        //    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
        //    whithAutoTittleName: true,
        //    styleAutoTittleName: TextStyle(color: Colors.red),
        //    actionsAppBar: <Widget>[],
        //    backgroundColorContent: Colors.blue,
        //    elevationAppBar: 4.0,
        //    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
        //    enableShadowItensMenu: true,
        //    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
    );
  }
}
