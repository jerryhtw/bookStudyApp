import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<List<dynamic>> {
  LoginCubit() : super([]);

  // google, apple, kakao에 jwt가 반환
  void loginResult() async {
    // var result = await ~~
    //emit(result);
  }

  void resultToState() {
    //result의 값에 따라서 "loading", "success", "failed" String을 반환
  }
}
