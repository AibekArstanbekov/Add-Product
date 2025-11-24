import 'package:flutter/material.dart';
import 'package:flutter_new_projeckt/widgets/drop_down_btn.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Product')),
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Add New Product",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigoAccent,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: Text("Product Name"),
                  hintText: "Enter Your Product Name",
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: Text("Product Description"),
                  hintText: "Enter Your Product Description",
                ),
                maxLines: 4,
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: Text("Image URL"),
                  hintText: "Enter Your Image URL",
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: Text("Product Price"),
                  hintText: "Enter Your Product Price",
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Flexible(
                    child: DropDownBtn(
                      items: ["Cate1", "Cate2", "Cate3"],
                      selectedItemText: "Category",
                      onSelected: (selectedValue) {
                        print(selectedValue);
                      },
                    ),
                  ),
                  Flexible(
                    child: DropDownBtn(
                      items: ["Brand1", "Brand2", "Brand3"],
                      selectedItemText: "Brand",
                      onSelected: (selectedValue) {
                        print(selectedValue);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Offer Product ?",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              DropDownBtn(
                items: ["true", "false"],
                selectedItemText: "Offer ?",
                onSelected: (selectedValue) {
                  print(selectedValue);
                },
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Text("Add Product"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
