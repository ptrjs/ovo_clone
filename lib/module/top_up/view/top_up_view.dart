
import 'package:flutter/material.dart';
import 'package:ovo_clone/core.dart';
import '../controller/top_up_controller.dart';

class TopUpView extends StatefulWidget {
    const TopUpView({Key? key}) : super(key: key);

    Widget build(context, TopUpController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("TopUp"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: const Column(
            children: [],
            ),
        ),
        ),
    );
    }

    @override
    State<TopUpView> createState() => TopUpController();
}
    