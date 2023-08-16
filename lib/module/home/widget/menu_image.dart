// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MenuImage extends StatefulWidget {
  const MenuImage({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuImage> createState() => _MenuImageState();
}

class _MenuImageState extends State<MenuImage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        List menus = [
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/878/878052.png",
            "label": "Burger",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/3595/3595455.png",
            "label": "Pizza",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/2718/2718224.png",
            "label": "Noodles",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/8060/8060549.png",
            "label": "Meat",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/454/454570.png",
            "label": "Soup",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/2965/2965567.png",
            "label": "Dessert",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/2769/2769608.png",
            "label": "Drink",
            "onTap": () {},
          },
          {
            "icon": "https://cdn-icons-png.flaticon.com/128/1037/1037855.png",
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
