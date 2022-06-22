import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx/Utils/employee_model.dart';

class SecondPage extends StatelessWidget {
  final Employee employee;
  SecondPage({Key? key,required this.employee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(child: Text("SecondPage")),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_image(), _row()],
      ),
    );
  }

  _row() {
    return Column(
      children: [
        Text(
          employee.firstName!,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          employee.lastName!,
          style: TextStyle(fontSize: 25),
        ),
      ],
    ).paddingOnly(top: 15);
  }

  Image _image() {
    return Image.network(
      employee.avatar!,
      fit: BoxFit.cover,
      width: 300,
      height: 300,
    );
  }
}
