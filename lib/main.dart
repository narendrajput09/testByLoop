

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:textbyloop/app/routes/app_pages.dart';
import 'package:textbyloop/app/routes/app_routes.dart';
import 'package:textbyloop/l10n/localization.dart';




Future<void> main() async {
 // WidgetsFlutterBinding.ensureInitialized();
 //  await Firebase.initializeApp(
 //    options: DefaultFirebaseOptions.currentPlatform,
 //  );





 // var authToken = await AppPreference().get(AppPreference.KEY_REGISTER_TOKEN);
  var authToken = "dfhksjhfdsghfyis";
  var initialRoute = AppRoutes.loginScreen;


  if (authToken != null && authToken.isNotEmpty) {
    initialRoute = AppRoutes.loginScreen;
  } else {
    initialRoute = AppRoutes.loginScreen;
  }
  runApp(MyApp(
    initialRoute: initialRoute,
  ));
  FlutterNativeSplash.remove();

}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.initialRoute,
  }) : super(key: key);

  final String initialRoute;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'homecarecustomer',
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      getPages: AppPages.routes,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
    );
  }
}