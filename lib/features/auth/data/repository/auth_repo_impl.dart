import 'package:ecommerce_app/features/auth/domain/entity/sign_up_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repository/auth_repo.dart';

import '../data_source/remote/auth_remote_ds.dart';

class AuthRepoImpl implements AuthRepo {
  AuthRemoteDS auhtRemoteDS;

  AuthRepoImpl(this.auhtRemoteDS);

  @override
  Future<bool> signIn(String email, String password) {
    return auhtRemoteDS.signIn(email, password);
  }

  @override
  Future<bool> signUp(SignUpEntity signUpEntity) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
