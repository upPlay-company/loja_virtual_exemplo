import 'package:loja_vitual_example/model/category/category.dart';
import 'package:loja_vitual_example/repository/parse_errors.dart';
import 'package:loja_vitual_example/repository/table_keys.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class CategoryRepository {
  Future<List<Category>> getList() async {
    final queryBuilder = QueryBuilder(ParseObject(keyCategoryTable))
      ..orderByAscending(keyCategoryPosition);

    final response = await queryBuilder.query();

    if (response.success) {
      return response.results.map((p) => Category.fromParse(p)).toList();
    } else {
      throw ParseErrors.getDescription(response.error.code);
    }
  }
}
