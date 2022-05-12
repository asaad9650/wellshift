import 'package:get/get.dart';
import 'package:wellshift/screens/delay_check_in.dart';
import 'package:wellshift/screens/lets_get_started.dart';
import 'package:wellshift/screens/progress_page.dart';
import 'package:wellshift/screens/recovery_code.dart';
import 'package:wellshift/screens/recover_password.dart';
import 'package:wellshift/screens/reset_password.dart';

class Routes {
  static final routes = [
    GetPage(name: '/', page: () => ProgressPage()),
    GetPage(name: '/recover_password', page: () => RecoverPassword()),
    GetPage(name: '/recovery_code', page: () => RecoveryCode()),
    GetPage(name: '/reset_password', page: () => ResetPassowrd()),
    GetPage(name: '/delay_check_in', page: () => DelayCheckIn()),
    GetPage(name: '/lets_get_started', page: () => LetsGetStarted()),
  ];
}
