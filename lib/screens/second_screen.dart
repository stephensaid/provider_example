import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/shipping_cart.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<ShoppingCart>(context);

    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () => context.read<ShoppingCart>().addItem("Tamal"),
            child: const Icon(Icons.add)),
        appBar: AppBar(
          title: const Text('Shopping cart'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(cart.count.toString()),
              Text('${cart.cart}'),
              const Divider(),
              Text('${context.watch<ShoppingCart>().count}'),
              Text('${context.watch<ShoppingCart>().cart}'),
            ],
          ),
        ));
  }
}
