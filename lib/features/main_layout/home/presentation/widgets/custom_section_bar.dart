import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles_manager.dart';
import '../../../../../core/utils/values_manager.dart';

class CustomSectionBar extends StatelessWidget {
  final String sectionNname;
  final Function function;

  const CustomSectionBar(
      {super.key, required this.sectionNname, required this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sectionNname,
            style: getMediumStyle(
              fontSize: 18,
              color: ColorManager.darkBlue,
            ),
          ),
          TextButton(
            onPressed: () {
              function();
            },
            child: Text(
              'view all',
              style: getMediumStyle(color: ColorManager.darkBlue),
            ),
          ),
        ],
      ),
    );
  }
}