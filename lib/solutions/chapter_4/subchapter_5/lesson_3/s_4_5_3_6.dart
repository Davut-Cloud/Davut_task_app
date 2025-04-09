import 'package:flutter/material.dart';

// Produktmodell
class Product {
  String name;
  double price;

  Product({required this.name, required this.price});
}

class S4536 extends StatelessWidget {
  const S4536({super.key});

  @override
  Widget build(BuildContext context) {
    return const PS5AccessoryListWidget();
  }
}

class PS5AccessoryListWidget extends StatelessWidget {
  const PS5AccessoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> productList = [
      Product(name: 'DualSense Wireless-Controller', price: 69.99),
      Product(name: 'Pulse 3D Headset', price: 99.99),
      Product(name: 'Ladestation für Controller', price: 29.99),
      Product(name: 'PS5 Media Remote', price: 24.99),
      Product(name: 'HD-Kamera für PS5', price: 59.99),
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: productList.length,
      itemBuilder: (context, index) {
        final product = productList[index];
        return ListTile(
          leading: const Icon(Icons.shopping_cart),
          title: Text(product.name),
          subtitle: Text('${product.price.toStringAsFixed(2)} €'),
        );
      },
    );
  }
}
