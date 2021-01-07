import 'package:flutter/material.dart';
import 'package:getx_state_management/my_controller.dart';
import 'package:get/get.dart';

class ChangeLanguage extends StatelessWidget {

  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Language"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Choose your preferred Language"),
                SizedBox(height: 10,),
                FlatButton(
                    disabledColor: Colors.blue,
                    color: Colors.blue,
                    minWidth: double.infinity,
                    onPressed: () {
                      myController.changeLanguage('en', 'US');
                    },
                    child: Text("English")),
                SizedBox(height: 10,),
                FlatButton(
                  disabledColor: Colors.blue,
                   color: Colors.brown,
                    minWidth: double.infinity,
                    onPressed: () {
                      myController.changeLanguage('hi', 'IN');
                    },
                    child: Text("Hindi")
                ),
                FlatButton(
                    disabledColor: Colors.blue,
                    color: Colors.brown,
                    minWidth: double.infinity,
                    onPressed: () {
                      myController.changeLanguage('ar', 'SA');
                    },
                    child: Text("Arabic")
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
