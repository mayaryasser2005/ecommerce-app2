import 'package:dio/dio.dart';
import 'package:ecommerce_app/features/auth/data/data_source/remote/auth_remote_ds.dart';
import 'package:ecommerce_app/features/auth/domain/entity/sign_up_entity.dart';

class AuthRemoteDsImpl implements AuthRemoteDS {
  @override
  Future<bool> signIn(String email, String password) async {
    final dio = Dio();
    final response = await dio.post(
        'https://ecommerce.routemisr.com/api/v1/auth/signin',
        data: {"email": email, "password": password});
    // print("mmmmmmmmmmmmmmmmmmm${response.statusCode}");
    // print("kkkkkkkkkkkkkkkkkkkk${response}");
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }

  @override
  Future<bool> signUp(SignUpEntity signUpEntity) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
