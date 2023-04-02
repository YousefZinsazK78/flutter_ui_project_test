import 'package:flutter/material.dart';
import 'package:flutter_ui_apps/screen/health_care/config/constants.dart';
import 'package:flutter_ui_apps/screen/movie_app_ui/styles.dart';
import 'package:flutter_ui_apps/utils/custom_extension.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.w,
        height: context.h - context.viewPaddingTop,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //header text
            Text(
              "Enjoy Your Movie \nWatch Everywhere",
              style: textStyleBold,
            ),
            const SizedBox(
              height: 25,
            ),
            //slogan text
            Text(
              "Stream unlimited movies and tv shows  \non your phone,tables,laptop, and tv",
              style: textStyleRegular,
            ),

            const SizedBox(
              height: 25,
            ),

            //button
            SizedBox(
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.deepOrangeAccent,
                ),
                child: const Text("Sign up with gmail"),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //slogan text
                        Text(
                          "2.5M +",
                          style: textStyleBold,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Users",
                          style: textStyleRegular,
                        ),

                        const SizedBox(
                          height: 25,
                        ),
                        //slogan text
                        Text(
                          "Alerts",
                          style: textStyleBold,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Customise\nyou alert",
                          style: textStyleRegular,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        //slogan text
                        Text(
                          "300K +",
                          style: textStyleBold,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Happy\ncustomers",
                          style: textStyleRegular,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        //slogan text
                        Text(
                          "skip",
                          style: textStyleBold.copyWith(
                              color: Colors.deepOrangeAccent),
                        ),
                      ],
                    ),
                  ),
                  Image.asset("images/kids2.jpg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
