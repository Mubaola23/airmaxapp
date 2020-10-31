import 'package:airmaxapp/core/constants.dart';
import 'package:airmaxapp/views/widgets/nav_button.dart';
import 'package:airmaxapp/views/widgets/product_container.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: NavButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            LineIcons.arrow_left,
            size: 30.0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: Image.asset(
                'assets/bg-three.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Explore Nike\n Series',
                          textAlign: TextAlign.center,
                          style: kHeadingTextStyle),
                      kLargeVerticalSpacing,
                      Container(
                        padding: EdgeInsets.only(
                          top: 32.0,
                        ),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: kLargeTopRoundBorderRadius),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  kSmallHorizontalSpacing,
                                  ProductContainer2(
                                    headingText: 'Casual',
                                    itemCount: '433',
                                    image: Image.asset('assets/shoe1.png'),
                                    item: ' items',
                                    color: kYellowColor,
                                    price: '200',
                                  ),
                                  kSmallHorizontalSpacing,
                                  ProductContainer2(
                                    textColor: kSecondaryColor,
                                    headingText: 'Casual',
                                    itemCount: '433',
                                    image: Image.asset('assets/shoe1.png'),
                                    item: ' items',
                                    color: kBlueColor,
                                    price: '200',
                                  ),
                                  kSmallHorizontalSpacing,
                                  ProductContainer2(
                                    textColor: kPrimaryColor,
                                    headingText: 'Casual',
                                    itemCount: '433',
                                    image: Image.asset('assets/shoe1.png'),
                                    item: ' items',
                                    color: kRedColor,
                                    price: '200',
                                  ),
                                  kSmallHorizontalSpacing,
                                ],
                              ),
                            ),
                            kSmallVerticalSpacing,
                            Row(
                              children: [
                                kSmallHorizontalSpacing,
                                Text(
                                  'New Trending',
                                  style: kCaptionTextStyle,
                                ),
                              ],
                            ),
                            kSmallVerticalSpacing,
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  kSmallHorizontalSpacing,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ProductContainer(
                                        image: Image.asset(
                                          'assets/shoe1.png',
                                          width: 150,
                                        ),
                                        color: Colors.pink.shade100,
                                      ),
                                      kExtraSmallVerticalSpacing,
                                      Text(
                                        'Jully Kingston',
                                        style: kSubtitleTextStyle,
                                      ),
                                    ],
                                  ),
                                  kSmallHorizontalSpacing,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ProductContainer(
                                        image: Image.asset(
                                          'assets/shoe1.png',
                                          width: 150,
                                        ),
                                        color: Colors.orange.shade100,
                                      ),
                                      kExtraSmallVerticalSpacing,
                                      Text(
                                        'Jully Kingston',
                                        style: kSubtitleTextStyle,
                                      ),
                                    ],
                                  ),
                                  kSmallHorizontalSpacing,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ProductContainer(
                                        image: Image.asset(
                                          'assets/shoe1.png',
                                          width: 150,
                                        ),
                                        color: Colors.green.shade100,
                                      ),
                                      kExtraSmallVerticalSpacing,
                                      Text(
                                        'Jully Kingston',
                                        style: kSubtitleTextStyle,
                                      ),
                                    ],
                                  ),
                                  kSmallHorizontalSpacing,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ProductContainer(
                                        image: Image.asset(
                                          'assets/shoe1.png',
                                          width: 150,
                                        ),
                                        color: Colors.blue.shade100,
                                      ),
                                      kExtraSmallVerticalSpacing,
                                      Text(
                                        'Jully Kingston',
                                        style: kSubtitleTextStyle,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            kSmallVerticalSpacing,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
