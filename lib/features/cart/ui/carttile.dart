import 'package:bloc1/features/cart/bloc/cart_bloc.dart';
import 'package:bloc1/features/home/models/home_product_model.dart';
import 'package:flutter/material.dart';

class CartTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  final CartBloc cartBloc;
  const CartTileWidget(
      {Key? key, required this.productDataModel, required this.cartBloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      productDataModel.image,
                    ))),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            productDataModel.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            productDataModel.category,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$' + productDataModel.price.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        // homeBloc.add(HomeProductWishButtonNavigateEvent());
                      },
                      icon: Icon(Icons.favorite_border_outlined)),
                  IconButton(
                      onPressed: () {
                        cartBloc.add(CartRemoveEvent(
                            productDataModel: productDataModel));
                        // homeBloc.add(HomeCartWishButtonNavigateEvent());
                      },
                      icon: Icon(Icons.shopping_cart))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
