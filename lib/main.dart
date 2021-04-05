import 'package:flutter/material.dart';
import 'package:loja_vitual_example/screens/inicial/inicial_screen.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  runApp(MyApp());

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
      home: InicialScreen(),
    );
  }
}


