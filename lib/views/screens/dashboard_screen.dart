import 'package:airmaxapp/core/constants.dart';
import 'package:airmaxapp/views/screens/explore_screen.dart';
import 'package:airmaxapp/views/widgets/nav_button.dart';
import 'package:airmaxapp/views/widgets/product_container.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: NavButton(
          icon: Icon(
            Icons.menu,
            size: 30.0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.white,
              child: Image.asset(
                'assets/bg-two.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 32),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kExtraLargeVerticalSpacing,
                        Image.asset(
                          'assets/mark.png',
                          width: 100,
                        ),
                        kExtraSmallVerticalSpacing,
                        Text(
                          'AIRMAX',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 70),
                        ),
                        kSmallVerticalSpacing,
                        Text(
                          '2020',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 40,
                              fontWeight: FontWeight.w400),
                        ),
                        kExtraSmallVerticalSpacing,
                        Row(
//                crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '200',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            kSmallHorizontalSpacing,
                            Icon(LineIcons.arrow_right)
                          ],
                        ),
                        Image.asset('assets/shoe1.png'),
                        kSmallVerticalSpacing,
                        Text(
                          'Favourite',
                          style: kCaptionTextStyle,
                        ),
                        kSmallVerticalSpacing,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                              kSmallHorizontalSpacing,
                            ],
                          ),
                        ),
                        kLargeVerticalSpacing,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => ExploreScreen()));
                                },
                                child: Text('Explore Nike Series')),
                            Icon(LineIcons.arrow_right)
                          ],
                        ),
                        kLargeVerticalSpacing,
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
