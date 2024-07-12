
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:textbyloop/app/modules/login_screen/binding/login_screen_binding.dart';
import 'package:textbyloop/app/modules/login_screen/view/login_screen.dart';
import 'package:textbyloop/app/routes/app_routes.dart';


class AppPages {
  static final routes = [
    GetPage(
        name: AppRoutes.loginScreen,
        page: () => LoginScreen(),
        binding: LoginScreenBinding()),

  ];
}