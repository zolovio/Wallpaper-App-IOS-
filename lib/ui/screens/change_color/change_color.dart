import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/color_model.dart';

class ChangeColorScreen extends StatefulWidget {
  const ChangeColorScreen({Key? key}) : super(key: key);

  @override
  State<ChangeColorScreen> createState() => _ChangeColorScreenState();
}

class _ChangeColorScreenState extends State<ChangeColorScreen> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
                color: Colors.black),
            child: ListView(
              shrinkWrap: true,
              controller: scrollController,
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
                            .headline4
                            ?.copyWith(color: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.cancel,
                            color: Colors.red,
                            size: 40,
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
                    Expanded(
                      child: Container(
                        // height: 300,
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: colorList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: colorList[index].color,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      colorList[index].name!,
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              );

                              ListTile(
                                leading: Container(
                                  clipBehavior: Clip.hardEdge,
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: colorList[index].color,
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                title: Text(colorList[index].name!),
                              );
                            }),
                      ),
                    ),
                    Expanded(
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
                                groupValue: gender,
                                onChanged: (value) {
                                  setState(() {
                                    gender = value.toString();
                                  });
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
                                groupValue: gender,
                                onChanged: (value) {
                                  setState(() {
                                    gender = value.toString();
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    )

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
          );
        },
        initialChildSize: 1.0,
        maxChildSize: 1.0,
        minChildSize: 0.3);
  }
}
