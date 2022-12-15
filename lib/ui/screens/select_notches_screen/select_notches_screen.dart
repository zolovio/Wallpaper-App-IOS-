import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screenshot/screenshot.dart';
import 'package:wallpaper_app/data/controllers/bottom_controller.dart';
import 'package:wallpaper_app/data/controllers/notches_controller.dart';
import 'package:wallpaper_app/data/singleton.dart';
import 'package:wallpaper_app/ui/screens/home/home_screen.dart';

class SelectNotchesScreen extends GetView<NotchesController> {
  @override
  NotchesController controller = Get.put(NotchesController());
  BottomNavbarController bottomNavbarController =
      Get.put(BottomNavbarController());
  ScreenshotController screenshotController = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print('The user tries to pop()');
        return false;
      },
      child: SafeArea(
        child: Scaffold(
            body: Obx(() => Stack(children: [
                  Singleton.instance.defaultWallpaper != ""
                      ? Image.asset(
                          Singleton.instance.defaultWallpaper!,
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                        )
                      : Singleton.instance.wallpaperFromGallery != null
                          ? Image.file(
                              File(Singleton.instance.wallpaperFromGallery!.path),
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            )
                          : Image.network(
                              Singleton.instance.wallpaperFromServer!,
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),


                  controller.selectedNotch.value != ""
                      ? Positioned(
                          left: 0,
                          right: 0,
                          top: 10,
                          child: Center(
                            child: Image.network(
                              controller.selectedNotch.value,
                              fit: BoxFit.cover,
                              //height: 30,
                              width: MediaQuery.of(context).size.width * 0.90,
                            ),
                          ))
                      : const SizedBox(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.65,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0)),
                          color: const Color(0xff7f7f7f).withOpacity(0.95)),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Select Style",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(color: Colors.white),
                                ),
                                IconButton(
                                    onPressed: () {
                                      bottomNavbarController.pageIndex.value = 0;
                                      Get.offAll(HomeScreen());
                                    },
                                    icon: const Icon(
                                      Icons.cancel,
                                      color: Colors.red,
                                      size: 30,
                                    ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          controller.obx((state) => ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state!.result!.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    controller
                                        .setNotch(state.result![index].image!);

                                    Singleton.instance.selectedNotch =
                                    state.result![index].image;
                                  },
                                  child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Image.network(
                                          state.result![index].image!,
                                         // height: 30,
                                          width:
                                              MediaQuery.of(context).size.width *
                                                  0.80,
                                        ),
                                      )),
                                );
                              })),
                        ],
                      ),
                    ),
                  )
                ]))),
      ),
    );
    // return DraggableScrollableSheet(
    //     builder: (BuildContext context, ScrollController scrollController) {
    //       return Container(
    //         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    //         decoration:  BoxDecoration(
    //             borderRadius: const BorderRadius.only(
    //                 topLeft: Radius.circular(30.0),
    //                 topRight: Radius.circular(30.0)),
    //             color: const Color(0xff7f7f7f).withOpacity(0.95)
    //         ),
    //         child: ListView(
    //           shrinkWrap: true,
    //           controller: scrollController,
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 16.0),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text(
    //                     "Select Style",
    //                     style: Theme.of(context)
    //                         .textTheme
    //                         .headline5
    //                         ?.copyWith(color: Colors.white),
    //                   ),
    //                   IconButton(
    //                       onPressed: () {
    //                         Get.back();
    //                       },
    //                       icon: const Icon(
    //                         Icons.cancel,
    //                         color: Colors.red,
    //                         size: 30,
    //                       ))
    //                 ],
    //               ),
    //             ),
    //             const SizedBox(
    //               height: 20,
    //             ),
    //             controller.obx(
    //       (state)=>  ListView.builder(
    //                 shrinkWrap: true,
    //                 physics: NeverScrollableScrollPhysics(),
    //                 itemCount: state!.result!.length,
    //                 itemBuilder: (context, index) {
    //                   return Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Center(
    //                       child: Image.network(state.result![index].image!,
    //                       height: 30,
    //                         width: MediaQuery.of(context).size.width*0.6,
    //                       ),
    //                     )
    //
    //                   );
    //
    //
    //                 })),
    //           ],
    //         ),
    //       );
    //     },
    //     initialChildSize: 1.0,
    //     maxChildSize: 1.0,
    //     minChildSize: 0.3);
  }
}
