import 'package:flutter/material.dart';
import 'package:flutter_ui_apps/screen/movie_app_ui/styles.dart';
import 'package:flutter_ui_apps/utils/custom_extension.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.w,
        height: context.h,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //header
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Movie Details",
                    style: textStyleBold.copyWith(
                      fontSize: 17,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert_rounded),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            const Spacer(),
            //image
            SizedBox(
              height: 450,
              child: Hero(
                tag: imageUrl,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.fill,
                      )),
                ),
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            Text(
              imageUrl.split("/").last.split(".").first,
              style: textStyleBold,
            ),

            const SizedBox(
              height: 15,
            ),

            Text(
              "Production by: disney pixar",
              style: textStyleRegular,
            ),

            const SizedBox(
              height: 15,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.date_range,
                  color: Colors.deepOrangeAccent,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "16-06-2004",
                  style: textStyleRegular,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: const Text("Descriptions"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Stars",
                          style: textStyleRegular.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
