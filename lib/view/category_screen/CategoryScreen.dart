import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        children: <Widget>[
          SizedBox(height: 250,),
          Container(
            height: 430,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(
                  top: Radius.elliptical(
                      MediaQuery.of(context).size.width, 100.0)),
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

