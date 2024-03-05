import 'dart:developer';
import 'package:e_commarce/Modals/product_model.dart';
import 'package:e_commarce/helpers/Api_helper.dart';
import 'package:flutter/cupertino.dart';

class ProductController extends ChangeNotifier {
  List<product> allProduct = <product>[];
  List<String> allCategory = <String>[];

  String selectCategory = "All";

  selectedCategory({required String category}) {
    selectCategory = category;
    notifyListeners();
  }

  init() async {
    allProduct = await ApiHelper.apiHelper.getdata();
    allCategory = allProduct.map((e) => e.category).toSet().toList();
    notifyListeners();
  }

  ProductController() {
    init();
    notifyListeners();
  }

  get AllProducts {
    return allProduct;
  }
}
// ProductController() {
//   Pro();
// }
//
// Pro() async {
//   allProduct = await ApiHelper.apiHelper.getdata() ?? [];
//   log("Data:$allProduct");
//   notifyListeners();
// }
