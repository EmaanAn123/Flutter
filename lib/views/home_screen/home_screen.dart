import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/consts.dart';
import 'package:flutter_application_1/consts/list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: 'Search anything',
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: VxSwiper.builder(
                  aspectRatio: 16 / 9,
                  height: 150,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  itemCount: sliderslist.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 13,
                        horizontal: 4.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            sliderslist[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 6), // Reduced space
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8.0,
                        ), // Added bottom padding
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              todaydeal,
                              width: 35, // Adjusted width of the icon
                              height: 40, // Adjusted height of the icon
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              height: 8,
                            ), // Added space between image and text
                            const Text(
                              "Today's Deal",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12, // Increased font size
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8.0,
                        ), // Added bottom padding
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              flashdeal,
                              width: 35, // Adjusted width of the icon
                              height: 40, // Adjusted height of the icon
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              height: 4,
                            ), // Added space between image and text
                            const Text(
                              "Flash Sale",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12, // Increased font size
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15), // Added space between sections
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: VxSwiper.builder(
                  aspectRatio: 16 / 9,
                  height: 150,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  itemCount: secondsliderslist.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4.0,
                        vertical: 13,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            secondsliderslist[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10), // Added space between sections
            Expanded(
              // Added Expanded widget
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          imgp1,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 12),
                        Image.asset(
                          imgp2,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 12),
                        Image.asset(
                          imgp5,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          imgp3,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 12),
                        Image.asset(
                          imgp4,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 12),
                        Image.asset(
                          imgp6,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
