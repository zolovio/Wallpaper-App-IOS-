import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../../data/controllers/bottom_controller.dart';
import '../home/home_screen.dart';

class PremiumAccessScreen extends StatelessWidget {
   PremiumAccessScreen({Key? key}) : super(key: key);
  BottomNavbarController bottomNavbarController=Get.put(BottomNavbarController());

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
            onPressed: (){      bottomNavbarController.pageIndex.value=0;
            Get.offAll(HomeScreen());
            },
          ),


          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text("Premium Access",
          style: TextStyle(
            color: Colors.black
          ),
          ),
          centerTitle: true,
        ),
        body: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 150,

                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo,width: 3),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  children:  [
                    Icon(Icons.photo_camera_front,
                    size: 40,
                      color:Colors.indigo,
                    ),
                    SizedBox(height: 10,),
                    Text("NO ADS!",
                    style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold,color: Colors.indigo)
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Text("Access to all contents!",
            style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.indigoAccent,fontWeight: FontWeight.bold,
            fontSize: 16
            ),
            ),

            const SizedBox(height: 60,),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Column(
            //         children: [
            //           Container(
            //             width: MediaQuery.of(context).size.width*0.40,
            //            // height: MediaQuery.of(context).size.height*0.06,
            //             padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 6),
            //             decoration: const BoxDecoration(
            //                 borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
            //               color:Colors.amber,
            //             ),
            //
            //             child: Text("Lifetime",
            //             textAlign: TextAlign.center,
            //             style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
            //             ),
            //           ),
            //           Container(
            //             width: MediaQuery.of(context).size.width*0.40,
            //             //height: MediaQuery.of(context).size.height*0.06,
            //             padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
            //             decoration: const BoxDecoration(
            //               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
            //               color:Colors.orange,
            //             ),
            //
            //             child: Center(
            //               child: Text("\$ 9.99",
            //               textAlign: TextAlign.center,
            //               style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white,fontSize: 16),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           Container(
            //             width: MediaQuery.of(context).size.width*0.40,
            //            // height: MediaQuery.of(context).size.height*0.06,
            //             padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 6),
            //             decoration: const BoxDecoration(
            //                 borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
            //               color:Colors.black26,
            //             ),
            //
            //             child: Text("Monthly",
            //             textAlign: TextAlign.center,
            //             style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
            //             ),
            //           ),
            //           Container(
            //             width: MediaQuery.of(context).size.width*0.40,
            //             //height: MediaQuery.of(context).size.height*0.06,
            //             padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
            //             decoration: const BoxDecoration(
            //               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
            //               color:Colors.grey,
            //             ),
            //
            //             child: Center(
            //               child: Text("\$ 4.99",
            //               textAlign: TextAlign.center,
            //               style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white,fontSize: 16),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            // const SizedBox(height: 20,),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         width: MediaQuery.of(context).size.width*0.40,
            //         padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
            //         decoration:  BoxDecoration(
            //             borderRadius: BorderRadius.circular(50),
            //             gradient: const LinearGradient(
            //               begin: Alignment.topRight,
            //               end: Alignment.bottomLeft,
            //               colors: [
            //                 Colors.indigo,
            //                 Colors.indigoAccent
            //
            //               ],
            //             ),
            //
            //         ),
            //
            //         child: Text("Purchase",
            //         textAlign: TextAlign.center,
            //         style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white,fontSize: 16),
            //         ),
            //       ),
            //       Container(
            //         width: MediaQuery.of(context).size.width*0.40,
            //        // height: MediaQuery.of(context).size.height*0.06,
            //         padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
            //         decoration:  BoxDecoration(
            //             borderRadius: BorderRadius.circular(50),
            //           gradient: LinearGradient(
            //             begin: Alignment.topRight,
            //             end: Alignment.bottomLeft,
            //             colors: [
            //               Colors.grey,
            //               Colors.black26
            //
            //             ],
            //           ),
            //         ),
            //
            //         child: Text("Purchase",
            //         textAlign: TextAlign.center,
            //         style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white,fontSize: 16),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap:(){
                       Fluttertoast.showToast(msg: "Not available in this version",backgroundColor: Colors.red);
                    },
                    child: Column(children: [
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.40,
                            // height: MediaQuery.of(context).size.height*0.06,
                            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 6),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                              color:Colors.amber,
                            ),

                            child: Text("Lifetime",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.40,
                            //height: MediaQuery.of(context).size.height*0.06,
                            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                              color:Colors.orange,
                            ),

                            child: Center(
                              child: Text("\$ 9.99",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white,fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.40,
                        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.indigo,
                              Colors.indigoAccent

                            ],
                          ),

                        ),

                        child: Text("Purchase",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white,fontSize: 16),
                        ),
                      ),
                    ],),
                  ),
                  InkWell(
                    onTap: (){
                      Fluttertoast.showToast(msg: "Not available in this version",backgroundColor: Colors.red);
                    },
                    child: Column(children: [
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.40,
                            // height: MediaQuery.of(context).size.height*0.06,
                            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 6),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                              color:Colors.black26,
                            ),

                            child: Text("Monthly",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.40,
                            //height: MediaQuery.of(context).size.height*0.06,
                            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                              color:Colors.grey,
                            ),

                            child: Center(
                              child: Text("\$ 4.99",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white,fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.40,
                        // height: MediaQuery.of(context).size.height*0.06,
                        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.grey,
                              Colors.black26

                            ],
                          ),
                        ),

                        child: Text("Purchase",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white,fontSize: 16),
                        ),
                      ),
                    ],),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Fluttertoast.showToast(msg: "Not available in this version",backgroundColor: Colors.red);
              },
              child: Text("Restore",

              style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
