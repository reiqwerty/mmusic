import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import '../controller/dashboard_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}