import 'package:flutter/material.dart';
import 'package:loja_vitual_example/screens/login/login_screen.dart';

class PerfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sua Conta'),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => LoginScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 25, right: 20),
              child: Text('Entrar'),
            ),
          )
        ],
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Olá Visitante!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                  color: Colors.white,
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Seus Dados', style: TextStyle(fontSize: 15)),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                  color: Colors.white,
                  height: 50,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Meus Pagamentos',
                                  style: TextStyle(fontSize: 15)),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                              )
                            ],
                          ),
                        ),
                      ])),
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                  color: Colors.white,
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Meus Pedidos', style: TextStyle(fontSize: 15)),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            SizedBox(height: 5,),
            GestureDetector(
              onTap: (){},
              child: Container(
                  color: Colors.white,
                  height: 50,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Trocas',
                                  style: TextStyle(fontSize: 15)),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                              )
                            ],
                          ),
                        ),
                      ])),
            ),
            SizedBox(height: 5,),
            GestureDetector(
              onTap: (){},
              child: Container(
                  color: Colors.white,
                  height: 50,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Notificações',
                                  style: TextStyle(fontSize: 15)),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                              )
                            ],
                          ),
                        ),
                      ])),
            ),
            SizedBox(height: 5,),
            GestureDetector(
              onTap: (){},
              child: Container(
                  color: Colors.white,
                  height: 50,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Endereços',
                                  style: TextStyle(fontSize: 15)),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                              )
                            ],
                          ),
                        ),
                      ])),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){},
              child: Container(
                  color: Colors.white,
                  height: 50,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sobre o aplicativo',
                                  style: TextStyle(fontSize: 15)),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                              )
                            ],
                          ),
                        ),
                      ])),
            ),
            SizedBox(height: 5,),
            GestureDetector(
              onTap: (){},
              child: Container(
                  color: Colors.white,
                  height: 50,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Termos de uso',
                                  style: TextStyle(fontSize: 15)),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                              )
                            ],
                          ),
                        ),
                      ])),
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
