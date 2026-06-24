import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/features/authentication/screens/onboarding/onboarding.dart';


class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();

  /// Called from main.dart on app launch
  @override
  void onReady() {
    // Remove the native splash screen
    FlutterNativeSplash.remove();
    // Redirect to the appropriate screen
    screenRedirect();
  }

  /// Function to Show Relevant Screen
  screenRedirect() async {
    /// Local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    // Check if it's the first time lauching the app
    deviceStorage.read('IsFirstTime') != true 
    ? Get.offAll(() => const LoginScreen()) // Redirect to login screen if not the first time
    : Get.offAll(const OnBoardingScreen()); // Redirect to OnBoarding Screen if it's the first time
  }
}