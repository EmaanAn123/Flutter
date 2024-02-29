import 'package:flutter_application_1/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/cart_screen/cart_screen.dart';
import 'package:flutter_application_1/views/category_screen/category_screen.dart';
import 'package:flutter_application_1/views/controllers/home_controller.dart';
import 'package:flutter_application_1/views/home_screen/home_screen.dart';
import 'package:flutter_application_1/views/profile_screen/profile_screen.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(Homecontroller());
    var navbarItems = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(iccatergoies, width: 26), label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(iccart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icprofile, width: 26), label: account)
    ];
    var navBody = [
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            selectedItemColor: redColor,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(fontFamily: semibold),
            backgroundColor: whiteColor,
            items: navbarItems,
            onTap: (value) {
              controller.currentNavIndex.value = value;
            }),
      ),
    );
  }
}
