import 'package:flora_test/screens/choose_date/view/choose_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/text_styles.dart';
import '../../../../shared/colors.dart';

class ChoiseContainer extends StatelessWidget {
  final String mainTitle;
  final String subTitle;
  final VoidCallback onPressed;

  const ChoiseContainer({
    Key? key,
    required this.mainTitle,
    required this.subTitle,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.pinkColor,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 31.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mainTitle,
                  style: AppTextStyles.nuniBold30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0, top: 0),
                  child: Text(
                    subTitle,
                    style: AppTextStyles.nuniNorm20,
                  ),
                ),
              ],
            ),
            SvgPicture.asset('assets/images/arrow.svg'),
          ],
        ),
      ),
    );
  }
}
