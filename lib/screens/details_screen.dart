import 'dart:ui';

import 'package:apartment_listing_tutorial/widgets/circle_icon_button.dart';
import 'package:apartment_listing_tutorial/widgets/icon_text_container.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        backgroundColor: Colors.black,
        // appBar: AppBar(),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/details_img.png',
                      ))),
            ),
            Container(
              padding: EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height * 0.8,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black45, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter),
              ),
            ),

            // header
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height * 0.05,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleIconButton(
                      height: MediaQuery.of(context).size.height * 0.05,
                      icon: Icons.arrow_back_ios_new_rounded,
                    ),
                    Row(
                      children: [
                        CircleIconButton(
                          icon: Icons.favorite_border,
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.07,
                        ),
                        CircleIconButton(
                            icon: Icons.bookmark_border,
                            height: MediaQuery.of(context).size.height * 0.05)
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.15,
            // ),
            // lease button
            Positioned(
              bottom: 300,
              left: 0,
              right: 0,
              child: Center(
                child: ClipRRect(
                  // Clip it cleanly.
                  borderRadius: BorderRadius.circular(10),

                  child: BackdropFilter(
                    blendMode: BlendMode.src,
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: 60,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Lease',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 16),
                          ),
                          Text(
                            "\$175,000.00",
                            style: TextStyle(
                                letterSpacing: 1.5,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
                bottom: 250,
                left: 0,
                right: 0,
                child: Column(
                  children: const [
                    Text(
                      'WestVille Apartments',
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      '3544 NW 24th Street Road',
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.0,
                          //fontWeight: FontWeight.bold,
                          color: Colors.white54),
                    ),
                  ],
                )),
            Positioned(
              bottom: 150,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconTextContainer(text: '3', icon: Icons.hotel_sharp),
                  IconTextContainer(text: '4', icon: Icons.shopping_cart_sharp),
                  IconTextContainer(text: '2500', icon: Icons.window),
                  // RotatedBox(
                  //   quarterTurns: 1,
                  //   child: Container(
                  //     //  transform: Matrix4,
                  //     height: 100,
                  //     width: 100,
                  //     color: Colors.green,
                  //     child: Text('hello world'),
                  //   ),
                  // )
                ],
              ),
            )
          ],
        ));
  }
}
