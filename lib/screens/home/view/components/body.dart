import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import './background.dart';
import './choise_container.dart';
import '../../bloc/choose_bloc.dart';
import '../../../choose_date/view/choose_date.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _chooseBloc = BlocProvider.of<ChooseBloc>(context);
    return Background(
      child: Padding(
        padding: EdgeInsets.only(
          left: 34.w,
          top: 253.h,
          right: 37.w,
        ),
        child: Column(
          children: [
            ChoiseContainer(
              mainTitle: 'Track my period',
              subTitle: 'contraception and wellbeing',
              onPressed: () {
                Navigator.of(context).pushNamed(ChooseDateScreen.routeName);
                _chooseBloc.add(PeriodChoose());
              },
            ),
            SizedBox(height: 73.h),
            ChoiseContainer(
              mainTitle: 'Get pregnant',
              subTitle: 'learn about reproductive health',
              onPressed: () {
                Navigator.of(context).pushNamed(ChooseDateScreen.routeName);
                _chooseBloc.add(PregnantChoose());
              },
            ),
          ],
        ),
      ),
    );
  }
}
