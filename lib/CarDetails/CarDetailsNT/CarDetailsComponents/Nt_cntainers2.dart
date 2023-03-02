import 'package:flutter/cupertino.dart';



class ntcontainers2 extends StatelessWidget {
  String fontfamily;
  FontWeight fontwei;
  ntcontainers2(this.fontfamily,this.fontwei);

  @override
  Widget build(BuildContext context) {
    return  Container(
                    width: 150,
                    height: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color.fromRGBO(238, 241, 244, 1)),
                    child:  Center(
                        child: Text(
                      "Book",
                      style: TextStyle(
                          color: const Color.fromRGBO(25, 111, 213, 1),
                          fontFamily: 'fontfamily',
                         fontWeight: fontwei ),
                    )),
                  );
  }
}
