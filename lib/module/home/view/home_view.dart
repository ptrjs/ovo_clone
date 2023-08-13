import 'package:flutter/material.dart';
import 'package:ovo_clone/core.dart';
import 'package:ovo_clone/shared/theme/theme_config.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "OVO",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.discount,
                size: 24.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Text(
                  "text",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
