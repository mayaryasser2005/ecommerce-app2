import '../repository/auth_repo.dart';

class LoginUseCase {
  AuthRepo repo;

  LoginUseCase(this.repo);

  Future<void> call(String email, String password) =>
      repo.signIn(email, password);
}
