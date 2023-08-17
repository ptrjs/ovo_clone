// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CardItemNew extends StatefulWidget {
  final String icon;
  final String name;
  const CardItemNew({Key? key, required this.icon, required this.name})
      : super(key: key);

  @override
  State<CardItemNew> createState() => _CardItemNewState();
}

class _CardItemNewState extends State<CardItemNew> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          widget.icon,
          width: 24.0,
        ),
        title: Row(
          children: [
            Text(widget.name),
            const Spacer(),
            Container(
              width: 50,
              height: 20,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
                color: Colors.red,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chevron_right,
            size: 24.0,
          ),
        ),
      ),
    );
  }
}
