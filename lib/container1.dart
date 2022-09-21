import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/my_provider.dart';

class Counter1 extends StatelessWidget {
  const Counter1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
          width: 150,
          height: 150,
          child:  Center(
            child: Text(
              Provider.of<MyProvider>(context).counter.toString(),
          // the provider package then the class that have represents the provider
         // then the members inside that class
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          )),
    );
  }
}
