import 'package:flutter/material.dart';
import 'package:ovo_clone/core.dart';
import 'package:ovo_clone/module/top_up/widget/card_item.dart';
import 'package:ovo_clone/module/top_up/widget/card_item_new.dart';
import 'package:ovo_clone/shared/theme/theme_config.dart';
import '../controller/top_up_controller.dart';

class TopUpView extends StatefulWidget {
  const TopUpView({Key? key}) : super(key: key);

  Widget build(context, TopUpController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Top Up",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Saldo OVO Cash: ",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "Rp10.000",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                "Max OVO Cash Rp20.000.000 (Premier)",
                style: TextStyle(fontSize: 12.0, color: secondaryTextColor),
              ),
              const SizedBox(
                height: 12.0,
              ),
            ],
          ),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(12.0),
          color: bgGrey,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose Method",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              CardItemNew(
                icon:
                    "https://cdn-icons-png.flaticon.com/128/11272/11272927.png",
                name: "Alfamart",
              ),
              CardItem(
                  icon:
                      "https://cdn-icons-png.flaticon.com/128/3225/3225183.png",
                  name: "Indomaret"),
              CardItem(
                  icon:
                      "https://cdn-icons-png.flaticon.com/128/4773/4773690.png",
                  name: "Mobile Banking"),
              CardItem(
                icon:
                    "https://cdn-icons-png.flaticon.com/128/11272/11272927.png",
                name: "Alfamart",
              ),
              CardItem(
                  icon:
                      "https://cdn-icons-png.flaticon.com/128/3225/3225183.png",
                  name: "Indomaret"),
              CardItem(
                  icon:
                      "https://cdn-icons-png.flaticon.com/128/4773/4773690.png",
                  name: "Mobile Banking")
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TopUpView> createState() => TopUpController();
}
