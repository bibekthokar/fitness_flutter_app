import 'package:fitness_mobile/config/constants.dart';
import 'package:fitness_mobile/config/palette.dart';
import 'package:fitness_mobile/screens/auth/auth_screens.dart';
import 'package:fitness_mobile/widgets/common/buttons/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = 'welcome_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(DefaultPadding),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/welcome-bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 84,
                  width: 82,
                ),
                Text(
                  'Welcome to Fitly',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  'Best app for  building your fitness  from home',
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Button(
                  onPressed: () {
                    Navigator.of(context).pushNamed(SignupScreen.routeName);
                  },
                  title: 'Continue with email',
                  icon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: DefaultPadding,
                ),
                Button(
                  onPressed: () {},
                  title: 'Continue with Google',
                  color: Palette.whiteColor,
                  textColor: Palette.blackColor,
                  icon: SvgPicture.asset('assets/icons/google.svg'),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
