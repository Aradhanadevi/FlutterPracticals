import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "ListView",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  List<String> Products = [
    "Mouse",
    "Tomato",
    "Computer",
    "ComicBooks",
    "Purse",
    "Gun", 
    "Mobile",
    "Fan",
    "Basket Ball",
    "Recipe Book For Dummies"
  ];
  List<String> ProductsDteails = [
    "Cute Mouse Which can also speak",
    "Vegitable to make some good food",
    "Computer which you can not afford",
    "Comic book, read it and find out what it is about",
    "Not avilable, as someone stole it.",
    "Real Gun 100%", 
    "Sotlen Mobile, is anyone reading this.",
    "Buy fan a it is cool to stay cool",
    "Basket Ball to play basketball, Disclamer: Don't throw at others face",
    "Recipe book for people who can't boil water"
  ];
  List<int> Price = [1067, 3436, 7855, 553, 1000, 676, 9737, 3532, 436, 7565, 999];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
        backgroundColor: const Color.fromARGB(255, 255, 136, 204),
      ),
      body: Container(
        child: ListView.builder(
          
            itemCount: Products.length,
            //Whatever vlaue u defined in the product, like how many item you want to display
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 188, 244, 156),
                  child: Text(Products[index][0],
                  style: TextStyle(
                    color: Colors.white
                    ),
                  ),
                ),
                textColor: const Color.fromARGB(255, 116, 90, 97),
                title: Text(Products[index]),
                subtitle: Text(ProductsDteails[index]),
                trailing: Text(Price[index].toString() + "₹"),
                
              );
            }),
      ),
    );
  }
}
