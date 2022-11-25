import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/color_model.dart';

class SelectStyleScreen extends StatefulWidget {
  const SelectStyleScreen({Key? key}) : super(key: key);

  @override
  State<SelectStyleScreen> createState() => _ChangeColorScreenState();
}

class _ChangeColorScreenState extends State<SelectStyleScreen> {
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
                color: Color(0xff7f7f7f)
            ),
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
                        "Select Style",
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
                Container(
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
              ],
            ),
          );
        },
        initialChildSize: 1.0,
        maxChildSize: 1.0,
        minChildSize: 0.3);
  }
}
