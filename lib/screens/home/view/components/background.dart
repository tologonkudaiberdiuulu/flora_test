import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset('assets/images/first_top_left.svg'),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset('assets/images/first_bottom_right.svg'),
          ),
          Positioned(
            bottom: 136.h,
            left: 67.w,
            child: SvgPicture.asset('assets/images/first_bottom_left.svg'),
          ),
          Positioned(
            bottom: 208.h,
            left: 141.w,
            child: SvgPicture.asset('assets/images/first_red_ring.svg'),
          ),
          child,
        ],
      ),
    );
  }
}
