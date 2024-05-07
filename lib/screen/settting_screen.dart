import 'package:flutter/material.dart';
import 'package:preferencias_flutter/preferencias/preferencias.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);
  static final String routeName = "setting";

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  /* bool isDarkMode = false;
  int gender = 0;
  String name = "pedro";*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text("Ajustes"),
            Divider(),
            SwitchListTile.adaptive(
                value: Preferencias.isDarkmode,
                title: Text("isDarkMode; ${Preferencias.isDarkmode}"),
                onChanged: (value) {
                  Preferencias.isDarkmode = value;
                  if (value) {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .setDarkmode();
                  } else {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .setLighmode();
                  }

                  setState(() {});
                }),
            Divider(),
            RadioListTile<int>(
                value: 1,
                groupValue: Preferencias.gender,
                title: Text("Masculino"),
                onChanged: (value) {
                  Preferencias.gender = value ?? 1;
                  setState(() {});
                }),
            RadioListTile<int>(
                value: 2,
                groupValue: Preferencias.gender,
                title: Text("Femenino"),
                onChanged: (value) {
                  Preferencias.gender = value ?? 2;
                  setState(() {});
                }),
            Divider(),
            TextFormField(
              initialValue: Preferencias.name,
              decoration: InputDecoration(
                  label: Text("Usuario"), helperText: "texto de ayuda"),
              onChanged: (value)
                  {Preferencias.name = value; setState(() {});},
            )
          ],
        ),
      ),
    );
  }
}
