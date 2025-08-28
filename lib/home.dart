import 'package:flutter/material.dart';
import 'package:flutter_application_crud_app/add_product_screen.dart';
import 'package:flutter_application_crud_app/home_content.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Crud App")),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return HomeContent();
        },
        separatorBuilder: (context, index) {
          return Divider(indent: 70);
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddProductScreen()),);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
