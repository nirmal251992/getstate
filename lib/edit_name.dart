import 'package:getx_state_management/restaurant_controller.dart';
import 'rounded_input.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';
class EditName extends StatelessWidget {

  final restoController  = RestaurantController.to;

  @override
  Widget build(BuildContext context) {
    print("EditName screen building...");
    return Scaffold(
      appBar: AppBar(title: Text("Test Name Edit")),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Obx(() => Text(
              restoController.name.value,
              style: TextStyle(fontSize: 48),
            ),),
            SizedBox(height: 16),
            RoundedInput(
              hintText: "Restauarant Name",
              onSubmit: (value) => restoController.setName(value),
            )
          ],
        ),
      ),
    );
  }
}
