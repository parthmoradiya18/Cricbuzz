import 'package:cricbuzz/Cricbuzz_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Cricbuzz_page extends StatefulWidget {
  const Cricbuzz_page({Key? key}) : super(key: key);

  @override
  State<Cricbuzz_page> createState() => _Cricbuzz_pageState();
}

class _Cricbuzz_pageState extends State<Cricbuzz_page> {
  Cricbuzz_provider? True;
  Cricbuzz_provider? False;

  @override
  Widget build(BuildContext context) {
    False = Provider.of<Cricbuzz_provider>(context, listen: false);
    True = Provider.of<Cricbuzz_provider>(context, listen: true);
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.green.shade900,
          title: Text(
            "cricbuzz",
            style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
          ),
        ),
        body:
        Container(
          child:
          GridView.builder(
            itemCount: 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 250,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'WebScreen');
                  False!.loadurl(index);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange.shade300,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2,color: Colors.black),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 14),
                                child: Text(
                                  "${False!.name[index]}",
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),

                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "${False!.name[index]}",
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}