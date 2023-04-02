import 'package:flutter/material.dart';
import 'package:flutter_ui_apps/screen/movie_app_ui/onboard_page.dart';
import 'package:flutter_ui_apps/utils/custom_extension.dart';

class MovieMainApp extends StatelessWidget {
  const MovieMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("movie app"),
      ),
      body: SizedBox(
        width: context.w,
        height: context.h * 0.5 - context.viewPaddingTop,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const OnboardPage(),
              ),
            );
          },
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  color: Colors.yellow,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("movie app body"),
                Text("movie app body 2"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
