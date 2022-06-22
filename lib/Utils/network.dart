import 'dart:convert';

import 'package:test_getx/Utils/employee_model.dart';

import 'package:http/http.dart' as http;

class Network {
  Future<List<Employee>?> getEmployeeList() async {
    var response = await http.get(Uri.parse('https://reqres.in/api/users?per_page=12'));
    print("Api");
    EmployeeModel emp = EmployeeModel.fromJson(json.decode(response.body));
    return emp.data;
  }
}
