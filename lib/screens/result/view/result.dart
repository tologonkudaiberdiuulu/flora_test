import 'package:flutter/material.dart';

import './components/body.dart';

class ResultScreen extends StatelessWidget {
  static const String routeName = '/result';
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
