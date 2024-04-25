import 'package:cricbuzz/Cricbuzz_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:webview_flutter/webview_flutter.dart';

class Cricbuzz_ extends StatefulWidget {
  const Cricbuzz_({Key? key}) : super(key: key);

  @override
  State<Cricbuzz_> createState() => _Cricbuzz_State();
}

class _Cricbuzz_State extends State<Cricbuzz_> {
  Cricbuzz_provider? True;
  Cricbuzz_provider? False;

  @override
  Widget build(BuildContext context) {
    False = Provider.of<Cricbuzz_provider>(context, listen: false);
    True = Provider.of<Cricbuzz_provider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: False!.webViewController!),
      ),
    );
  }
}