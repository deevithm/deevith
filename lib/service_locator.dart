import 'package:get_it/get_it.dart';
import 'package:payirseai/data/repository/auth/auth_repository_impl.dart';
import 'package:payirseai/data/sources/auth/auth_firebase_service.dart';
import 'package:payirseai/domain/repository/auth/auth.dart';
import 'package:payirseai/domain/usecases/auth/signin.dart';
import 'package:payirseai/domain/usecases/auth/signup.dart';

final sl =GetIt.instance;

Future<void> initializeDeoendencies() async {

  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl()
  );
  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl()
  );

  sl.registerSingleton<SignupUseCase>(
    SignupUseCase()
  );

  sl.registerSingleton<SigninUseCase>(
    SigninUseCase()
  );

}