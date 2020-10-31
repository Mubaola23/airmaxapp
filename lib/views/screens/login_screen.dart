import 'package:airmaxapp/views/screens/bottom_navbar.dart';
import 'package:airmaxapp/views/widgets/AppTextField.dart';
import 'package:airmaxapp/views/widgets/app_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isLoading = false;

  void login() async {
    FocusScope.of(context).unfocus();

    if (formKey.currentState.validate()) {
//      setState(() => isLoading = true);
//      await Future.delayed(Duration(seconds: 2));
//      setState(() => isLoading = false);

      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => BottomNavigation()));
    }
  }

  void snack() {
    final snackBar = SnackBar(content: Text('Coming soon'));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.white,
              child: Image.asset(
                'assets/bg-one.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Log in',
                        style: kHeadingTextStyle,
                      ),
                      kLargeVerticalSpacing,
                      Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppTextField(
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              validator: validateEmail,
                              hintText: 'Email',
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: kBlackColor,
                              ),
                            ),
                            kSmallVerticalSpacing,
                            AppTextField(
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              textInputAction: TextInputAction.done,
                              validator: validatePassword,
                              hintText: 'Password',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: kBlackColor,
                              ),
                            ),
                            kMediumVerticalSpacing,
                            AppButton(
                              onPressed: login,
                              text: 'Login to your account',
                              color: kRedColor,
                              textColor: kSecondaryColor,
                            ),
                            kLargeVerticalSpacing,
                            Text.rich(
                              TextSpan(
                                text: 'I dont have account. ',
                                style: TextStyle(color: Colors.grey.shade500),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Sign up',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: kBlueColor),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = snack,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
              left: 0,
              right: 0,
              bottom: 32,
              child: Column(
                children: [
                  kCircularProgressIndicator,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String validateEmail(String value) {
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value);
  return !emailValid ? 'Enter a Valid Email Address' : null;
}

String validatePassword(String value) =>
    value.length < 6 ? 'Password should be more than 5 Characters' : null;
