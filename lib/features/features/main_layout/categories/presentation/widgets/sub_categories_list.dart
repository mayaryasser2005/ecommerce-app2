import 'package:flutter/material.dart';

import '../../../../../../core/core/resources/assets_manager.dart';
import '../../../../../../core/core/resources/color_manager.dart';
import '../../../../../../core/core/resources/font_manager.dart';
import '../../../../../../core/core/resources/styles_manager.dart';
import '../../../../../../core/core/resources/values_manager.dart';
import 'category_card_item.dart';
import 'sub_category_item.dart';

class SubCategoriesList extends StatelessWidget {
  const SubCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: CustomScrollView(
        slivers: <Widget>[
          // category title
          SliverToBoxAdapter(
            child: Text(
              'Laptops & Electronics',
              style: getBoldStyle(
                  color: ColorManager.primary, fontSize: FontSize.s14),
            ),
          ),
          // the category card
          SliverToBoxAdapter(
            child: CategoryCardItem("Laptops & Electronics",
                ImageAssets.categoryCardImage, goToCategoryProductsListScreen),
          ),
          // the grid view of the subcategories
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: 26,
                (context, index) => SubCategoryItem(
                    'Watches',
                    ImageAssets.subcategoryCardImage,
                    goToCategoryProductsListScreen),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.75,
                mainAxisSpacing: AppSize.s8,
                crossAxisSpacing: AppSize.s8,
              ))
        ],
      ),
    );
  }

  goToCategoryProductsListScreen() {
    // todo implement this function
  }
}