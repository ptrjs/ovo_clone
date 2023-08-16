import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ovo_clone/core.dart';
import 'package:ovo_clone/module/home/widget/carousel_indicator.dart';
import 'package:ovo_clone/module/home/widget/category_picker.dart';
import 'package:ovo_clone/module/home/widget/menu_favorite.dart';
import 'package:ovo_clone/module/home/widget/menu_image.dart';
import 'package:ovo_clone/shared/theme/theme_config.dart';
import '../controller/home_controller.dart';

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
            padding: EdgeInsets.fromLTRB(0, 14, 18, 10),
            child: Container(
              decoration: BoxDecoration(
                color: secondaryBgColor,
                borderRadius: BorderRadius.circular(
                    16), // Atur nilai sesuai keinginan Anda
              ),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(
                      Icons.price_change,
                      size: 18.0,
                      color: primaryColor,
                    ),
                    SizedBox(
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
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 250,
                decoration: BoxDecoration(
                  color: Colors.yellow,
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
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                      ),
                    ),
                    //container untuk mengisi listvew dan fitur menu
                    Positioned(
                      top: 200,
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CategoryPicker(
                              items: [
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
                              children: [
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
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "OVO Cash",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
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
                                  Text(
                                    "Rp",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    "10.000",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 36,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12.0),
                                      ),
                                      color: Colors.white,
                                    ),
                                    padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.money,
                                          size: 16.0,
                                          color: primaryColor,
                                        ),
                                        SizedBox(
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
                                        SizedBox(
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
                                        SizedBox(
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
                              SizedBox(
                                height: 4.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.add_box,
                                            size: 24.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
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
                                          onPressed: () {},
                                          icon: Icon(
                                            MdiIcons.transfer,
                                            size: 24.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
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
                                          icon: Icon(
                                            Icons.call_received,
                                            size: 24.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
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
                                          icon: Icon(
                                            Icons.history,
                                            size: 24.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
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
                height: 160,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: CarouselIndicator(),
                    ),
                  ],
                ),
              ),
              Text("textluar"),
            ],
          ),
        ),
      ),
    );
  }
}
