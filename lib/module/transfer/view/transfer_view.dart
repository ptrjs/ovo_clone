
import 'package:flutter/material.dart';
import 'package:ovo_clone/core.dart';
import '../controller/transfer_controller.dart';

class TransferView extends StatefulWidget {
    const TransferView({Key? key}) : super(key: key);

    Widget build(context, TransferController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Transfer"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
        ),
    );
    }

    @override
    State<TransferView> createState() => TransferController();
}
    