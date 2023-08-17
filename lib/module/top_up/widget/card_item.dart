// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CardItem extends StatefulWidget {
  final String icon;
  final String name;
  const CardItem({Key? key, required this.icon, required this.name})
      : super(key: key);

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
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
