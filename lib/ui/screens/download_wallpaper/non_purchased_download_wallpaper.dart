import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:wallpaper_app/data/controllers/bottom_controller.dart';
import 'package:wallpaper_app/data/controllers/notches_controller.dart';
import 'package:wallpaper_app/ui/screens/home/home_screen.dart';
import '../../../data/singleton.dart';
import '../premium_access/premium_access_screen.dart';
import 'download_wallpaper.dart';

showNonPremiumPurchasedDialog(BuildContext context) {
  ScreenshotController screenshotController=ScreenshotController();
  NotchesController controller=Get.put(NotchesController());
  BottomNavbarController bottomNavbarController=Get.put(BottomNavbarController());
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    constraints: BoxConstraints(
      maxHeight: MediaQuery.of(context).size.height*0.45,
      maxWidth: MediaQuery.of(context).size.width
    ),
      builder: (context) => Container(
        width:  MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          GestureDetector(
            onTap: (){
              Get.dialog(Center(child:CircularProgressIndicator()));
              screenshotController
                  .captureFromWidget(
                  InheritedTheme.captureAll(
                      context, Material(child: Stack(
                    // alignment: Alignment.bottomCenter,
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
                        Image.asset("assets/images/watermark.png",
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                        ),
                        controller.selectedNotch.value!=""?Positioned(
                            left: 0,
                            right: 0,
                            top: 10,
                            child: Center(
                              child: Image.network(controller.selectedNotch.value,
                             //   height: 30,
                                width: MediaQuery.of(context).size.width*0.80,
                              ),
                            )):SizedBox(),

                      ]))),
                  delay: Duration(seconds: 1))
                  .then((capturedImage) async {

                if (capturedImage != null) {

                  final String dir = (await getApplicationDocumentsDirectory()).path;
                  final String fullPath = '$dir/${DateTime.now().millisecond}.png';
                  File capturedFile = File(fullPath);
                  await capturedFile.writeAsBytes(capturedImage);
                  print("capturedFile path: ${capturedFile.path}");

                  await GallerySaver.saveImage(capturedFile.path).then((value) {

                    if(value==true){

                      Fluttertoast.showToast(msg: "Wallpaper saved in gallery",backgroundColor: Colors.green,textColor: Colors.white);
                      Get.back();
                      bottomNavbarController.pageIndex.value=0;
                      Get.offAll(HomeScreen());
                      showDownloadWallpaperDialog(context);
                    }else{
                      bottomNavbarController.pageIndex.value=0;
                      Fluttertoast.showToast(msg: "Wallpaper not saved",backgroundColor: Colors.red,textColor: Colors.white);
                    }
                    // setState(() {
                    //   screenshotButtonText = 'screenshot saved!';
                    // });
                  });
                }
                //ShowCapturedWidget(context, capturedImage);
              });

             // showPremiumPurchasedDialog(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width*0.8,
              //height: MediaQuery.of(context).size.height*0.6,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50)

              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
                child: Text("Download low quality sample with watermark",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16

                ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Get.back();
              Get.to(PremiumAccessScreen());
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20,),
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50)

              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
                child: Text("Download high quality premium version",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16

                  ),
                ),
              ),
            ),
          ),
            SizedBox(height: 20,),
        ],),
      ),
      context: context);
}