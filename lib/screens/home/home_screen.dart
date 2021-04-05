import 'package:flutter/material.dart';

import 'components/destaque_screen.dart';

class HomeScreen extends StatefulWidget {

  HomeScreen({this.inicialPage = 0});

  final int inicialPage;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController =
        TabController(length: 5, vsync: this, initialIndex: widget.inicialPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        toolbarHeight: 125,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: (){
                    //TODO: BUSCAR PRODUTOS GERAL
                  },
                  child: Icon(Icons.search, color: Colors.white,)),
              Container(
                  height: 50,
                  child: Image.asset('images/logo_upplay.png')),
              GestureDetector(
                  onTap: (){
                    //TODO: BUSCAR FAVORITOS
                  },
                  child: Icon(Icons.favorite_outline, color: Colors.white,))
            ],
          ),
        ),
        bottom: TabBar(
          controller: tabController,
          labelColor: Colors.black,
          indicatorColor: Colors.white,
          isScrollable: true,
          tabs: [
            Tab(child: Text('Destaques', style: TextStyle(fontSize: 13, color: Colors.white))),
            Tab(child: Text('Calças', style: TextStyle(fontSize: 13, color: Colors.white),)),
            Tab(child: Text('Moletons', style: TextStyle(fontSize: 13, color: Colors.white))),
            Tab(child: Text('Jaquetas', style: TextStyle(fontSize: 13, color: Colors.white))),
            Tab(child: Text('Blusas', style: TextStyle(fontSize: 13, color: Colors.white))),
          ],
        ),
      ),
      body: TabBarView(
        physics: ScrollPhysics(),
        controller: tabController,
        children: [
          DestaqueScreen(),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.grey,
          ),
          Container(
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
