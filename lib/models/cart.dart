import 'package:codepur/models/catalogModel.dart';

class CartModel {
  late CatalogModel _catalog;

  final List<int> itemIds = [];

  // ignore: unnecessary_getters_setters
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  //  get item in the cart

}
