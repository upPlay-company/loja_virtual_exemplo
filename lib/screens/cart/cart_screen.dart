import 'package:flutter/material.dart';
import 'package:loja_vitual_example/common/empty_card.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrinho'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: EmptyCard(
        iconData: Icons.remove_shopping_cart,
        title: 'Nenhum Produto no Carrinho',
      ),
    );
  }
}
