import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc1/data/ecommerce.dart';
import 'package:bloc1/features/home/models/home_product_model.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    // on<HomeEvent>((event, emit) {
    //   // TODO: implement event handler
    // });
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeProductCartButtonClickEvent>(homeProductCartButtonClickEvent);
    on<HomeProductWishButtonClickEvent>(homeProductWishButtonClickEvent);
    on<HomeProductWishButtonNavigateEvent>(homeProductWishButtonNavigateEvent);
    on<HomeCartWishButtonNavigateEvent>(homeCartWishButtonNavigateEvent);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(HomeLoadedSuccessState(
        products: Ecommerce.ecommerceProducts
            .map((e) => ProductDataModel(
                id: e['id'],
                name: e['name'],
                category: e['category'],
                price: e['price'],
                image: e['image']))
            .toList()));
  }

  FutureOr<void> homeProductCartButtonClickEvent(
      HomeProductCartButtonClickEvent event, Emitter<HomeState> emit) {
    print('Cart Clicked');
  }

  FutureOr<void> homeProductWishButtonClickEvent(
      HomeProductWishButtonClickEvent event, Emitter<HomeState> emit) {
    print('Wishlist Clicked');
  }

  FutureOr<void> homeProductWishButtonNavigateEvent(
      HomeProductWishButtonNavigateEvent event, Emitter<HomeState> emit) {
    print('Wish NAvigate Clicked');
    emit(HomeNavigateWishActionState());
  }

  FutureOr<void> homeCartWishButtonNavigateEvent(
      HomeCartWishButtonNavigateEvent event, Emitter<HomeState> emit) {
    print('Cart NAvigate Clicked');
    emit(HomeNavigateCartActionState());
  }
}
