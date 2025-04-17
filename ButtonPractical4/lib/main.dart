import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    title: "Differnt Button",
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Button Widget"),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Pressed');
            // check on console theere you will get output
          },
          child: Icon(Icons.edit),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Aradhanadevi Jadeja"),
                accountEmail: Text("aradhanadevi123@gmail.com"),
                currentAccountPicture: Image.network(
                 "https://plus.unsplash.com/premium_photo-1688385848467-781c5394c017?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHdvbWFufGVufDB8fDB8fHww",
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                subtitle: Text("Personal info"),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                subtitle: Text("marwadiedu.in"),
                trailing: Icon(Icons.send),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           
          ),
        )
     ); }}
