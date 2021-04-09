import 'package:loja_vitual_example/repository/table_keys.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class Category {

  Category({this.id, this.title, this.position});

  Category.fromParse(ParseObject parseObject)
      : id = parseObject.objectId,
        title = parseObject.get(keyCategoryTitle),
        position = parseObject.get(keyCategoryPosition);

  String id;
  String title;
  int position;
}