import 'package:flutter/material.dart';
import 'package:ovo_clone/core.dart';
import 'package:ovo_clone/module/transfer/view/favorite.dart';
import 'package:ovo_clone/module/transfer/view/new_receiver.dart';
import 'package:ovo_clone/shared/theme/theme_config.dart';
import '../controller/transfer_controller.dart';

class TransferView extends StatefulWidget {
  const TransferView({Key? key}) : super(key: key);

  Widget build(context, TransferController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: secondaryTextColor,
            tabs: const [
              Tab(
                text: "New Receiver",
              ),
              Tab(
                text: "Favorite",
              ),
            ],
          ),
          title: const Text(
            'Transfer', // Teks yang ingin diubah warnanya
            style: TextStyle(
              color: Colors.white, // Ganti dengan warna teks yang diinginkan
              fontSize: 14, // Ganti dengan ukuran font yang diinginkan
              fontWeight:
                  FontWeight.bold, // Ganti dengan gaya font yang diinginkan
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            NewReceiver(),
            FavoriteView(),
          ],
        ),
      ),
    );
  }

  @override
  State<TransferView> createState() => TransferController();
}
