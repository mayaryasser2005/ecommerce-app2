import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/styles_manager.dart';

class SizeWidget extends StatelessWidget {
  const SizeWidget(
      {super.key,
      required this.index,
      required this.sizeNumber,
      required this.selectedIndex});

  final int sizeNumber;
  final int index;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22.r,
      backgroundColor:
          index == selectedIndex ? ColorManager.primary : Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 9.h),
        child: Text(
          '$sizeNumber',
          style: getMediumStyle(
                  color: index == selectedIndex
                      ? ColorManager.white
                      : ColorManager.appBarTitleColor)
              .copyWith(fontSize: 18.sp),
        ),
      ),
    );
  }
}