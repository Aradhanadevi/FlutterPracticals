import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Grid View",
        theme: ThemeData(
          primarySwatch: Colors.lime,
        ),
        home: GridViewScreen());
  }
}

class GridViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grid View Example"),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 1.0),
            itemCount: 20,
            itemBuilder: (context, index) {
              return GridItem(
                index: index
                );
            },
          ),
        ));
  }
}

class GridItem extends StatelessWidget {
  final int index;
  const GridItem({super.key, required this.index});
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(15.0),
        
      ),
      child: Center(
        child: Text(
          "Item $index",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          ),
      ),
      
    );
  }
}
