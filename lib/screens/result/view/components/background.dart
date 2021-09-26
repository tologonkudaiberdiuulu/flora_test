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
            child: SvgPicture.asset('assets/images/second_top_left.svg'),
          ),
          Positioned(
            top: 12,
            left: 24,
            child: SvgPicture.asset('assets/images/second_line.svg'),
          ),
          Positioned(
            top: 28,
            right: 75,
            child: SvgPicture.asset('assets/images/second_top_right.svg'),
          ),
          Positioned(
            top: 63,
            right: 70,
            child: SvgPicture.asset('assets/images/second_red_ring.svg'),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset('assets/images/second_bottom_right.svg'),
          ),
          Positioned(
            bottom: 72,
            left: 28,
            child: SvgPicture.asset('assets/images/second_bottom_left.svg'),
          ),
          Positioned(
            bottom: 290,
            right: 0,
            child: SvgPicture.asset('assets/images/second_right.svg'),
          ),
          child,
        ],
      ),
    );
  }
}
