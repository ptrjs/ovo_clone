// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MenuFavorite extends StatefulWidget {
  const MenuFavorite({Key? key}) : super(key: key);

  @override
  State<MenuFavorite> createState() => _MenuFavoriteState();
}

class _MenuFavoriteState extends State<MenuFavorite> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        List menus = [
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/3304/3304728.png",
            "label": "Investment",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/3304/3304732.png",
            "label": "Gold",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/3304/3304702.png",
            "label": "Saving",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/3304/3304737.png",
            "label": "Currency",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/3304/3304713.png",
            "label": "Online Payment",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/3304/3304725.png",
            "label": "Credit Card",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/3304/3304740.png",
            "label": "Stock",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/3304/3304724.png",
            "label": "Others",
            "onTap": () {},
          },
        ];

        return Wrap(
          children: List.generate(
            menus.length,
            (index) {
              var item = menus[index];

              var size = constraint.biggest.width / 4;

              return SizedBox(
                width: size,
                height: size,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blueGrey,
                    animationDuration: const Duration(milliseconds: 1000),
                    backgroundColor: Colors.transparent,
                    splashFactory: InkSplash.splashFactory,
                    shadowColor: Colors.transparent,
                    elevation: 0.0,
                  ),
                  onPressed: () => item["onTap"](),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        item["icon"],
                        width: 30.0,
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        "${item["label"]}",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 10.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
