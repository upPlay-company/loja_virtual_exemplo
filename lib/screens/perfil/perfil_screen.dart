import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:loja_vitual_example/stores/user_manager_store.dart';

class PerfilScreen extends StatelessWidget {

  final UserManagerStore userManagerStore = GetIt.I<UserManagerStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Sua Conta'),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: (){
              if (userManagerStore.isLoggedIn) {
                userManagerStore.logout();
                Navigator.of(context)
                    .pushNamed('/base');
              } else {
                Navigator.of(context)
                    .pushNamed('/login');
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 25, right: 20),
              child: Text(userManagerStore.isLoggedIn ? 'Sair' : 'Entrar', style: TextStyle(fontSize: 16)),
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
              child: userManagerStore.isLoggedIn ? Text(
                'Olá, ${userManagerStore.user.surname}',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ) : Text(
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
