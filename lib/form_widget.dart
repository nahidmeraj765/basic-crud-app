import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formkey,
          child: Column(
            spacing: 10,
            children: [
              TextFormField(
                controller: _nameController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Product name",
                  labelText: "Product name",
                ),
              ),
              TextFormField(
                controller: _idController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Product id",
                  labelText: "Product id",
                ),
              ),
              TextFormField(
                controller: _quantityController,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Product quantity",
                  labelText: "Product quantity",
                ),
              ),
              TextFormField(
                controller: _priceController,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Product price",
                  labelText: "Product price",
                ),
              ),
              TextFormField(
                controller: _imageController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Image url",
                  labelText: "Image url",
                ),
              ),
              SizedBox(height: 10),
              FilledButton(onPressed: () {}, child: Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _idController.dispose();
    _quantityController.dispose();
    _priceController.dispose();
    _imageController.dispose();
    super.dispose();
  }
}
