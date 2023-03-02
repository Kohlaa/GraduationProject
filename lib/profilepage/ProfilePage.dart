import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:graduation_project_test/CarDetails/CarDetailsNT/CarDetailsComponents/text.dart';

class ProfilePage extends StatelessWidget {
  static const String routeName = "ProfilePage";
  List<TextEditingController> listcontroller =[TextEditingController()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
        title: const Text("profile",style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 144,vertical: 50),
        child: Column(
          children:  [
            const CircleAvatar(
              backgroundImage: NetworkImage("https://scontent.faly1-2.fna.fbcdn.net/v/t39.30808-6/214432873_562314591815853_1312393908202221244_n.jpg?stp=dst-jpg_p526x296&_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHoCVYbebBpxUOnvQA23TahztP3l0lU-hLO0_eXSVT6EookBE68zsLntlcYrVdqaWVw1j17uDn5TFXGqLbbbhuM&_nc_ohc=g0I56CEEMQYAX_GBaOG&tn=b-3R3VjrF-UvZPDH&_nc_ht=scontent.faly1-2.fna&oh=00_AfBpCtU34ABz1Q2bB5UxJ5otYMBdKdtoz_lo7-LDihCpuQ&oe=64039CE7"),
              backgroundColor: Color.fromARGB(255, 230, 240, 241),
              radius: 55,
            ),
            const SizedBox(height: 14,),
          const Text("Ibrahim Abosharaa",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          const Text("ibrahimalsayed111@gmail.com",style: TextStyle(color: Color.fromRGBO(120, 120, 120, 1)),),
          const SizedBox(height: 4,),
          const Text("Edit Profile",style: TextStyle(color: Color.fromRGBO(25, 111, 213, 1),fontWeight: FontWeight.w500),),
          const SizedBox(height: 32,),
          Container(
            width: 342,
            height: 50,
            
            decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(14),color: const Color.fromRGBO(238, 241, 244, 1)),
            child: TextFormField(
              
              
              autofocus: false,
              style: const TextStyle(color: Colors.blue),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Car identification Number",
                hintStyle: TextStyle(color:Color.fromRGBO(36, 36, 36, 1),fontWeight: FontWeight.w600,fontSize: 12 ),
                prefixIcon: Icon(Icons.car_crash_sharp,color:Color.fromARGB(255, 72, 172, 255) ,)
              ),
              
            
            ),
          ),
          const SizedBox(height: 12,),
          Container(
            width: 342,
            height: 50,
            
            decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(14),color: const Color.fromRGBO(238, 241, 244, 1)),
            child: TextFormField(
              
              
              autofocus: false,
              style: const TextStyle(color: Colors.blue),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Car identification Number",
                hintStyle: TextStyle(color:Color.fromRGBO(36, 36, 36, 1),fontWeight: FontWeight.w600,fontSize: 12 ),
                prefixIcon: Icon(Icons.assignment_late_sharp,color:Color.fromARGB(255, 72, 172, 255) ,)
              ),
              
            
            ),
          ),
          const SizedBox(height: 12,),
          const Text("Help & Support",style: TextStyle(color: Color.fromRGBO(25, 111, 213, 1),fontWeight: FontWeight.w600,fontSize: 12,decoration: TextDecoration.underline,decorationThickness: 2),),
          ],
        ),
      ),
    );
  }
}