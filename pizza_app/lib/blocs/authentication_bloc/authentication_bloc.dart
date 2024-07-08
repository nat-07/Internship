import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repository/%E2%89%88.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository userRepository;
  late final StreamSubscription<MyUser?> _userSubscription;


  AuthenticationBloc({
    required this.userRepository
  }) : super(const AuthenticationState.unkown()) {
    _userSubscription = userRepository.user.listen((user){
      add(AuthenticationUserChanged(user));
    });


    on<AuthenticationUserChanged>((event, emit) {
     if(event.user != MyUser.empty){
       emit(AuthenticationState.authenticated(event.user!));
     } else{
       emit(const AuthenticationState.unauthenticated());
     }
    });
  }

  @override
  Future<void> close(){
    _userSubscription.cancel();
    return super.close();
  }
}
