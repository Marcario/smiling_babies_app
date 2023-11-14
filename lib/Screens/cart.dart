import 'package:flutter/material.dart';



class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  final List<CartItem> cart = [
    CartItem(productId: '1', name: 'Product 1', price: 10.0, quantity: 2),
    CartItem(productId: '2', name: 'Product 2', price: 15.0, quantity: 1),
    CartItem(productId: '3', name: 'Product 3', price: 20.0, quantity: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final item = cart[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text('Price: \$${item.price.toStringAsFixed(2)}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      item.setQuantity(item.quantity - 1);
                    });
                  },
                ),
                Text(item.quantity.toString()),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      item.setQuantity(item.quantity + 1);
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CartItem {
  final String productId;
  final String name;
  final double price;
  int quantity;

  CartItem({
    required this.productId,
    required this.name,
    required this.price,
    required this.quantity,
  });

  void setQuantity(int newQuantity) {
    quantity = newQuantity;
  }
}
