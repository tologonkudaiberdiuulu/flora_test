import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../home/bloc/choose_bloc.dart';
import '../../../choose_date/bloc/date_bloc.dart';
import '../../../choose_date/bloc/date_event.dart';
import '../../../../shared/text_styles.dart';
import '../../../../shared/colors.dart';
import './background.dart';
import './gradient_button.dart';
import '../../../home/view/home.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chooseBloc = BlocProvider.of<ChooseBloc>(context);
    final dateBloc = BlocProvider.of<DateBloc>(context);
    return Background(
      child: Padding(
        padding: EdgeInsets.only(
          left: 31.w,
          top: 191.h,
          right: 28.w,
        ),
        child: Column(
          children: [
            Text(
              'Your Choice',
              style: AppTextStyles.nuniSemiBold25,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: AppColors.pinkColor,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 31.h),
              child: Text(
                chooseBloc.state,
                style: AppTextStyles.nuniBold30,
              ),
            ),
            const SizedBox(height: 80),
            Text(
              'Chosen Year',
              style: AppTextStyles.nuniSemiBold25,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: AppColors.pinkColor,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Text(
                (dateBloc.state + 1).toString(),
                style: AppTextStyles.nuniBold30,
              ),
            ),
            Container(
              // padding: EdgeInsets.only(
              //   left: 85.w,
              //   bottom: 81.h,
              //   right: 81.w,
              // ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 70.h),
              alignment: Alignment.center,
              child: GradientButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(HomeScreen.routeName);
                  dateBloc.add(ResetDateEvent());
                },
                child: Text(
                  'Reset',
                  style:
                      AppTextStyles.nuniNorm20.copyWith(color: AppColors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
