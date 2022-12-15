import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app/data/controllers/bottom_controller.dart';
import 'package:wallpaper_app/data/controllers/color_controller.dart';
import 'package:wallpaper_app/data/singleton.dart';
import 'package:wallpaper_app/ui/screens/home/home_screen.dart';
import '../../../data/models/color_model.dart';



class ChangeColorScreen extends GetView<ColorController> {
  @override
  ColorController controller=Get.put(ColorController());
  BottomNavbarController bottomNavbarController=Get.put(BottomNavbarController());
  //String? gender;
  @override
  Widget build(BuildContext context) {
   return WillPopScope(
     onWillPop: () async {
       print('The user tries to pop()');
       return false;
     },
     child: SafeArea(
       child: Scaffold(
          body: Stack(
            children: [
              Singleton.instance.defaultWallpaper !=""
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
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0)),
                      color: Colors.black),
                  child: GestureDetector(
                    onTap: (){
                      Fluttertoast.showToast(msg: "Change color is not available in this version",
                          backgroundColor: Colors.red
                      );
                    },
                    child: ListView(
                      shrinkWrap: true,
                     // controller: scrollController,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Select Color",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(color: Colors.white),
                              ),
                              IconButton(
                                  onPressed: () {
                                    bottomNavbarController.pageIndex.value=0;
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
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            controller.obx(
                                  (state)=>  Expanded(
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: state!.result!.length,
                                    itemBuilder: (context, index) {
                                      var colorCode=state.result![index].code;

                                      int s=int.parse(colorCode!.replaceAll('#', "0xFF"));
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              clipBehavior: Clip.hardEdge,
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                boxShadow: const [
                                                  BoxShadow(
                                                  color: Colors.white,
                                                    spreadRadius: 0.5

                                                )],
                                                  color: Color(s),
                                                  borderRadius:
                                                  BorderRadius.circular(50)),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              state.result![index].name!,
                                              style: const TextStyle(color: Colors.white),
                                            )
                                          ],
                                        ),
                                      );

                                    }),
                              ),
                              onLoading: Center(child: CircularProgressIndicator()),
                              onEmpty: Text('No Color found'),

                              // here also you can set your own error widget, but by
                              // default will be an Center(child:Text(error))
                              onError: (error)=>Text(error!),
                            ),
                            Obx(()=> Expanded(
                              child: Container(
                                height: 300,
                                child: Theme(
                                  data: ThemeData(
                                    //here change to your color
                                    unselectedWidgetColor: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      RadioListTile(
                                        focusNode: FocusNode(),
                                        tileColor: Colors.white,
                                        title: Text("Color iSland",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                ?.copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal)),
                                        value: "Color iSland",
                                        groupValue: controller.type.value,
                                        onChanged: (value) {
                                          //setState(() {
                                          controller.updateType(value.toString());
                                          //  });
                                        },
                                      ),
                                      RadioListTile(
                                        focusNode: FocusNode(),
                                        tileColor: Colors.white,
                                        title: Text("Ring",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                ?.copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal)),
                                        value: "Ring",
                                        groupValue: controller.type.value,
                                        onChanged: (value) {
                                          //setState(() {
                                          controller.updateType(value.toString());
                                          // });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ))

                            // Expanded(
                            //   child: Container(
                            //   //  height:200,
                            //
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
     ),
   );
    // return DraggableScrollableSheet(
    //     builder: (BuildContext context, ScrollController scrollController) {
    //       return Container(
    //         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    //         decoration: const BoxDecoration(
    //             borderRadius: BorderRadius.only(
    //                 topLeft: Radius.circular(30.0),
    //                 topRight: Radius.circular(30.0)),
    //             color: Colors.black),
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
    //                     "Select Color",
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
    //             SizedBox(
    //               height: 20,
    //             ),
    //             Row(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 controller.obx(
    //                 (state)=>  Expanded(
    //                   child: Container(
    //                     // height: 300,
    //                     child: ListView.builder(
    //                         shrinkWrap: true,
    //                         physics: NeverScrollableScrollPhysics(),
    //                         itemCount: state!.result!.length,
    //                         itemBuilder: (context, index) {
    //                           return Padding(
    //                             padding: const EdgeInsets.all(8.0),
    //                             child: Row(
    //                               children: [
    //                                 Container(
    //                                   clipBehavior: Clip.hardEdge,
    //                                   width: 20,
    //                                   height: 20,
    //                                   decoration: BoxDecoration(
    //                                       color: Colors.white,
    //                                       borderRadius:
    //                                           BorderRadius.circular(50)),
    //                                 ),
    //                                 const SizedBox(
    //                                   width: 20,
    //                                 ),
    //                                 Text(
    //                                   state.result![index].name!,
    //                                   style: const TextStyle(color: Colors.white),
    //                                 )
    //                               ],
    //                             ),
    //                           );
    //
    //                           // ListTile(
    //                           //   leading: Container(
    //                           //     clipBehavior: Clip.hardEdge,
    //                           //     width: 20,
    //                           //     height: 20,
    //                           //     decoration: BoxDecoration(
    //                           //         color: colorList[index].color,
    //                           //         borderRadius: BorderRadius.circular(50)),
    //                           //   ),
    //                           //   title: Text(colorList[index].name!),
    //                           // );
    //                         }),
    //                   ),
    //                 ),
    //                   onLoading: Center(child: CircularProgressIndicator()),
    //                   onEmpty: Text('No Color found'),
    //
    //                   // here also you can set your own error widget, but by
    //                   // default will be an Center(child:Text(error))
    //                   onError: (error)=>Text(error!),
    //                 ),
    //       Obx(()=> Expanded(
    //                   child: Container(
    //                     height: 300,
    //                     child: Theme(
    //                       data: ThemeData(
    //                         //here change to your color
    //                         unselectedWidgetColor: Colors.white,
    //                       ),
    //                       child: Column(
    //                         children: [
    //                           RadioListTile(
    //                             focusNode: FocusNode(),
    //                             tileColor: Colors.white,
    //                             title: Text("Color iSland",
    //                                 style: Theme.of(context)
    //                                     .textTheme
    //                                     .headline6
    //                                     ?.copyWith(
    //                                         color: Colors.white,
    //                                         fontWeight: FontWeight.normal)),
    //                             value: "Color iSland",
    //                             groupValue: controller.type.value,
    //                             onChanged: (value) {
    //                               //setState(() {
    //                               controller.updateType(value.toString());
    //                             //  });
    //                             },
    //                           ),
    //                           RadioListTile(
    //                             focusNode: FocusNode(),
    //                             tileColor: Colors.white,
    //                             title: Text("Ring",
    //                                 style: Theme.of(context)
    //                                     .textTheme
    //                                     .headline6
    //                                     ?.copyWith(
    //                                         color: Colors.white,
    //                                         fontWeight: FontWeight.normal)),
    //                             value: "Ring",
    //                             groupValue: controller.type.value,
    //                             onChanged: (value) {
    //                               //setState(() {
    //                               controller.updateType(value.toString());
    //                              // });
    //                             },
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ))
    //
    //                 // Expanded(
    //                 //   child: Container(
    //                 //   //  height:200,
    //                 //
    //                 //   ),
    //                 // ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       );
    //     },
    //     initialChildSize: 1.0,
    //     maxChildSize: 1.0,
    //     minChildSize: 0.3);
  }
}
