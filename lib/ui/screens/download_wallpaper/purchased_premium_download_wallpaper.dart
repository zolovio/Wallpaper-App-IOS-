import 'package:flutter/material.dart';

showPremiumPurchasedDialog(BuildContext context) {
  showDialog(
      builder: (context) => Container(
            child: AlertDialog(
              insetPadding: EdgeInsets.symmetric(horizontal: 80),
              backgroundColor: Colors.grey,
              title: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                      Icons.check,
                      size: 60,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: Text(
                        "Download Completed",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              ),
              //content:
            ),
          ),
      context: context);
}
