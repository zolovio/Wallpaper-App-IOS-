import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app/ui/screens/download_wallpaper/purchased_premium_download_wallpaper.dart';
import 'package:wallpaper_app/ui/values/my_colors.dart';

import '../premium_access/premium_access_screen.dart';
import 'download_wallpaper.dart';

showNonPremiumPurchasedDialog(BuildContext context) {
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
              Get.back();
              showDownloadWallpaperDialog(context);
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
          SizedBox(height: 20,),
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