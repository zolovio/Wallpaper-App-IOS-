import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app/main.dart';

import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>  HomeScreen())));
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
                height: 150,
                width: 200,
                child: Hero(
                    tag: 'imageHero',
                    child: Image.asset("assets/images/appLogo55.png"))),
            const SizedBox(height: 20,),
            const Text("iNVISIBLE iSLAND",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "nunito",
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            )

          ],
        ),
      ),
    );
  }

  void _checkInternetAndProceed(BuildContext context) async {
    bool flagConnected = false;
    try {
      final result =
      await InternetAddress.lookup('www.google.com').timeout(const Duration(
        seconds: 5,
      ));
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        // when connected
        flagConnected = true;
      }
    } catch (_) {}
    if (flagConnected) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) =>  HomeScreen()));
    } else {
      // when no internet
      _onNoInternet(context);
    }
  }

  void _onNoInternet(BuildContext context) {
    // print("#showModalBottomSheet");
    showModalBottomSheet<void>(
      clipBehavior: Clip.hardEdge,
      isDismissible: false,
      // barrierColor: Colors.transparent,
      context: context,
      enableDrag: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (builderContext) => _buildNoInternetWgt(context, builderContext),
    );
  }

  Widget _buildNoInternetWgt(
      BuildContext context, BuildContext builderContext) {
    // print("#buildNoInternetWgt");
    const imgSize = 200.0;
    return Container(
      color: Colors.grey.withOpacity(0.1),
      height: MediaQuery.of(context).size.height / 2.5,
      //padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "No Internet",
            style: Theme.of(context).textTheme.headline6,
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pop(builderContext);
              _checkInternetAndProceed(context);
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Try Again"),
            ),
          )
        ],
      ),
    );
  }



}