import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project_test/BookingPayment/BookingPayment.dart';
import 'package:graduation_project_test/CarDetails/CarDetailsContact/car_details_contact.dart';
import 'package:graduation_project_test/CarDetails/CarDetailsNT/CarDetailsDescr/car_details_descr.dart';
import 'package:graduation_project_test/CarDetails/CarDetailsNT/car_details_NT.dart';
import 'package:graduation_project_test/addParking/AddParking.dart';
import 'package:graduation_project_test/bookingConfirmation/BookingConfirmation.dart';
import 'package:graduation_project_test/carbanner/carbanner.dart';
import 'package:graduation_project_test/customActivity/activity.dart';
import 'package:graduation_project_test/profilepage/ProfilePage.dart';
import 'package:graduation_project_test/resetPassword/resetPassword.dart';
import 'package:graduation_project_test/resetPassword/verify.dart';
import 'package:graduation_project_test/signUp/signUpScreen.dart';
import 'package:graduation_project_test/signUp/signUpScreen2.dart';
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
        initialRoute: ProfilePage.routeName,
        routes: {
          LoginScreen.routeName: (context) => LoginScreen(),
          register.routeName:(context)=>register(),
          Addparking.routeName:(context)=>Addparking(),
          signUp.routeName:(context)=>signUp(),
          signUp2.routeName:(context)=>signUp2(),
          Layout.routeName:(context)=>Layout(),
          CarDetailsNT.routeName:(context) => CarDetailsNT(),
          CarDetailsDescr.routeName:(context)=>CarDetailsDescr(),
          CarDetailsContact.routeName:(context)=>CarDetailsContact(),
          ResetPassword.routeName:(context) => ResetPassword(),
          verify.routeName:(context) => verify(),
          carbanner.routeName:(context)=>carbanner(),
          BookingPayment.routeName:(context) => BookingPayment(),
          BookingConfirmation.routeName:(context) => BookingConfirmation(),
          Activity.routeName:(context) => Activity(),
          ProfilePage.routeName:(context) => ProfilePage(),
        },
      ),
    );
  }
}
