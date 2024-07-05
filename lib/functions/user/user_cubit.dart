import 'package:bloc/bloc.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserState.initial());

  Future<void> setLoading(bool isLoading) async {
    var newState = state.copyWith(isLoading: isLoading);
    emit(newState);
  }
}
