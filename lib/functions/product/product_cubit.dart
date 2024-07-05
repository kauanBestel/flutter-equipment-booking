import 'package:bloc/bloc.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductState.initial());

  Future<void> setLoading(bool isLoading) async {
    var newState = state.copyWith(isLoading: isLoading);
    emit(newState);
  }
}
