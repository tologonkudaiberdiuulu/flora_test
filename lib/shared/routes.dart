import 'package:flutter/material.dart';

import '../screens/home/view/home.dart';
import '../screens/choose_date/view/choose_date.dart';
import '../screens/result/view/result.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  ChooseDateScreen.routeName: (context) => const ChooseDateScreen(),
  ResultScreen.routeName: (context) => const ResultScreen(),
};
