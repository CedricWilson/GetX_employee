import 'package:get/get.dart';
import 'package:test_getx/Utils/employee_model.dart';
import 'package:test_getx/Utils/network.dart';

class EmployeeController extends GetxController {
  var list = <Employee>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchEmployee();
  }

  fetchEmployee() async {
    isLoading.value = true;
    list.value = (await Network().getEmployeeList())!;
    isLoading.value = false;
  }

  removeVal(int i) {
    list.removeAt(i);
  }

  replaceImage() {
    list[1].avatar = list[3].avatar;
    list.refresh();
  }
}
