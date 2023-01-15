import 'package:flutter/material.dart';
import 'package:messanger_clone_app/presentation/cores/string.dart';

import 'presentation/pages/home/home.dart';

class AppRoutes {
  static Route<dynamic> onOngerateRoute(RouteSettings settings) {
    //final args = settings.arguments;

    switch (settings.name) {
      case AppString.initial:
        return _materialPageRoute(page: const HomePage());

      default:
        return _materialPageRoute(page: const ErrorPage());
    }
  }
}

MaterialPageRoute _materialPageRoute({required Widget page}) {
  return MaterialPageRoute(builder: (builder) => page);
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Route Error"),
    );
  }
}
