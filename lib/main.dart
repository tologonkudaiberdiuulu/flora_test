import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screens/home/view/home.dart';
import './shared/routes.dart';
import './screens/home/bloc/choose_bloc.dart';
import './screens/choose_date/bloc/date_bloc.dart';

void main() => runApp(const CounterApp());

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: () {
          return MultiBlocProvider(
            providers: [
              BlocProvider<ChooseBloc>(
                create: (BuildContext context) => ChooseBloc(),
              ),
              BlocProvider<DateBloc>(
                create: (BuildContext context) => DateBloc(),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              // theme: buildThemeData(),
              title: 'FloraTest',
              initialRoute: HomeScreen.routeName,
              routes: routes,
            ),
          );
        });
  }
}
