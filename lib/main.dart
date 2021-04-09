import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:loja_vitual_example/screens/base/base_screen.dart';
import 'package:loja_vitual_example/screens/inicial/inicial_screen.dart';
import 'package:loja_vitual_example/screens/login/login_screen.dart';
import 'package:loja_vitual_example/stores/category_store.dart';
import 'package:loja_vitual_example/stores/user_manager_store.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(MyApp());

}

void setupLocators() {
  GetIt.I.registerSingleton(CategoryStore());
  GetIt.I.registerSingleton(UserManagerStore());
}

Future<void> initializeParse() async {
    await Parse().initialize(
        'ABBst5ynreJGx6fBL3fPAnVppguQseBEEM7fvMHn',
        'https://parseapi.back4app.com/',
        clientKey: 'h2UwwsLa8pzooXM58JrmOZlnhf6rlJDo7LNVGoCj',
        autoSendSessionId: true,
        debug: true
    );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loja Virtual',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black
      ),
    initialRoute: 'inicial',
    onGenerateRoute: (settings){
    switch(settings.name){
      case '/login':
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case '/base':
        return MaterialPageRoute(
          builder: (_) => BaseScreen(),
        );
      case '/inicial':
      default:
        return MaterialPageRoute(
          builder: (_) => InicialScreen(),
        );
       }
      }
    );
  }
}


