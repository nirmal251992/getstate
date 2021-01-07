import 'package:get/get.dart';

class RestaurantController extends GetxController {
  final name = 'Pizza Snack'.obs;
  final followerCount = 0.obs;
  final isOpen = true.obs;
  final followerList = [].obs;
  final reviews = <String,String>{}.obs;


 static RestaurantController get to =>  Get.find<RestaurantController>();

  @override
  void onInit() {
    super.onInit();
  }
  setName(String restoName) {
    name(restoName);
  }
}