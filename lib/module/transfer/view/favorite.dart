// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:ovo_clone/shared/theme/theme_config.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: bgGrey,
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/128/1828/1828884.png",
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Text(
                    "You have no favorite list.",
                    style: TextStyle(
                      fontSize: 32.0,
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
