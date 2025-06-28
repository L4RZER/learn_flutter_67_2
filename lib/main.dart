import 'package:flutter/material.dart';
import 'package:learn_flutter_67_2/screen/addForm.dart';

// Step 4: sperate the Home widget into its own file
// import 'screen/home.dart';
import 'package:learn_flutter_67_2/screen/home.dart';
import 'package:learn_flutter_67_2/screen/item.dart';

void main() {
  // Step 1: appBar and body
  //runApp(const MyApp());


  //const app = MaterialApp(title: "My Title", home: Text("Hello World"));
  //runApp(app);
  //runApp(
  //  MaterialApp(
  //    title:"My Title",
  //    home: Scaffold(
  //      appBar: AppBar(
  //       title: Text("My App"),
  //        backgroundColor: Colors.blue,
  //        centerTitle: true,
  //      ),
  //      body: Text("Hello Flutter"),
  //    )
  //  )
  //);

  //Step 2: Stateless widget
  // runApp(
  //   MaterialApp(
  //     title: "My Title",
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text("My App"),
  //         backgroundColor: const Color.fromARGB(255, 236, 24, 169),
  //         centerTitle: true,
  //       ),
  //      // body: Home(),
  //       body: Item(),
  //     ),
  //   ),
  // );
  runApp(const AddForm());
}

// Step 16: Routing
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body: const Item(),
      ),
    );
  }
}