  import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BMIResultScreen extends StatelessWidget {
  final bool isMAle;
  final int result;
   final int age;

  const BMIResultScreen({Key? key, required this.isMAle, required this.result, required this.age}) : super(key: key);

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(Icons.keyboard_arrow_left,
        ),
          ),
          title: const Text('BMI result'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Gender: ${isMAle ? 'Male': 'female'}' ,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text('Your BMI:$result ',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text('Age:$age ',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      );
    }
  }
