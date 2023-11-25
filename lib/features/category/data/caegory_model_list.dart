import 'package:digital_store/core/utils/assets_manager.dart';

import 'category_model.dart';

class CategoryModelList
{
  static List<CategoryModel>categoryList=[
    CategoryModel(image: AssetsManager.deskTop, name: 'Desk Top', id: AssetsManager.deskTop ),
    CategoryModel(image: AssetsManager.lapTop, name: 'Lap Top', id: AssetsManager.lapTop ),
    CategoryModel(image: AssetsManager.computerAcc, name: 'Pc Accessories', id: AssetsManager.computerAcc ),
    CategoryModel(image: AssetsManager.mobiles, name: 'Mobiles', id: AssetsManager.mobiles ),
    CategoryModel(image: AssetsManager.embedded, name: 'Embedded Systems', id: AssetsManager.embedded ),
  ];
}