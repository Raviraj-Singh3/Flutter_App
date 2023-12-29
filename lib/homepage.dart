import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.purple,
      ),
      body: Image.network('https://picsum.photos/250?image=9'),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            // DrawerHeader(
            //   decoration: BoxDecoration(color: Colors.purple),
            //   child: Text(
            //     "Hi, i am drawer",
            //     style: TextStyle(color: Colors.white),
            //   ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Raviraj Singh"),
              accountEmail: Text("raviraj@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/dp.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("raviraj@gmail.com"),
              trailing: Icon(Icons.send),
            ),
          ],
        ),
      ),
    );
  }
}
