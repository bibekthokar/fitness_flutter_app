import 'package:fitness_mobile/config/constants.dart';
import 'package:fitness_mobile/config/palette.dart';
import 'package:fitness_mobile/models/onboard.dart';
import 'package:fitness_mobile/screens/screens.dart';
import 'package:fitness_mobile/widgets/common/buttons/button.dart';
import 'package:flutter/material.dart';

class OnboardScreen extends StatefulWidget {
  static String routeName = 'onboarding';
  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            children: onboardingList
                .map(
                  (onboard) => Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(onboard.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          Positioned(
            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: DefaultPadding,
                  vertical: DefaultPadding * 2,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    currentIndex != onboardingList.length - 1
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacementNamed(
                                  WelcomeScreen.routeName);
                            },
                            child: Text(
                              'Skip',
                              style: Theme.of(context).textTheme.button,
                            ),
                          )
                        : SizedBox(),
                    OnBoardContent(
                      onButtonClick: () {
                        if (currentIndex < 2) {
                          setState(() {
                            currentIndex = currentIndex + 1;
                          });
                        } else {
                          Navigator.of(context)
                              .pushReplacementNamed(WelcomeScreen.routeName);
                        }
                      },
                      onboard: onboardingList[currentIndex],
                      currentIndex: currentIndex,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class OnBoardContent extends StatelessWidget {
  final Onboard onboard;
  final int currentIndex;
  final Function onButtonClick;
  const OnBoardContent(
      {this.onboard, this.currentIndex, @required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int index = 0; index < onboardingList.length; index++)
              AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                width: currentIndex == index ? 27 : 8,
                height: 8,
                margin:
                    const EdgeInsets.symmetric(horizontal: DefaultPadding / 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: currentIndex == index
                      ? Theme.of(context).primaryColor
                      : Palette.gray5,
                ),
              ),
          ],
        ),
        Text(
          '${onboard.title}',
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          '${onboard.subtitle}',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: Palette.gray2,
              ),
        ),
        const SizedBox(
          height: DefaultPadding * 4,
        ),
        Button(
          onPressed: onButtonClick,
          title: onboardingList.length - 1 != currentIndex
              ? 'Next'
              : 'Sign Up Now',
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }
}
