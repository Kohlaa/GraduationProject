import 'package:flutter/material.dart';


class carbanner extends StatelessWidget {
  static const String routeName = "carbanner";

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
        
      ),
      body: 
Center(
  child:   Padding(
    padding: const EdgeInsets.symmetric(vertical: 49.52),
    child: Column(
    
      children:  [
    
             const Image(image: AssetImage('assets/images/رقم العربية 1.png')),
             const SizedBox(height: 58,),
             const Text("Please take a picture of your",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
             const Text("car identification number",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
             const SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children:const [
                  Text("Make the phone stable",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                  Icon(Icons.camera_alt_outlined),
                
               ],
             ),
             const SizedBox(height: 110,),
             Container(
              width: 69,
              height: 68,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),color: const Color.fromRGBO(25, 111, 213, .8)),
          child: const Icon(Icons.camera_alt_rounded,color: Colors.white,),
          
             ),

    
      ],
    
    ),
  ),
),
      
      
    );
  }
}