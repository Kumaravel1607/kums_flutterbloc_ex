import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc1/data/cart_item.dart';
import 'package:bloc1/data/ecommerce.dart';
import 'package:bloc1/features/home/models/home_product_model.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemoveEvent>(cartRemoveEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(cartItems: cartItems));
  }

  FutureOr<void> cartRemoveEvent(
      CartRemoveEvent event, Emitter<CartState> emit) {
    cartItems.remove(event.productDataModel);
    emit(CartSuccessState(cartItems: cartItems));
  }
}
