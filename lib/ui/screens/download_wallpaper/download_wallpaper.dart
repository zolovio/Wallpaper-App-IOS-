import 'package:flutter/material.dart';

showDownloadWallpaperDialog(BuildContext context) {
  showDialog(
    context: context,
    //anchorPoint: Offset(10, 40),
    builder: (context) {
      var height = MediaQuery.of(context).size.height;
      var width = MediaQuery.of(context).size.width;
      return AlertDialog(
       // shape: (),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black, //<-- SEE HERE
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        alignment: Alignment.topCenter,
        backgroundColor: Colors.black,
        contentPadding: EdgeInsets.only(left: 15,right:15,top: 4,bottom: 20),
        content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const <Widget>[
                            Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 40,
                            ),
                          ],
                        ),
                        Text(
                          'Download \nCompleted',
                          style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        // Text(
                        //   ' Compleated',
                        //   style: TextStyle(
                        //       letterSpacing: 3,
                        //       fontSize: 30,
                        //       color: Colors.white,
                        //       fontWeight: FontWeight.bold),
                        // )
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  const Text(
                    'How to set',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        wordSpacing: 4,
                        letterSpacing: 4),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    'iNvisible iSland Wallpaper?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      letterSpacing: 3,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  <Widget>[
                          Text(
                              'Step 1',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white,fontWeight: FontWeight.w500)),

                          Text(
                              'Go to Photos App & \n Chosse Wallpaper',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white,fontSize: 10)

                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.photo_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  // 2

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  <Widget>[
                          Text(
                              'Step 2',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white,fontWeight: FontWeight.w500)),

                          Text(
                              'Tap on Options',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white,fontSize: 10)

                          ),
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Image.asset("assets/images/options.png",
                            height:24,
                          )
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  <Widget>[
                          Text(
                              'Step 3',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white,fontWeight: FontWeight.w500)),

                          Text(
                              'Tap to Use as \n Wallpaper',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white,fontSize: 10)

                          ),
                        ],
                      ),
                       Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Image.asset("assets/images/mobile.png",
                        height:24,
                        )
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  <Widget>[
                          Text(
                              'Step 4',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white,fontWeight: FontWeight.w500)),


                          Text(
                              'Tap Done',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white,fontSize: 10)

                          ),
                        ],
                      ),
                      // Padding(
                      //     padding: EdgeInsets.only(right: 10),
                      //     child: SizedBox(
                      //       height: 20,
                      //       child: ElevatedButton(
                      //           style: ElevatedButton.styleFrom(
                      //             backgroundColor: Colors.white,
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(30),
                      //             ),
                      //           ),
                      //           onPressed: () {},
                      //           child: const Text(
                      //             'Done',
                      //             style: TextStyle(
                      //                 fontSize: 10,
                      //                 color: Colors.black,
                      //                 fontWeight: FontWeight.bold),
                      //           )),
                      //     )),
                      Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Image.asset("assets/images/done.png",
                            height:40,
                            //width: 24,
                          )
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  <Widget>[
                          Text(
                              'Step 5',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white,fontWeight: FontWeight.w500)),
                          Text(
                              'Select Customize \n Home Screen',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white,fontSize: 10)
                          ),
                        ],
                      ),

                      // Padding(
                      //     padding: const EdgeInsets.only(right: 10),
                      //     child: SizedBox(
                      //       height: 20,
                      //       child: ElevatedButton(
                      //           style: ElevatedButton.styleFrom(
                      //             backgroundColor: Colors.white,
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(30),
                      //             ),
                      //           ),
                      //           onPressed: () {},
                      //           child: const Text(
                      //
                      //             'Customise Home Screen',
                      //             style: TextStyle(
                      //                 fontSize: 10,
                      //                 color: Colors.black,
                      //                 fontWeight: FontWeight.bold),
                      //           )),
                      //     )),

                      Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Image.asset("assets/images/homeScreen.png",
                            height:24,
                            //width: 24,
                          )
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  <Widget>[
                          Text(
                              'Step 6',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white,fontWeight: FontWeight.w500)),

                          Text(
                              'Turn off Blur',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white,fontSize: 10)

                          ),
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Image.asset("assets/images/blur.png",
                            height:24,
                          )
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  <Widget>[
                          Text(
                              'Step 7',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white,fontWeight: FontWeight.w500)),

                          Text(
                              'Select Done',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white,fontSize: 10)

                          ),
                        ],
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(right: 10),
                      //   child: SizedBox(
                      //     height: 20,
                      //     width: 70,
                      //     child: ElevatedButton(
                      //       style: ElevatedButton.styleFrom(
                      //         backgroundColor: Colors.white,
                      //         shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(30),
                      //         ),
                      //       ),
                      //       onPressed: () {},
                      //       child: const Text(
                      //         'Done',
                      //         style: TextStyle(
                      //           fontSize: 10,
                      //           color: Colors.black,
                      //           fontWeight: FontWeight.bold,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Image.asset("assets/images/done.png",
                            height:40,
                          )
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Container(
                      height: 30,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30, ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {},
                        child:  Text(
                            'Finish',
                            style: Theme.of(context).textTheme.bodyText2?.copyWith()),
                      ))
                ],
              ),



      );
    },

        );
      
  }



