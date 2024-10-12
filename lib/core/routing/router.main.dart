part of 'router.dart';

class AppRouter {
  AppRouter();

  final navigatorKey = GlobalKey<NavigatorState>();

  Route? generateRoute(RouteSettings settings) {
    // this arguments to be passed to any screen like this (argument as ClassName)
    final arguments=settings.arguments;

    switch (settings.name){
      case Routes.onBoarding:
        return _getPageRoute(const OnboardingScreen());
      case Routes.login:
        return _getPageRoute(const LoginScreen());
      default:
        return _getPageRoute(Scaffold(
          body: Center(
            child:Text('No Routes defined for ${settings.name}'),
          ),
        ));
    }
    return null;
  }

  PageRoute _getPageRoute(Widget child) {
    if (Platform.isIOS) {
      return CupertinoPageRoute(
        builder: (context) => child,
      );
    } else {
      return CustomPageRouter(child);
    }
  }
}

class CustomPageRouter<T> extends PageRouteBuilder<T> {
  final Widget child;

  CustomPageRouter(this.child)
      : super(
      pageBuilder: (BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,) => child,
      transitionDuration: const Duration(milliseconds: 300),
      transitionsBuilder: (BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,) {
        const begin = 0.0;
        const end = 1.0;
        var tween = Tween<double>(begin: begin, end: end);
        return FadeTransition(
          opacity: animation.drive(tween),
          child: child,
        );
      });
}
