import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app/ui/screens/select_style_screen/select_style_screen.dart';
import 'package:wallpaper_app/ui/screens/setting/setting_screen.dart';
import 'package:wallpaper_app/ui/values/my_colors.dart';
import '../change_color/change_color.dart';
import '../download_wallpaper/non_purchased_download_wallpaper.dart';
import '../wallpaper/gallery_screen.dart';

class BuildMyNavBar extends StatefulWidget {
  const BuildMyNavBar({Key? key}) : super(key: key);

  @override
  _BuildMyNavBarState createState() => _BuildMyNavBarState();
}

class _BuildMyNavBarState extends State<BuildMyNavBar> {
  int pageIndex = 0;

  final pages = [
    GalleryScreen()
    // const Page2(),
    // const Page3(),
    // const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: const BoxDecoration(
        color: MyColors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              //enableFeedback: false,
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
                Get.to(GalleryScreen());
              },
              child: pageIndex == 0
                  ? Container(
                      alignment: Alignment.center,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(color: MyColors.grey, width: 3),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 16.0, left: 6, right: 6),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.image_outlined,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 70),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Choose Wallpaper",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Icon(
                              Icons.image_outlined,
                              color: Colors.white.withOpacity(0.7),
                              size: 20,
                            ),
                          ),
                          Expanded(
                            child: Container(
                                constraints: const BoxConstraints(maxWidth: 70),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Choose Wallpaper",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white.withOpacity(0.7)),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
            ),
            GestureDetector(
              //enableFeedback: false,
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
                showModalBottomSheet(
                  elevation: 25,
                  // backgroundColor: Color(0XFFF2F2F2),
                  context: context,
                  barrierColor: Colors.transparent,
                  backgroundColor: Colors.transparent,

                  builder: (context) {
                    return const ChangeColorScreen();
                  },
                );
              },
              child: pageIndex == 1
                  ? Container(
                      alignment: Alignment.center,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(color: MyColors.grey, width: 3),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 16.0, left: 6, right: 6),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.color_lens_outlined,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 70),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Change Color",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Icon(
                              Icons.color_lens_outlined,
                              color: Colors.white.withOpacity(0.7),
                              size: 20,
                            ),
                          ),
                          Expanded(
                            child: Container(
                                constraints: const BoxConstraints(maxWidth: 70),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Change Color",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 10,
                                    ),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
            ),
            GestureDetector(
              //enableFeedback: false,
              onTap: () {
                setState(() {
                  pageIndex = 2;
                });
                showModalBottomSheet(
                  elevation: 25,
                  // backgroundColor: Color(0XFFF2F2F2),
                  context: context,
                  barrierColor: Colors.transparent,
                  backgroundColor: Colors.transparent,

                  builder: (context) {
                    return const SelectStyleScreen();
                  },
                );
              },
              child: pageIndex == 2
                  ? Container(
                      alignment: Alignment.center,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(color: MyColors.grey, width: 3),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 16.0, left: 6, right: 6),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.image_outlined,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 70),
                                  child: const Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      "Select Style",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    )
                  : Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Icon(Icons.image_outlined,
                              size: 20, color: Colors.white.withOpacity(0.7)),
                        ),
                        Expanded(
                          child: Container(
                              constraints: const BoxConstraints(maxWidth: 70),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Select Style",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.7)),
                                ),
                              )),
                        )
                      ],
                    ),
            ),
            GestureDetector(
              //enableFeedback: false,
              onTap: () {
                setState(() {
                  pageIndex = 3;
                });
                showNonPremiumPurchasedDialog(context);
              },
              child: pageIndex == 3
                  ? Container(
                      alignment: Alignment.center,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(color: MyColors.grey, width: 3),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 16.0, left: 6, right: 6),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.download_outlined,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 70),
                                  child: const Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      "Download Wallpaper",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    )
                  : Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Icon(Icons.download_outlined,
                              size: 20, color: Colors.white.withOpacity(0.7)),
                        ),
                        Expanded(
                          child: Container(
                              constraints: const BoxConstraints(maxWidth: 70),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Download Wallpaper",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.7)),
                                ),
                              )),
                        )
                      ],
                    ),
            ),
            GestureDetector(
              //enableFeedback: false,
              onTap: () {
                setState(() {
                  pageIndex = 4;
                });
                Get.to(SettingScreen());
              },
              child: pageIndex == 4
                  ? Container(
                      alignment: Alignment.center,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(color: MyColors.grey, width: 3),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 13, right: 13),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.settings,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 70),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Settings",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Icon(Icons.settings,
                                size: 20, color: Colors.white.withOpacity(0.7)),
                          ),
                          Expanded(
                            child: Container(
                                constraints: const BoxConstraints(maxWidth: 70),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Settings",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white.withOpacity(0.7)),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
