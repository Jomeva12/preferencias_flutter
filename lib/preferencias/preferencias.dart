

import 'package:shared_preferences/shared_preferences.dart';






class Preferencias{
 static late final SharedPreferences _prefs;
  static String _name="";
  static bool _isDarkmode=false;
  static int _gender=1;
  static Future init() async{
    _prefs=await SharedPreferences.getInstance();
    return _prefs;
}

static String get name{
    return _prefs.getString("name")?? _name;
}
 static bool get isDarkmode{
   return _prefs.getBool("isDarkmode") ?? _isDarkmode;
 }

 static int get gender{
   return _prefs.getInt("gender")?? _gender;
 }

 static set gender(int gender) {
   _gender=gender;
   _prefs.setInt("gender",gender);
  }

  static set isDarkmode(bool isDarkmode) {
    _isDarkmode=isDarkmode;
    _prefs.setBool("isDarkmode",isDarkmode);
  }
 static set name(String name) {
   _name=name;
   _prefs.setString("name",name);
 }


}