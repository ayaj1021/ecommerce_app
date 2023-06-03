import 'package:furniture_ecommerce_app/models/item_preview_model.dart';

List<ItemPreview> getTableItemDetails() {
  List<ItemPreview> list = [];
  list.add(
    ItemPreview(
      image: 'images/table_1.png',
      title: 'Spiral Table',
      category: 'Classic',
      price: 190,
    ),
  );
  list.add(
    ItemPreview(
      image: 'images/table_2.png',
      title: 'Bond Table',
      category: 'set',
      price: 110,
    ),
  );
  list.add(
    ItemPreview(
      image: 'images/table_3.png',
      title: 'Mat Table',
      category: 'Mattle',
      price: 140,
    ),
  );
  list.add(
    ItemPreview(
      image: 'images/table_4.png',
      title: 'Center chair',
      category: 'Wooden',
      price: 190,
    ),
  );
  return list;
}

List<ItemPreview> getCupboardItemDetails() {
  List<ItemPreview> list = [];
  list.add(
    ItemPreview(
      image: 'images/cupboard_1.png',
      title: 'Stand Cupboard',
      category: 'Classic',
      price: 90,
    ),
  );
  list.add(
    ItemPreview(
      image: 'images/cupboard_2.png',
      title: 'Mini Size Cupboard',
      category: 'Fit',
      price: 110,
    ),
  );
  list.add(
    ItemPreview(
      image: 'images/cupboard_3.png',
      title: 'Mat Cupboard',
      category: 'Mattle',
      price: 160,
    ),
  );
  list.add(
    ItemPreview(
      image: 'images/cupboard_1.png',
      title: 'Wooden Cupboard',
      category: 'Wooden',
      price: 120,
    ),
  );
  return list;
}
