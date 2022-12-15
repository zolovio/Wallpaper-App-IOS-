import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app/data/controllers/bottom_controller.dart';
import 'package:wallpaper_app/ui/screens/home/home_screen.dart';
import 'package:wallpaper_app/ui/screens/premium_access/premium_access_screen.dart';

class SettingScreen extends StatelessWidget {
  BottomNavbarController bottomNavbarController=BottomNavbarController();


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print('The user tries to pop()');
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,color: Colors.black),
            onPressed: (){
              bottomNavbarController.pageIndex.value=0;
              Get.offAll(HomeScreen());

              },
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text("Settings",
            style: TextStyle(
                color: Colors.black
            ),
          ),
         // centerTitle: true,
        ),
        body: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40,),

           GestureDetector(
             onTap: (){
               Get.to( PremiumAccessScreen());
             },
             child: Container(
               width: MediaQuery.of(context).size.width,
               margin: const EdgeInsets.symmetric(horizontal: 16),
               padding: const EdgeInsets.symmetric(horizontal:16,vertical: 12),
               decoration:  BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 gradient: const LinearGradient(
                   begin: Alignment.topRight,
                   end: Alignment.bottomLeft,
                   colors: [
                     Colors.orange,
                     Colors.amber,


                   ],
                 ),
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("GET \n FULL ACCESS",
                   style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                   ),
                   SizedBox(height: 10,),
                   Text("Unlock all iSlands and Wallpaper",
                   style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white),
                   )
                 ],
               ),

             ),
           ),
            const SizedBox(height: 20,),
             Container(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.indigo,
                    Colors.purpleAccent,
                  ],
                )
            ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.add_chart,color: Colors.white,),
              Text("Terms of Use",
                style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white),
              ),
              const Icon(Icons.arrow_forward_ios,color: Colors.white,),
            ],

          ),
        ),
            const SizedBox(height: 20,),
            Container(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blueAccent,
                    Colors.indigo,
                  ],
                )
            ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.wysiwyg_outlined,color: Colors.white,),
              Text("Privacy Policy",
                style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white),
              ),
              const Icon(Icons.arrow_forward_ios,color: Colors.white,),
            ],

          ),
        ),
            const SizedBox(height: 20,), Container(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.pink,
                    Colors.red,
                  ],
                )
            ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.message_outlined,color: Colors.white,),
              Text("Contact",
                style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white),
              ),
              const Icon(Icons.arrow_forward_ios,color: Colors.white,),
            ],

          ),
        ),
            const SizedBox(height: 20,),


          ],
        ),
      ),
    );
  }
}
