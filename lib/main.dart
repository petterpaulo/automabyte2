import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Automabyte',
      home: Scaffold(

        body: WebView(
          initialUrl: 'https://automabyte.com/login',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
