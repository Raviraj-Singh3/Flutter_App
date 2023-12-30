import 'package:flutter/material.dart';
import 'package:flutter_api/drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var username = TextEditingController();
  var inputText = "Change Me";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Card(
            // color: Colors.blueAccent,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/studyRoom.jpg",
                ),
                const SizedBox(
                  height: 20,
                ),
                 Text(inputText,
                style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18,
                        fontStyle: FontStyle.italic,
                                ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: username,
                      decoration: const InputDecoration(
                        hintText: "Enter Text Here",
                        border: OutlineInputBorder(),
                        labelText: "Name",
                      ),
                  ),
                ),
                const SizedBox(height: 20,),
                FilledButton(onPressed: (){
                  setState(() {
                    inputText = username.text;
                    username.text = "";
                  });
                }, child: const Text("Submit"))
              ],
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
