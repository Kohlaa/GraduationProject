import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/cubit.dart';
import 'bloc/states.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);
  static const String routeName = "Layout-screen";
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutStates>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = LayoutCubit.get(context);
        final Size size = MediaQuery.of(context).size;
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: AnimatedBottomNavigationBar(
            icons: cubit.iconList,
            onTap: (index) => cubit.change(index),
            activeIndex: cubit.currentIndex,
            iconSize: size.width*.07,
            gapWidth: 1,
            height: size.height*.08,
            inactiveColor: Colors.grey,
            activeColor: Colors.black,
          ),
        );
      },
    );
  }
}
