part of 'user_cubit.dart';

class UserState {
  final bool isLoading;

  UserState({required this.isLoading});

  factory UserState.initial() => UserState(isLoading: false);

  UserState copyWith({
    bool? isLoading,
  }) {
    return UserState(
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  String toString() => "UserState(isLoading: $isLoading,)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserState && other.isLoading == isLoading;
  }

  @override
  int get hashCode => isLoading.hashCode;
}