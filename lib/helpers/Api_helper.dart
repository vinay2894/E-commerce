import 'dart:convert';
import 'dart:math';
import 'package:e_commarce/Modals/product_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  ApiHelper._();
  static final ApiHelper apiHelper = ApiHelper._();

  String api = 'https://dummyjson.com/products';

  getdata() async {
    http.get(
      Uri.parse(api),
    );
    http.Response response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List alldata = data['products'];
      List<product> allproduct =
          alldata.map((e) => product.fromMap(data: e)).toList();

      return allproduct;
    }
  }
}
