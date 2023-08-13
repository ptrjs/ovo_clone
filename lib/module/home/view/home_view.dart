import 'package:flutter/material.dart';
import 'package:ovo_clone/core.dart';
import 'package:ovo_clone/shared/theme/theme_config.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

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
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 18, 10),
            child: Container(
              decoration: BoxDecoration(
                color: secondaryBgColor,
                borderRadius: BorderRadius.circular(
                    16), // Atur nilai sesuai keinginan Anda
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.price_change,
                      size: 22.0,
                      color: primaryColor,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Promo",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
