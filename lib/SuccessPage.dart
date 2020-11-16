import 'package:flutter/material.dart';
import 'package:foodorderapp/Style.dart';
class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "mont"
      ),
      home: successPage(),
    );
  }
}
class successPage extends StatefulWidget {
  @override
  _successPageState createState() => _successPageState();
}

class _successPageState extends State<successPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: blue,
                  image: DecorationImage(
                      image: AssetImage("asset/images/hotelBig.png"),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white,)
                      ),
                      IconButton(
                          icon: Icon(Icons.search, color: Colors.white,)
                      ),
                    ],
                  ),
                  SizedBox(height: 100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text("Yoshimasa Sushi", style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20
                          ),),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(Icons.star, color: Colors.white,),
                              Icon(Icons.star, color: Colors.white,),
                              Icon(Icons.star, color: Colors.white,),
                              Icon(Icons.star, color: Colors.white,),
                              Icon(Icons.star, color: Colors.white,),
                              Text(" 250 Reviews", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13
                              ),)
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                        ),
                        child: Center(
                          child: Icon(Icons.favorite,color: Colors.redAccent, size: 35,),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle,
                    color: greenBtn,
                    size: 200,),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Done!, Tasty food, Your Way!", style: TextStyle(
                        color: greenBtn,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

