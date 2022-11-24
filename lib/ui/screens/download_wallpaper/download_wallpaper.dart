import 'package:flutter/material.dart';

showDownloadWallpaperDialog(BuildContext context) {
  showDialog(
    builder: (context) =>  Container(
              // height: MediaQuery.of(context).size.height*0.7,
              padding: const EdgeInsets.only(left: 20,right:20,top: 10),
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
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
                                  size: 70,
                                ),
                              ],
                            ),
                            Text(
                              'Download \nCompleted',
                              style: TextStyle(
                                  letterSpacing: 3,
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
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
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'How to set',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            wordSpacing: 4,
                            letterSpacing: 4),
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        'iNvisible iSland Wallpaper?',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 3,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
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
                                  style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white,fontWeight: FontWeight.w500)),

                              Text(
                                'Go to Photos App & \n Chosse Wallpaper',
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white)

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
                        padding: EdgeInsets.symmetric(vertical: 5),
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
                                  style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white,fontWeight: FontWeight.w500)),

                              Text(
                                'Tap on Options',
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white)

                              ),
                            ],
                          ),
                           Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.upload,
                              color: Colors.white,
                            ),
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

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  <Widget>[
                              Text(
                                'Step 3',
                                  style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white,fontWeight: FontWeight.w500)),

                              Text(
                                'Tap to Use as \n Wallpaper',
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white)

                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.mobile_friendly,
                              color: Colors.white,
                            ),
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

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  <Widget>[
                              Text(
                                'Step 4',
                          style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white,fontWeight: FontWeight.w500)),


                              Text(
                                'Tap Done',
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white)

                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: SizedBox(
                                height: 30,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Done',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                              )),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
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
                                style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white,fontWeight: FontWeight.w500)),
                              Text(
                                'Select Customize \n Home Screen',
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white)
                              ),
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: SizedBox(
                                height: 30,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(

                                      'Customise Home Screen',
                                      style: TextStyle(
                                        fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                              )),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
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
                                  style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white,fontWeight: FontWeight.w500)),

                              Text(
                                'Turn off Blur',
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white)

                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.pin_drop,
                              color: Colors.white,
                            ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  <Widget>[
                              Text(
                                'Step 7',
                                  style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white,fontWeight: FontWeight.w500)),

                              Text(
                                'Select Done',
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white)

                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: SizedBox(
                              height: 30,
                              width: 70,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Done',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
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
                      Padding(
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
                              style: Theme.of(context).textTheme.headline6?.copyWith()),
                        ))
                    ],
                  ),
                ),
              ),
            ),
     context: context,
        );
      
  }



