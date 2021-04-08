import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:line_icons/line_icons.dart';
import 'package:loja_vitual_example/common/error_box.dart';
import 'package:loja_vitual_example/screens/base/base_screen.dart';
import 'package:loja_vitual_example/screens/signup/signup_screen.dart';
import 'package:loja_vitual_example/stores/login_store.dart';
import 'package:loja_vitual_example/stores/user_manager_store.dart';
import 'package:mobx/mobx.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final LoginStore loginStore = LoginStore();

  final UserManagerStore userManagerStore = GetIt.I<UserManagerStore>();

  @override
  void initState() {
    super.initState();

    when((_) => userManagerStore.user != null, () {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => BaseScreen()),
            (Route<dynamic> route) => false,);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrar'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 100,
              child: Center(
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/logo_upplay.png'))),
                ),
              ),
            ),
            Observer(builder: (_) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ErrorBox(message: loginStore.error),
              );
            }),
            Observer(builder: (_){
              return Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        enabled: !loginStore.loading,
                        onChanged: loginStore.setEmail,
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                            errorText: loginStore.emailError,
                            border: InputBorder.none,
                            icon: Icon(Icons.email),
                            hintText: 'Email'),
                      ),
                    ),
                  ));
            }),
            Observer(builder: (_){
              return Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        enabled: !loginStore.loading,
                        onChanged: loginStore.setPassword,
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                            errorText: loginStore.passwordError,
                            border: InputBorder.none,
                            icon: Icon(Icons.lock),
                            hintText: 'Senha'),
                      ),
                    ),
                  ));
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      'Esqueceu sua senha?',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Principal'),
                    ),
                  ),
                ),
              ],
            ),
            Observer(builder: (_){
              return Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: SizedBox(
                  height: 54,
                  width: MediaQuery.of(context).size.width,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: loginStore.loginPressed,
                    color: Theme.of(context).primaryColor,
                    child: loginStore.loading ?
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    ) : Text(
                      'Entrar',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          fontFamily: 'Principal'),
                    ),
                    disabledColor: Theme.of(context).primaryColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'OU',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: SizedBox(
                height: 54,
                width: MediaQuery.of(context).size.width,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {},
                  color: Color(0xff166fe6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(LineIcons.facebook, color: Colors.white, size: 30,),
                      SizedBox(width: 5,),
                      Text(
                        'Iniciar sessão com facebook',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            fontFamily: 'Principal'),
                      ),
                    ],
                  ),
                  disabledColor: Theme.of(context).primaryColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            if(Platform.isIOS)
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: SizedBox(
                  height: 54,
                  width: MediaQuery.of(context).size.width,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(LineIcons.apple, color: Colors.white, size: 30,),
                        SizedBox(width: 5,),
                        Text(
                          'Iniciar sessão com Apple',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              fontFamily: 'Principal'),
                        ),
                      ],
                    ),
                    disabledColor: Theme.of(context).primaryColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: SizedBox(
                height: 54,
                width: MediaQuery.of(context).size.width,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email_outlined, color: Colors.white, size: 25,),
                      SizedBox(width: 5,),
                      Text(
                        'Criar Conta',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            fontFamily: 'Principal'),
                      ),
                    ],
                  ),
                  disabledColor: Theme.of(context).primaryColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
