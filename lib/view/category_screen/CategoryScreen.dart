import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/utils/constants/ImageConstants.dart';

class CategoryScreen extends StatefulWidget
{
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff008080),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 100, 0, 0),
            child: Text("Hi Buddy!", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 40,
            ),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Text("Let's make this day productive", style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white,
              fontSize: 18,
            ),),
          ),
          SizedBox(height: 50,),
          Container(
            height: 437,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(
                  top: Radius.elliptical(
                      MediaQuery.of(context).size.width, 100.0)),
            ),
            child: Column(
              children: [
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 90, 0, 0),
                    child: Container(
                      height: 150,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 10,),
                          Image.asset(imageConstants.SCIENCE_PNG, width: 100,height: 100,),
                          Text("Science", style: TextStyle(color: Colors.black, fontSize: 14),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 90, 0, 0),
                    child: Container(
                      height: 150,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 10,),
                          Image.asset(imageConstants.DART_PNG, width: 100,height: 100,),
                          Text("Dart", style: TextStyle(color: Colors.black, fontSize: 14),)
                        ],
                      ),
                    ),
                  ),
                ],),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Container(
                      height: 150,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 10,),
                          Image.asset(imageConstants.FLUTTER_PNG, width: 100,height: 100,),
                          Text("Flutter", style: TextStyle(color: Colors.black, fontSize: 14),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Container(
                      height: 150,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 10,),
                          Image.asset(imageConstants.GAMES_PNG, width: 100,height: 100,),
                          Text("Games", style: TextStyle(color: Colors.black, fontSize: 14),)
                        ],
                      ),
                    ),
                  ),
                ],)
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class TheCustomClipper extends CustomClipper<Path>
{
  @override
  getClip(Size size)
  {
    var path = Path();
    path.lineTo(0, size.height / 3);

    // var firstControlPoint = Offset(0, size.height / 3.5); // adjust the height to move start of the first curve
    // var firstEndPoint = Offset(size.width / 4.2, size.height / 3.5 + 10); // adjust the width to add the end controll point and height to move end of the first curve
    //
    // var secControlPoint = Offset(size.width, size.height / 2.8); // adjust the height to move end of the second curve
    // var secEndPoint = Offset(size.width, size.height / 3 - 40); // adjust the width to add the right first controll point and height to move start of the second curve
    //
    // path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
    //     firstEndPoint.dx, firstEndPoint.dy);
    // path.quadraticBezierTo(
    //     secControlPoint.dx, secControlPoint.dy, secEndPoint.dx, secEndPoint.dy);

    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  // @override
  // bool shouldReclip(CustomClipper oldClipper)
  // {
  //   return null;
  // }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

}

