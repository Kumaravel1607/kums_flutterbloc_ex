import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Wish extends StatefulWidget {
  Wish({Key? key}) : super(key: key);

  @override
  State<Wish> createState() => _WishState();
}

class _WishState extends State<Wish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
    );
  }
}
