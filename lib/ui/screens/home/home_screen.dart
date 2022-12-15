import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app/data/controllers/bottom_controller.dart';
import 'package:wallpaper_app/data/singleton.dart';

import '../bottom_navbar/bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BottomNavbarController bottomNavbarController =
      Get.put(BottomNavbarController());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print('The user tries to pop()');
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BuildMyNavBar(),
          body:Stack(
          children:[
          Singleton.instance.defaultWallpaper != ""
              ? GestureDetector(
                  onTap: () {
                    bottomNavbarController.pageIndex.value = 0;
                  },
                  child: Image.asset(
                    Singleton.instance.defaultWallpaper!,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                )
              : Singleton.instance.wallpaperFromGallery != null
                  ? GestureDetector(
                      onTap: () {
                        bottomNavbarController.pageIndex.value = 0;
                      },
                      child: Image.file(
                        File(Singleton.instance.wallpaperFromGallery!.path),
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        bottomNavbarController.pageIndex.value = 0;
                      },
                      child: Image.network(
                        Singleton.instance.wallpaperFromServer!,
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
            Singleton.instance.selectedNotch != ""
                ? Positioned(
                left: 0,
                right: 0,
                top: 10,
                child: Center(
                  child: Image.network(
                    Singleton.instance.selectedNotch!,
                   // height: 30,
                    width: MediaQuery.of(context).size.width * 0.80,
                  ),
                ))
                : const SizedBox(),
        ])),
      ),
    );
  }
}
