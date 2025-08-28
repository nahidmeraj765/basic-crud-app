import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Product name",
                labelText: "Product name",
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Product id",
                labelText: "Product id",
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Product quantity",
                labelText: "Product quantity",
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Product price",
                labelText: "Product price",
              ),
            ),
            SizedBox(height: 20),
            FilledButton(onPressed: () {}, child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}
