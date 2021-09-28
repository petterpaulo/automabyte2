import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    OneSignal.shared.setAppId("c1d61d5c-7231-4218-a66e-c58f9fd63b0e");

// The promptForPushNotificationsWithUserResponse function will show the iOS push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
    OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
      print("Accepted permission: $accepted");
    });


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Automabyte',
      home: Scaffold(

        body: WebView(
          initialUrl: 'http://www.automabyte.com/login',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

