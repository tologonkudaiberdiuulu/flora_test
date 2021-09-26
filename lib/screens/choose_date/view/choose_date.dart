import 'package:flutter/material.dart';

import './components/body.dart';

class ChooseDateScreen extends StatelessWidget {
  static const String routeName = '/choose_date';
  const ChooseDateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
