import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Cricbuzz_provider extends ChangeNotifier {
  WebViewController? webViewController;


  List name = [
    "Cricbuzz",
  ];

  List Link = [
    "https://www.cricbuzz.com/",
  ];

  void loadurl(int inde) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse("${Link[inde]}"),
    );
  }
}