import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/text_styles.dart';
import '../../../../shared/colors.dart';
import './background.dart';
import './gradient_button.dart';
import '../../../result/view/result.dart';
import '../../bloc/date_bloc.dart';
import '../../bloc/date_event.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateBloc = BlocProvider.of<DateBloc>(context);
    List<int> possibleYears = getYears(DateTime.now().year);
    FixedExtentScrollController controller =
        FixedExtentScrollController(initialItem: 1994);
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
              'Log in your date of birth',
              style: AppTextStyles.nuniSemiBold25,
            ),
            SizedBox(height: 60.h),
            Container(
              height: 335.h,
              child: CupertinoPicker(
                diameterRatio: 3.2,
                squeeze: 1,
                itemExtent: 67,
                onSelectedItemChanged: (yearInd) {
                  dateBloc.add(ChangeDateEvent(index: yearInd));
                },
                scrollController: controller,
                // selectionOverlay: Container(),
                selectionOverlay:
                    const CupertinoPickerDefaultSelectionOverlay(),
                children: modelBuilder<int>(
                  possibleYears,
                  (index, value) {
                    return Center(
                      child: Text(
                        value.toString(),
                        style: AppTextStyles.nuniBold40,
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 153.h),
            Padding(
              padding: EdgeInsets.only(
                left: 85.w,
                bottom: 81.h,
                right: 81.w,
              ),
              child: GradientButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(ResultScreen.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Next',
                      style: AppTextStyles.nuniNorm20
                          .copyWith(color: AppColors.white),
                    ),
                    SvgPicture.asset(
                      'assets/images/next.svg',
                      width: 27.w,
                      height: 27.w,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> modelBuilder<M>(
      List<M> models, Widget Function(int index, M model) builder) {
    return models
        .asMap()
        .map<int, Widget>(
            (index, model) => MapEntry(index, builder(index, model)))
        .values
        .toList();
  }

  List<int> getYears(int maxYear) {
    List<int> years = [];

    for (int i = 1; i < maxYear; i++) {
      years.add(i);
    }

    return years;
  }
}

class CupertinoPickerDefaultSelectionOverlay extends StatelessWidget {
  /// Creates an iOS 14 style selection overlay that highlights the magnified
  /// area (or the currently selected item, depending on how you described it
  /// elsewhere) of a [CupertinoPicker].
  ///
  /// The [background] argument default value is [CupertinoColors.tertiarySystemFill].
  /// It must be non-null.
  ///
  /// The [capLeftEdge] and [capRightEdge] arguments decide whether to add a
  /// default margin and use rounded corners on the left and right side of the
  /// rectangular overlay.
  /// Default to true and must not be null.
  const CupertinoPickerDefaultSelectionOverlay({
    Key? key,
    this.background = CupertinoColors.tertiarySystemFill,
    this.capLeftEdge = true,
    this.capRightEdge = true,
  })  : assert(background != null),
        assert(capLeftEdge != null),
        assert(capRightEdge != null),
        super(key: key);

  /// Whether to use the default use rounded corners and margin on the left side.
  final bool capLeftEdge;

  /// Whether to use the default use rounded corners and margin on the right side.
  final bool capRightEdge;

  /// The color to fill in the background of the [CupertinoPickerDefaultSelectionOverlay].
  /// It Support for use [CupertinoDynamicColor].
  ///
  /// Typically this should not be set to a fully opaque color, as the currently
  /// selected item of the underlying [CupertinoPicker] should remain visible.
  /// Defaults to [CupertinoColors.tertiarySystemFill].
  final Color background;

  /// Default margin of the 'SelectionOverlay'.
  static const double _defaultSelectionOverlayHorizontalMargin = 9;

  /// Default radius of the 'SelectionOverlay'.
  static const double _defaultSelectionOverlayRadius = 20;

  @override
  Widget build(BuildContext context) {
    const Radius radius = Radius.circular(_defaultSelectionOverlayRadius);

    return Container(
      margin: EdgeInsets.only(
        left: capLeftEdge ? _defaultSelectionOverlayHorizontalMargin : 0,
        right: capRightEdge ? _defaultSelectionOverlayHorizontalMargin : 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: capLeftEdge ? radius : Radius.zero,
          right: capRightEdge ? radius : Radius.zero,
        ),
        color: CupertinoDynamicColor.resolve(background, context),
      ),
    );
  }
}
