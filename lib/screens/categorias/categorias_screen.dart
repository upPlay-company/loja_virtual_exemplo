import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:loja_vitual_example/common/error_box.dart';
import 'package:loja_vitual_example/model/category/category.dart';
import 'package:loja_vitual_example/stores/category_store.dart';

class CategoriasScreen extends StatelessWidget {
  CategoriasScreen({this.showAll = false, this.selected});

  final Category selected;
  final bool showAll;

  final CategoryStore categoryStore = GetIt.I<CategoryStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias'),
        centerTitle: true,
      ),
      body: Center(
        child: Observer(builder: (_) {
          if (categoryStore.error != null) {
            return ErrorBox(
              message: categoryStore.error,
            );
          } else if (categoryStore.categoryList.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            final categories = showAll
                ? categoryStore.allCategoryList
                : categoryStore.categoryList;

            return ListView.separated(
              itemCount: categories.length,
              separatorBuilder: (_, __) {
                return Divider(height: 0.1, color: Colors.grey);
              },
              itemBuilder: (_, index) {
                final category = categories[index];

                return InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    color: category.id == selected?.id
                        ? Colors.purple.withAlpha(50)
                        : null,
                    alignment: Alignment.center,
                    child: Text(
                      category.title,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: category.id == selected?.id
                            ? FontWeight.bold
                            : null,
                      ),
                    ),
                  ),
                );
              },
            );
          }
        }),
      ),
    );
  }
}

