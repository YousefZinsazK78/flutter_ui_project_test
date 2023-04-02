import 'package:flutter/material.dart';
import 'package:flutter_ui_apps/screen/movie_app_ui/styles.dart';
import 'package:flutter_ui_apps/utils/custom_extension.dart';

class MovieMainApp extends StatefulWidget {
  const MovieMainApp({super.key});

  @override
  State<MovieMainApp> createState() => _MovieMainAppState();
}

class _MovieMainAppState extends State<MovieMainApp> {
  late final PageController pageViewController;

  final imageList = <String>[
    "images/incredibles.jpg",
    "images/frozen.jpg",
    "images/brave.jpg",
  ];

  int currentIndex = 1;
  int currentBottomNavigationIndex = 0;

  @override
  void initState() {
    super.initState();
    pageViewController = PageController(
      viewportFraction: 0.7,
      initialPage: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //header or appbar
              Container(
                margin: EdgeInsets.only(top: 10 - context.viewPaddingTop),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back!",
                          style: textStyleBold,
                        ),
                        Text(
                          "Hi, Zanoar Renaldie",
                          style: textStyleRegular,
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_outlined),
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepOrangeAccent,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Watch movies &\nTv shows online",
                      style: textStyleBold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.all(17),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          hintText: "Search Movies...",
                          suffixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 15),
                height: 30,
                width: context.w,
                alignment: Alignment.center,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  children: [
                    Text(
                      "Popular",
                      style: textStyleBold.copyWith(
                        fontSize: 18,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Latest",
                      textAlign: TextAlign.center,
                      style: textStyleRegular,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Categories",
                      style: textStyleRegular,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Up Coming",
                      style: textStyleRegular,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Recently",
                      style: textStyleRegular,
                    ),
                  ],
                ),
              ),

              ///image view -> listview and dot
              Container(
                height: 350,
                margin: const EdgeInsets.only(top: 25),
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        controller: pageViewController,
                        pageSnapping: true,
                        physics: const BouncingScrollPhysics(),
                        onPageChanged: (value) {
                          setState(() {
                            currentIndex = value;
                          });
                        },
                        itemCount: imageList.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                width: 90,
                                margin: const EdgeInsets.all(9),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      imageList[index],
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 9,
                                right: 9,
                                child: Container(
                                  width: 70,
                                  height: 90,
                                  decoration: const BoxDecoration(
                                    color: Colors.black87,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        "8.0",
                                        style: textStyleRegular.copyWith(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                          imageList.length,
                          (index) => AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: index == currentIndex ? 15 : 7,
                            height: 7,
                            margin: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: index == currentIndex
                                  ? Colors.deepOrangeAccent
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentBottomNavigationIndex,
        onTap: (value) {
          setState(() {
            currentBottomNavigationIndex = value;
          });
        },
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_download_sharp),
            label: "download",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "perfile",
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }
}
