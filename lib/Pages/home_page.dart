import 'package:flutter/material.dart';
import 'package:flutter_new_projeckt/Pages/add_product_page.dart';
import 'package:flutter_new_projeckt/controller/home_controller.dart';
import 'package:get/get.dart';

// ignore: depend_on_referenced_packages

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (ctrl) {
        return Scaffold(
          appBar: AppBar(title: Text("Foodware Admin")),
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Adidas'),
                subtitle: Text("Price: 100"),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    ctrl.testMethod();
                    ctrl.test;
                    print("delete");
                  },
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(AddProductPage());
            },
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
