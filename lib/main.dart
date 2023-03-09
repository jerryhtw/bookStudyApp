import 'package:book_study/auth/login/login_cubit.dart';
import 'package:book_study/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.orange,
        ),
        home: BlocProvider(
          create: (context) => LoginCubit(),
          child: const LoginPage(),
        ));
  }
}
