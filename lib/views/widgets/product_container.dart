import 'package:airmaxapp/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ProductContainer extends StatelessWidget {
  final Color color;
  final Image image;

  const ProductContainer({
    Key key,
    @required this.color,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width / 2.5,
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          kSmallVerticalSpacing,
        ],
      ),
    );
  }
}

class ProductContainer2 extends StatelessWidget {
  final Color color;
  final Image image;
  final String headingText;
  final String itemCount;
  final String price;
  final String item;
  final Color textColor;
  final Container child;

  const ProductContainer2({
    Key key,
    @required this.color,
    this.image,
    this.child,
    this.item,
    this.textColor,
    this.headingText,
    this.itemCount,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width / 2.2,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headingText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
          ),
          kSmallVerticalSpacing,
          image,
          kSmallVerticalSpacing,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: itemCount,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: item,
                          style: TextStyle(
                              color: textColor, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  kExtraSmallVerticalSpacing,
                  Text.rich(
                    TextSpan(
                      text: '\$',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: price,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              AddContainer(
                containerColor: kBlackColor,
                icon: Icon(
                  LineIcons.plus,
                  color: kSecondaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AddContainer extends StatelessWidget {
  final Color containerColor;

  final Icon icon;
  const AddContainer({
    Key key,
    this.icon,
    this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: icon,
    );
  }
}
