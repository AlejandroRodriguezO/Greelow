enum Routes {
  splash(name: 'splash', path: '/'),
  profile(name: 'profile', path: '/profile'),
  notification(name: 'notification', path: '/notification'),
  home(name: 'home', path: '/home'),
  moveMoney(name: 'moveMoney', path: '/move-money'),
  cards(name: 'cards', path: '/cards'),
  forYou(name: 'forYou', path: '/for-you');

  const Routes({required this.name, required this.path});
  final String name;
  final String path;
}
