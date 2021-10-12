import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

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
      child: context.isPhone
          ? Column(
              children: [_image(), _row()],
            )
          : Row(
              children: [_image(), _row()],
            ),
    );
  }

  Row _row() {
    return Row(
      children: [
        Text(Get.arguments[1]),
        SizedBox(
          width: 10,
        ),
        Text(Get.arguments[2]),
      ],
    );
  }

  Image _image() {
    return Image(
      width: 100,
      height: 100,
      image: NetworkImage(Get.arguments[0]),
    );
  }
}
