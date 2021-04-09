import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import 'package:line_icons/line_icons.dart';
import 'package:loja_vitual_example/screens/cart/cart_screen.dart';
import 'package:loja_vitual_example/screens/categorias/categorias_screen.dart';
import 'package:loja_vitual_example/screens/home/home_screen.dart';
import 'package:loja_vitual_example/screens/perfil/perfil_screen.dart';

class BaseScreen extends StatefulWidget {

  @override
  _BaseScreenState createState() => _BaseScreenState();
}


class _BaseScreenState extends State<BaseScreen> {

  int _selectedIndex = 0;
  /*static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);*/
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoriasScreen(),
    CartScreen(),
    PerfilScreen(),
  ];

  Widget currentScreen = HomeScreen();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bmnav.BottomNav(
        iconStyle: bmnav.IconStyle(color: Colors.black87, onSelectColor: Colors.black),
        index: _selectedIndex,
        labelStyle: bmnav.LabelStyle(textStyle: TextStyle(color: Colors.black87, fontSize: 10), onSelectTextStyle: TextStyle(color: Colors.black, fontSize: 14)),
        onTap: (i){
          setState(() {
            _selectedIndex = i;
            currentScreen = _widgetOptions[i];
          });
        },
        items: [
          bmnav.BottomNavItem(LineIcons.home, label: 'Home'),
          bmnav.BottomNavItem(LineIcons.list, label: 'Categorias'),
          bmnav.BottomNavItem(LineIcons.shoppingCart, label: 'Carrinho'),
          bmnav.BottomNavItem(LineIcons.user, label: 'Perfil'),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
