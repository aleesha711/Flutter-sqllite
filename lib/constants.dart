library constants;

import 'package:random_string/random_string.dart';

const int nameLength = 10;

List<Map> suggestions = [
  {'id': 1, 'name': "iPhone", 'isFavourite': 0},
  {'id': 2, 'name': "Motorolla", 'isFavourite': 1},
  {'id': 3, 'name': "Samsung", 'isFavourite': 0},
  {'id': 4, 'name': "Oppo", 'isFavourite': 0},
  {'id': 5, 'name': "Blackberry", 'isFavourite': 0},
  {'id': 6, 'name': "Nokia", 'isFavourite': 0},
  {'id': 7, 'name': "Qmobile", 'isFavourite': 0},
  {'id': 8, 'name': "Huawei", 'isFavourite': 1},
  {'id': 9, 'name': randomAlphaNumeric(nameLength), 'isFavourite': 0},
  {'id': 10, 'name': randomAlphaNumeric(nameLength), 'isFavourite': 1},
];
