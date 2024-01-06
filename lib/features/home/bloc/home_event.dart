part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomeProductWishButtonClickEvent extends HomeEvent {}

class HomeProductCartButtonClickEvent extends HomeEvent {}

class HomeProductWishButtonNavigateEvent extends HomeEvent {}

class HomeCartWishButtonNavigateEvent extends HomeEvent {}
