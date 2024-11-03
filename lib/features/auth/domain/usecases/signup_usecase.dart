import '../entity/sign_up_entity.dart';
import '../repository/auth_repo.dart';

class SigUpUseCase {
  AuthRepo repo;

  SigUpUseCase(this.repo);

  Future<void> call(SignUpEntity signUpEntity) => repo.signUp(signUpEntity);
}
