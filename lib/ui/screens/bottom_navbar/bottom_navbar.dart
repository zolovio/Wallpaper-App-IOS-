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
      height: 100,
      decoration: const BoxDecoration(
        color: MyColors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 6,bottom: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              //enableFeedback: false,
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
                Get.to(GalleryScreen());
              },
              child: pageIndex == 1
                  ? Container(
                //height: 80,
                      alignment: Alignment.center,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(color: MyColors.grey, width: 3),
                          shape: BoxShape. circle,
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                             EdgeInsets.all(10),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.image_outlined,
                                color: Colors.black,
                                size: 36,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 70),
                                  child: const Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: Text(
                                      "choose wallpaper",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
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
                              size: 36,
                            ),
                          ),
                          Expanded(
                            child: Container(
                                constraints: const BoxConstraints(maxWidth: 70),
                                child: Padding(
                                  padding: EdgeInsets.all(0.0),
                                  child: Text(
                                    "choose wallpaper",
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
                  pageIndex = 2;
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
              child: pageIndex == 2
                  ? Container(

               // //height: 80,
                      alignment: Alignment.center,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                       
                        border: Border.all(color: MyColors.grey, width: 3), 
                          shape: BoxShape. circle,
                        color: Colors.white,
                      ),
                      child: Padding(

                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.color_lens_outlined,
                                color: Colors.black,
                                size: 36,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 70),
                                  child: const Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: Text(
                                      "change\n color",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
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
                              size: 36,
                            ),
                          ),
                          Expanded(
                            child: Container(
                                constraints: const BoxConstraints(maxWidth: 70),
                                child: Padding(
                                  padding: EdgeInsets.all(0.0),
                                  child: Text(
                                    "change \n color",
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
                  pageIndex = 3;
                });
                showModalBottomSheet(
                  elevation: 25,
                  // backgroundColor: Color(0XFFF2F2F2),
                  context: context,
                  barrierColor: Colors.transparent,
                  backgroundColor: Colors.transparent,

                  builder: (context) {
                    return  SelectStyleScreen();
                  },
                );
              },
              child: pageIndex == 3
                  ? Container(
               // //height: 80,
                      alignment: Alignment.center,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        shape: BoxShape. circle,
                        border: Border.all(color: MyColors.grey, width: 3),
                       //   shape: BoxShape. circle,
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.image_outlined,
                                color: Colors.black,
                                size: 36,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 70),
                                  child: const Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Text(
                                      "style",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
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
                              size: 36, color: Colors.white.withOpacity(0.7)),
                        ),
                        Expanded(
                          child: Container(
                              constraints: const BoxConstraints(maxWidth: 70),
                              child: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Text(
                                  "style",
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
                showNonPremiumPurchasedDialog(context);

              },
              child: pageIndex == 4
                  ? Container(
               // //height: 80,
                      alignment: Alignment.center,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(color: MyColors.grey, width: 3),
                          shape: BoxShape. circle,
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.download_outlined,
                                color: Colors.black,
                                size: 36,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 70),
                                  child: const Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Text(
                                      "download wallpaper",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
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
                              size: 36, color: Colors.white.withOpacity(0.7)),
                        ),
                        Expanded(
                          child: Container(
                              constraints: const BoxConstraints(maxWidth: 70),
                              child: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Text(
                                  "download wallpaper",
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
                  pageIndex = 5;
                });
                Get.to(SettingScreen());
              },
              child: pageIndex == 5
                  ? Container(
                //height: 80,
                      alignment: Alignment.center,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(color: MyColors.grey, width: 3),
                          shape: BoxShape. circle,
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.settings,
                                color: Colors.black,
                                size: 36,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 70),
                                  child: const Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: Text(
                                      "settings",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
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
                                size: 36, color: Colors.white.withOpacity(0.7)),
                          ),
                          Expanded(
                            child: Container(
                                constraints: const BoxConstraints(maxWidth: 70),
                                child: Padding(
                                  padding: EdgeInsets.all(0.0),
                                  child: Text(
                                    "settings",
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
