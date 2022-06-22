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
    var list1 = (await Network().getEmployeeList())!;
    // list1.add(list1[0]);
    // list1.add(list1[0]);list1.add(list1[0]);list1.add(list1[0]);list1.add(list1[0]);list1.add(list1[0]);
    list.value = list1;
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
