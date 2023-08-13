import 'package:flutter/material.dart';
import 'package:ovo_clone/core.dart';
import 'package:ovo_clone/shared/theme/theme_config.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 5,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const HomeView(),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.orange,
            ),
          ],
        ),
        floatingActionButton: Container(
          padding: const EdgeInsets.only(
            bottom: 24.0,
          ),
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white, // Warna border
                width: 4.0, // Lebar border
              ),
            ),
            child: FloatingActionButton(
              onPressed: () {
                // Aksi yang ingin Anda lakukan saat Floating Action Button ditekan.
              },
              backgroundColor:
                  primaryColor,
              child: const Icon(Icons.qr_code), // Ganti dengan warna yang diinginkan.
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            currentIndex: controller.selectedIndex,
            onTap: (newIndex) {
              if (newIndex == 2) {
                ();
              } else {
                controller.updateIndex(newIndex);
              }
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.money,
                ),
                label: "Finance",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 4),
                  child: Text(""),
                ),
                label: "Pay",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.inbox,
                ),
                label: "Inbox",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
