class ItemPreview {
  final String img;
  final String itemName;
  final String itemType;
  final String itemPrice;

  ItemPreview(
      {required this.img,
      required this.itemName,
      required this.itemType,
      required this.itemPrice});
}

List<ItemPreview> getChairItemDetails() {
  List<ItemPreview> list = [];
  list.add(
    ItemPreview(
      img: 'images/chair_1.png',
      itemName: 'Bar chair',
      itemType: 'Armless chair',
      itemPrice: '\$120',
    ),
  );
  list.add(
    ItemPreview(
      img: 'images/chair_2.png',
      itemName: 'Aged chair',
      itemType: 'Curve chair',
      itemPrice: '\$190',
    ),
  );
  list.add(
    ItemPreview(
      img: 'images/chair_3.png',
      itemName: 'Relax chair',
      itemType: 'Half arm chair',
      itemPrice: '\$120',
    ),
  );
  list.add(
    ItemPreview(
      img: 'images/chair_4.png',
      itemName: 'Circle chair',
      itemType: 'Armless chair',
      itemPrice: '\$170',
    ),
  );
  return list;
}

List<ItemPreview> getTableItemDetails() {
  List<ItemPreview> list = [];
  list.add(
    ItemPreview(
      img: 'images/table_1.png',
      itemName: 'Spiral Table',
      itemType: 'Classic',
      itemPrice: '\$190',
    ),
  );
  list.add(
    ItemPreview(
      img: 'images/table_2.png',
      itemName: 'Bond Table',
      itemType: 'set',
      itemPrice: '\$110',
    ),
  );
  list.add(
    ItemPreview(
      img: 'images/table_3.png',
      itemName: 'Mat Table',
      itemType: 'Mattle',
      itemPrice: '\$140',
    ),
  );
  list.add(
    ItemPreview(
      img: 'images/table_4.png',
      itemName: 'Center chair',
      itemType: 'Wooden',
      itemPrice: '\$190',
    ),
  );
  return list;
}
