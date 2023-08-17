// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:ovo_clone/module/top_up/widget/card_item.dart';
import 'package:ovo_clone/shared/theme/theme_config.dart';

class NewReceiver extends StatefulWidget {
  const NewReceiver({Key? key}) : super(key: key);

  @override
  State<NewReceiver> createState() => _NewReceiverState();
}

class _NewReceiverState extends State<NewReceiver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 8.0,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
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
                  CardItem(
                      icon:
                          "https://cdn-icons-png.flaticon.com/128/1402/1402121.png",
                      name: "Fellow OVO"),
                  CardItem(
                      icon:
                          "https://cdn-icons-png.flaticon.com/128/2830/2830284.png",
                      name: "To Bank Account"),
                  SizedBox(
                    height: 4.0,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: bgGrey,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Last Transaction",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Card(
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://i.ibb.co/PGv8ZzG/me.jpg",
                        ),
                      ),
                      title: const Text("John Doe"),
                      subtitle: Text(
                        "OVO - 085212345678",
                        style: TextStyle(color: secondaryTextColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
