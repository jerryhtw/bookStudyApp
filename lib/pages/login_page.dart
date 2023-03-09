import 'package:flutter/material.dart';
import '../models/login_buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange.shade300,

        // body: BlocBuilder<LoginCubit, List<dynamic>>(
        //   builder: (context, state) {
        //     //state의 상태가 loading일때
        //     if (state == "loading") {
        //       return const Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     }
        //     //state의 상태가 성공일때
        //     else if (state == "success") {
        //       return const MainPage();
        //     }
        //     //state의 상태가 실패일때
        //     else {
        //       return const LoginPage();
        //     }

        body: Column(
          children: [
            Flexible(
                flex: 1,
                child: Container(
                    //color: Colors.blue,
                    )),
            Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  //color: Colors.white,
                  child: Column(children: const [
                    //textformfield로 하면 validation check까지 할 수도 있음.
                    TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '아이디를 입력해주세요',
                          hintText: '아이디를 입력해주세요'),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '비밀번호를 입력해주세요',
                          hintText: '비밀번호를 입력해주세요'),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    SocialAuthButton(icon_name: '애플'),
                    SizedBox(height: 10),
                    SocialAuthButton(icon_name: '구글'),
                    SizedBox(height: 10),
                    SocialAuthButton(icon_name: '카카오'),
                  ]),
                ),
              ),
            ),
          ],
        ));
  }
}
