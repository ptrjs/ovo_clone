import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ovo_clone/core.dart';
import 'package:ovo_clone/module/home/widget/carousel_basic.dart';
import 'package:ovo_clone/module/home/widget/carousel_indicator.dart';
import 'package:ovo_clone/module/home/widget/category_picker.dart';
import 'package:ovo_clone/module/home/widget/menu_favorite.dart';
import 'package:ovo_clone/module/home/widget/menu_image.dart';
import 'package:ovo_clone/shared/theme/theme_config.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  int? selectedCategory;

  @override
  State<HomeView> createState() => HomeController();

  Widget build(context, HomeController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "OVO",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 14, 18, 10),
            child: Container(
              decoration: BoxDecoration(
                color: secondaryBgColor,
                borderRadius: BorderRadius.circular(
                    16), // Atur nilai sesuai keinginan Anda
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(
                      Icons.price_change,
                      size: 18.0,
                      color: primaryColor,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Promo",
                      style: TextStyle(
                        fontSize: 12.0,
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
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 350,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                      ),
                    ),
                    //ini buat bikin rounded container yang bagian atas
                    Positioned(
                      top: 90,
                      child: Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                      ),
                    ),
                    //container untuk mengisi listvew dan fitur menu
                    Positioned(
                      top: 220,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CategoryPicker(
                              items: const [
                                {
                                  "label": "Favorite",
                                  "value": "Favorite",
                                },
                                {
                                  "label": "Others",
                                  "value": "Others",
                                },
                                {
                                  "label": "Grab",
                                  "value": "Grab",
                                },
                                {
                                  "label": "Financial",
                                  "value": "Financial",
                                },
                              ],
                              onItemSelected: (index, label, value, item) {
                                HomeController.instance.updateIndex(index);
                              },
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            IndexedStack(
                              index: controller.selectedIndex,
                              children: const [
                                MenuFavorite(),
                                MenuImage(),
                                MenuFavorite(),
                                MenuImage(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    //container ovo cash
                    Positioned(
                      left: 20,
                      right: 20,
                      top: 20,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [primaryColor, secondaryColor],
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "OVO Cash",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Total Balance",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      MdiIcons.eyeLock,
                                      size: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Rp",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  const Text(
                                    "10.000",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 36,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12.0),
                                      ),
                                      color: Colors.white,
                                    ),
                                    padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.money,
                                          size: 16.0,
                                          color: primaryColor,
                                        ),
                                        const SizedBox(
                                          width: 4.0,
                                        ),
                                        Text(
                                          "500",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 4.0,
                                        ),
                                        Text(
                                          "Points",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 4.0,
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.chevron_right,
                                            size: 12.0,
                                            color: primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        IconButton(
                                          onPressed: () => Get.to(const TopUpView()),
                                          icon: const Icon(
                                            Icons.add_box,
                                            size: 24.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Text(
                                          "Top Up",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        IconButton(
                                          onPressed: () =>
                                              Get.to(const TransferView()),
                                          icon: Icon(
                                            MdiIcons.transfer,
                                            size: 24.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Text(
                                          "Transfer",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.call_received,
                                            size: 24.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Text(
                                          "Withdraw",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.history,
                                            size: 24.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Text(
                                          "History",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              // container gambar carousel
              Container(
                height: 160,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: CarouselIndicator(),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 12.0,
              ),
              // container gambar carousel
              Container(
                height: 280,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Recommendation Choice",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: CarouselBasic(),
                    ),
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
