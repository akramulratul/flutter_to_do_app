import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/services/theme_services.dart';
import 'package:flutter_to_do_app/ui/pages/home_page.dart';
import 'package:flutter_to_do_app/ui/theme.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'db/db_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: HomePage(),
    );
  }
}
