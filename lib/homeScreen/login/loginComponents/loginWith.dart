import 'package:flutter/cupertino.dart';

class  loginWith extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Image(
            image: AssetImage(
                'assets/images/logos_facebook.png'
            ),
          ),
          SizedBox( width: 25,),
          Image(
            image: AssetImage(
                'assets/images/flat-color-icons_google.png'
            ),
          ),
          SizedBox( width: 25,),
          Image(
            image: AssetImage(
                'assets/images/Vector.png'
            ),
          ),
        ],
      ),
    );
  }
}
