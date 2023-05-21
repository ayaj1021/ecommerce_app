import 'package:flutter_riverpod/flutter_riverpod.dart';

final checkBoxProvider =
    StateProvider<List<int?>>((ref) => []);

// class CheckBoxDetails {
//   bool checked;
//   int itemId;

//   CheckBoxDetails(this.checked, this.itemId);
//}
