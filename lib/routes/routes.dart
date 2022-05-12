import 'package:get/get.dart';
import 'package:wellshift/screens/customer_service.dart';
import 'package:wellshift/screens/delay_check_in.dart';
import 'package:wellshift/screens/lets_get_started.dart';
import 'package:wellshift/screens/progress_page.dart';
import 'package:wellshift/screens/recovery_code.dart';
import 'package:wellshift/screens/recover_password.dart';
import 'package:wellshift/screens/reset_password.dart';

class Routes {
  static final routes = [
    GetPage(name: '/', page: () => const ProgressPage()),
    GetPage(name: '/recover_password', page: () => const RecoverPassword()),
    GetPage(name: '/recovery_code', page: () => const RecoveryCode()),
    GetPage(name: '/reset_password', page: () => const ResetPassowrd()),
    GetPage(name: '/delay_check_in', page: () => const DelayCheckIn()),
    GetPage(name: '/lets_get_started', page: () => const LetsGetStarted()),
    GetPage(name: '/customer_service', page: () => const CustomerService()),
  ];
}
