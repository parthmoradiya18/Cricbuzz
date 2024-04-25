import 'package:cricbuzz/Cricbuzz_Provider.dart';
import 'package:cricbuzz/Cricbuzz_page.dart';
import 'package:cricbuzz/Cricbuzz_web_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';


void main()
{
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Cricbuzz_provider(),)
        ],
        child: Sizer(
          builder: (context, orientation, deviceType) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              routes: {
                '/' : (context) => Cricbuzz_page(),
                'Cricbuzz' : (context) => Cricbuzz_(),
              },
            );
          },
        ),
      )
  );
}
