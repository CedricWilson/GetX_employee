import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx/UI/Home/controller.dart';
import 'package:test_getx/UI/Second/second.dart';
import 'package:test_getx/Utils/employee_model.dart';
import 'package:test_getx/Utils/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final x = Get.put(EmployeeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
            onTap: () {
              // x.replaceImage();
              x.removeVal(2);
            },
            child: Text("GetX")),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      child: Obx(() {
        print("Rebuild");
        return !x.isLoading.value
            ? ListView.builder(
                itemCount: x.list.length,
                itemBuilder: (BuildContext context, int index) {
                  return _repeater(x.list[index]);
                },
              )
            : Center(child: CircularProgressIndicator());
      }),
    );
  }

  _repeater(Employee employee) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.second, arguments: [
          employee.avatar,
          employee.firstName,
          employee.lastName
        ]);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                width: 100,
                height: 100,
                image: NetworkImage("${employee.avatar}"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${employee.firstName} ${employee.lastName}"),
                    Text(employee.email!),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
