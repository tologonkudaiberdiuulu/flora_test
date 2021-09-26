import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/colors.dart';

class GradientButton extends StatelessWidget {
  final Widget child;
  final double? width;
  final VoidCallback onPressed;

  const GradientButton({
    required this.child,
    this.width,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 4.0),
            colors: [
              AppColors.gradientMain,
              AppColors.gradientSecond,
            ],
          ),
          color: Colors.deepPurple.shade300,
          borderRadius: BorderRadius.circular(30),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            minimumSize: MaterialStateProperty.all(
                Size(width != null ? width! : double.infinity, 50)),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            // elevation: MaterialStateProperty.all(3),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: onPressed,
          child: Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 50.w,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
