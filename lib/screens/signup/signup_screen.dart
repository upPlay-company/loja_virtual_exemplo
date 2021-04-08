import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:loja_vitual_example/common/error_box.dart';
import 'package:loja_vitual_example/screens/base/base_screen.dart';
import 'package:loja_vitual_example/stores/signup_store.dart';
import 'package:loja_vitual_example/stores/user_manager_store.dart';
import 'package:mobx/mobx.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final SignupStore signupStore = SignupStore();

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
        title: Text('Cadastro'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Observer(builder: (_) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ErrorBox(message: signupStore.error),
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
                        enabled: !signupStore.loading,
                        onChanged: signupStore.setSurname,
                        autocorrect: false,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                            errorText: signupStore.surnameError,
                            border: InputBorder.none,
                            icon: Icon(Icons.person),
                            hintText: 'Apelido'),
                      ),
                    ),
                  ));
            }),
            Observer(builder: (_){
              return Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        enabled: !signupStore.loading,
                        onChanged: signupStore.setName,
                        autocorrect: false,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                            errorText: signupStore.nameError,
                            border: InputBorder.none,
                            icon: Icon(Icons.person),
                            hintText: 'Nome completo'),
                      ),
                    ),
                  ));
            }),
            Observer(builder: (_){
              return Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        enabled: !signupStore.loading,
                        onChanged: signupStore.setEmail,
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                            errorText: signupStore.emailError,
                            border: InputBorder.none,
                            icon: Icon(Icons.email),
                            hintText: 'Email'),
                      ),
                    ),
                  ));
            }),
            Observer(builder: (_){
              return Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        enabled: !signupStore.loading,
                        onChanged: signupStore.setPhone,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(15),
                          FilteringTextInputFormatter.digitsOnly,
                          TelefoneInputFormatter()
                        ],
                        decoration: InputDecoration(
                            errorText: signupStore.phoneError,
                            border: InputBorder.none,
                            icon: Icon(Icons.phone_android),
                            hintText: 'Celular'),
                      ),
                    ),
                  ));
            }),
            Observer(builder: (_){
              return Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        enabled: !signupStore.loading,
                        onChanged: signupStore.setPass1,
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                            errorText: signupStore.pass1Error,
                            border: InputBorder.none,
                            icon: Icon(Icons.lock),
                            hintText: 'Senha'),
                      ),
                    ),
                  ));
            }),
            Observer(builder: (_){
              return Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        enabled: !signupStore.loading,
                        onChanged: signupStore.setPass2,
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                            errorText: signupStore.pass2Error,
                            border: InputBorder.none,
                            icon: Icon(Icons.lock),
                            hintText: 'Confirmar Senha'),
                      ),
                    ),
                  ));
            }),
            Observer(builder: (_){
              return Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: SizedBox(
                  height: 54,
                  width: MediaQuery.of(context).size.width,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: signupStore.signUpPressed,
                    color: Theme.of(context).primaryColor,
                    child: signupStore.loading
                        ? CircularProgressIndicator(
                      valueColor:
                      AlwaysStoppedAnimation(Colors.white),
                      ) : Text(
                      'Cadastrar',
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
            })
          ],
        ),
      ),
    );
  }
}
