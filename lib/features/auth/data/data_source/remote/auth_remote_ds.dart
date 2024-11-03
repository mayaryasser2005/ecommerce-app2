import '../../../domain/entity/sign_up_entity.dart';

abstract class AuthRemoteDS {
  Future<bool> signIn(String email, String password);

  Future<bool> signUp(SignUpEntity signUpEntity);
}
