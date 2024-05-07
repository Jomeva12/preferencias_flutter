import 'package:flutter/material.dart';
import 'package:preferencias_flutter/screen/screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _MenuDrawer(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              //es como el finish
              //Navigator.pop(context);
             // Navigator.pushNamed(context, SettingScreen.routeName);
              Navigator.pushReplacementNamed(context, SettingScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              //es como el finish
              //Navigator.pop(context);
              // Navigator.pushNamed(context, SettingScreen.routeName);
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}

class _MenuDrawer extends StatelessWidget {
  const _MenuDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(

      child: Container(),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/menu-img.jpg"),
            fit: BoxFit.cover
        ),
      ),
    );
  }
}
