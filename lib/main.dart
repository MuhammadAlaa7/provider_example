import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/my_provider.dart';

import 'dashboard.dart';


void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: ChangeNotifierProvider(
        create: ( ctx ) => MyProvider(),
      child:  HomePage(),
      ) ,
    );
  }
}

class HomePage extends StatelessWidget {

int n = 0;
  @override
  Widget build(BuildContext context) {
    print('n= ${n++}');   // here i'm making sure that the whole build method will not be run
    // i just need the part that  i gave them the access to listen to the provider
    return Scaffold(
      appBar: AppBar(),
      body: const Dashboard(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            Provider.of<MyProvider>(context,listen: false ).increment();
            // i don't want to listen to the provider here so the listen is false

        },
      child:
        const Icon(Icons.add,),), 
    );
  }
}
