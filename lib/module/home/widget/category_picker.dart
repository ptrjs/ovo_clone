// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:ovo_clone/shared/theme/theme_config.dart';

class CategoryPicker extends StatefulWidget {
  final List<Map<String, dynamic>> items;
  final Function(
          int index, String label, dynamic value, Map<String, dynamic> item)
      onItemSelected;
  const CategoryPicker({
    Key? key,
    required this.items,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  State<CategoryPicker> createState() => _CategoryPickerState();
}

class _CategoryPickerState extends State<CategoryPicker> {
  int selectedIndex = 0;
  updateIndex(newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    var item = widget.items[selectedIndex];
    var index = selectedIndex;
    var label = item["label"];
    var value = item["value"];

    widget.onItemSelected(index, label, value, item);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.items.length, (index) {
          bool selected = selectedIndex == index;
          var item = widget.items[index];
          return InkWell(
            onTap: () => updateIndex(index),
            child: Card(
              color: selected ? secondaryBgColor : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  item["label"],
                  style: TextStyle(
                    color: selected ? primaryColor : secondaryTextColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
