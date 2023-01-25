import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        title: Text("TextField Example")),
     
      body: Container(
        alignment: Alignment.center,
        child: SizedBox(
          width: 250,
          child: TextField(
            decoration: InputDecoration(
            labelText: 'Please search here ',
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
           // prefixIcon: Icon(Icons.search, color: Colors.red),
            suffixIcon: Icon(Icons.search,color: Colors.green,),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple.shade300),
            ),
            ),
            style: TextStyle(fontSize: 20),
            maxLines: 2,
            minLines: 1,
            
            ),
        ),
      ),
      
    );
  }
}
