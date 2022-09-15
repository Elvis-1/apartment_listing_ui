import 'dart:ui';

import 'package:apartment_listing_tutorial/widgets/circle_icon_button.dart';
import 'package:apartment_listing_tutorial/widgets/icon_text_container.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      // appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: height * 0.01, horizontal: width * 0.01),
        child: Column(children: [
          Stack(
            children: [
              // background image
              Container(
                height: height / 2,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/details_img.png',
                        ))),
              ),

              // linear gradient
              Container(
                height: height * .6,
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
                top: height * 0.06,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleIconButton(
                        height: height * 0.05,
                        icon: Icons.arrow_back_ios_new_rounded,
                      ),
                      Row(
                        children: [
                          CircleIconButton(
                            icon: Icons.favorite_border,
                            height: height * 0.05,
                          ),
                          SizedBox(
                            width: width * 0.07,
                          ),
                          CircleIconButton(
                              icon: Icons.bookmark_border,
                              height: height * 0.05)
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // lease button
              Positioned(
                bottom: height * 0.22,
                left: 0,
                right: 0,
                child: Center(
                  child: ClipRRect(
                    // Clip it cleanly.
                    borderRadius: BorderRadius.circular(20),

                    child: BackdropFilter(
                      blendMode: BlendMode.src,
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.5,
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

              // apartment address
              Positioned(
                  bottom: height * 0.15,
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

              // icon and text containers
              Positioned(
                bottom: height * 0.05,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconTextContainer(text: '3', icon: Icons.hotel_sharp),
                    IconTextContainer(
                        text: '4', icon: Icons.shopping_cart_sharp),
                    IconTextContainer(text: '2500', icon: Icons.window),
                  ],
                ),
              )
            ],
          ),

          // agent image and details
          Container(
            // padding: EdgeInsets.all(10),
            height: height * 0.09,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF2B2B2B),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // image and text row widget
                  Row(
                    children: [
                      // image
                      Image.asset('assets/images/shelly_img.png'),
                      // column of text widget
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Shelly Butcher',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Agent',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  // icon
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                ]),
          ),
          // description
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01),
                child: Text(
                  'Description',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Egestas ut consectetur integer aliquam integer scelerisque. Nibh malesuada lectus mattis aliquet eget elementum dictum non. Eu, viverra gravida leo vitae non eu laoreet. Egestas lorem amet, diam diam neque vestibulum semper. Dictum fusce tellus eu et viverra ac augue aliquam fusce. Pharetra laoreet arcu vitae interdum id',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),

          // apply button
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.06,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
            // padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    stops: const [1, 1],
                    colors: [Colors.red.shade700, Colors.transparent])),
            child: const Text(
              'Apply',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ]),
      ),
    );
  }
}
