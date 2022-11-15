import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/color_model.dart';
import '../../../data/models/notch_style_model.dart';

class SelectStyleScreen extends StatelessWidget {
  const SelectStyleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          color: Colors.grey[300]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select Style",
                  style: Theme.of(context).textTheme.headline5,
                ),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.cancel,
                      color: Colors.red,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: colorList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            notchStyleList[index],
                            height: 60,
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
        ],
      ),
    );
  }
}
