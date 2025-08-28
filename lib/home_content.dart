import 'package:flutter/material.dart';
import 'package:flutter_application_crud_app/update_product_screen.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
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
            PopupMenuItem(value: ProductOptions.update, child: Text("Update")),
            PopupMenuItem(value: ProductOptions.delete, child: Text("Delete")),
          ];
        },
        onSelected: (ProductOptions selectedOptions) {
          if (selectedOptions == ProductOptions.delete) {
            print("delete");
          } else if (selectedOptions == ProductOptions.update) {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateProductScreen()));
          }
        },
      ),
    );
  }
}

enum ProductOptions { update, delete }
