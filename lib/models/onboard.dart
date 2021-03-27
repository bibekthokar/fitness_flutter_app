class Onboard {
  final String title;
  final String subtitle;
  final String image;

  Onboard({
    this.title,
    this.subtitle,
    this.image,
  });
}

List onboardingList = [
  Onboard(
    title: "Workout From Home",
    subtitle: "Build your fitness just from home without \ngoing outside",
    image: 'assets/images/onboard-1.png',
  ),
  Onboard(
    title: "Track Your Activity",
    subtitle: "Easily track your fitness and workout \nactivity",
    image: 'assets/images/onboard-2.png',
  ),
  Onboard(
    title: "Achieve Your Goals",
    subtitle: "Planning your workouts and lets achive \nyour goals",
    image: 'assets/images/onboard-3.png',
  )
];
