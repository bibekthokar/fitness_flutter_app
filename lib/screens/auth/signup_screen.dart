import 'package:fitness_mobile/config/constants.dart';
import 'package:fitness_mobile/widgets/auth/design_container.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  static String routeName = 'signup_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DesignContainer(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
          margin: const EdgeInsets.only(top: DefaultPadding * 3),
          child: Column(
            children: [
              Text(
                'Sign up and \nstarting workout',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
