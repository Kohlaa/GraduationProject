import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project_test/addParking/AddParking.dart';
import 'package:graduation_project_test/addParking/signUp/signUpScreen.dart';
import 'package:graduation_project_test/addParking/signUp/signUpScreen2.dart';
import 'package:graduation_project_test/homeScreen/register/register.dart';
import 'package:graduation_project_test/layout/parking_layout.dart';
import 'bloc_observer.dart';
import 'homeScreen/login/screens/login.dart';
import 'layout/bloc/cubit.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => LayoutCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.routeName,
        routes: {
          LoginScreen.routeName: (context) => LoginScreen(),
          register.routeName:(context)=>register(),
          Addparking.routeName:(context)=>Addparking(),
          signUp.routeName:(context)=>signUp(),
          signUp2.routeName:(context)=>signUp2(),
          Layout.routeName:(context)=>Layout(),
        },
      ),
    );
  }
}
