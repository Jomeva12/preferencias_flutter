import 'package:flutter/material.dart';
import 'package:preferencias_flutter/preferencias/preferencias.dart';
import 'package:preferencias_flutter/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
    static final String routeName = "home";

  const HomeScreen({super.key});
    @override
    Widget build(BuildContext context) {
        return  Scaffold(
            appBar: AppBar(
                title: Text("Home"),
                backgroundColor: Colors.blue,
            ),
            drawer:const SideMenu(),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Text("Nombre; ${Preferencias.name}"),
                    Divider(),
                    Text("Género; ${Preferencias.gender}"),
                    Text("DarkMode; ${Preferencias.isDarkmode}"),
                ],
            ),

        );
    }
}
