class Categories {
  final String menClothes;
  final String jewelery;
  final String electronics;
  final String womenClothing;

  Categories(
      {required this.menClothes,
      required this.jewelery,
      required this.electronics,
      required this.womenClothing,
    });

  static Categories fromJson(List< dynamic> data) {
    return Categories(
      menClothes:'menClothes',
      jewelery: 'jewelery',
      electronics:'electronics',
      womenClothing:  'womenClothing',
    );
  }
}


//  [
//             "electronics",
//             "jewelery",
//             "men's clothing",
//             "women's clothing"
//             ]