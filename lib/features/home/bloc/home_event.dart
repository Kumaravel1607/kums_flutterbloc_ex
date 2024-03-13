part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomeProductWishButtonClickEvent extends HomeEvent {
  final ProductDataModel clickedProduct;
  HomeProductWishButtonClickEvent({
    required this.clickedProduct,
  });
}

class HomeProductCartButtonClickEvent extends HomeEvent {
  final ProductDataModel clickedProduct;
  HomeProductCartButtonClickEvent({
    required this.clickedProduct,
  });
}

class HomeWishButtonNavigateEvent extends HomeEvent {}

class HomeCartWishButtonNavigateEvent extends HomeEvent {}
