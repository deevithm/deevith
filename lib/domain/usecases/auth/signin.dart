import 'package:dartz/dartz.dart';
import 'package:payirseai/data/core/usecase/usecase.dart';

import 'package:payirseai/data/models/auth/signin_user_req.dart';
import 'package:payirseai/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';

class SigninUseCase implements Usecase<Either,SigninUserReq>{
  @override
  Future<Either> call({SigninUserReq ? params}) {
    return sl<AuthRepository>().signin(params!);
  }

}