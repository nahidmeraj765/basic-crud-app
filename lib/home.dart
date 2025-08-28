import 'package:flutter/material.dart';

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
          return ListTile(
            leading: CircleAvatar(),
            title: Text("Product Name"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Product ID"),
                Row(children: [Text("Quantity"), Text("Price")]),
              ],
            ),
            trailing: PopupMenuButton<ProductOptions>(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: ProductOptions.update,
                    child: Text("Update"),
                  ),
                  PopupMenuItem(
                    value: ProductOptions.delete,
                    child: Text("Delete"),
                  ),
                ];
              },
              onSelected: (ProductOptions selectedOptions) {
                if (selectedOptions == ProductOptions.delete) {
                  print("delete");
                } else if (selectedOptions == ProductOptions.update) {
                  print("update");
                }
              },
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(indent: 70);
        },
      ),
    );
  }
}

enum ProductOptions { update, delete }
