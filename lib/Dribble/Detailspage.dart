import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Details",
          style: GoogleFonts.merienda(
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(
            CupertinoIcons.heart,
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: h * 0.6,
              width: w,
              child: Image.network(
                  "https://e7.pngegg.com/pngimages/614/266/png-clipart-mirinda-juice-illustration-milkshake-fizzy-drinks-pepsi-mirinda-soft-drink-food-non-alcoholic-beverage-thumbnail.png"),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: h * 0.06,
                      width: w * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.green,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "4.9",
                            style: GoogleFonts.merienda(color: Colors.white),
                          ),
                        ],
                      )),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "30 Min",
                          style: GoogleFonts.merienda(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.money_dollar,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Free Shipping",
                          style: GoogleFonts.merienda(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Text(
                "Drink - Funta",
                style: GoogleFonts.merienda(color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Text(
                "it is a long established  fact that a reader will be distracted by the readdble contant of a page whean lokking at this layout",
                style: GoogleFonts.merienda(color: Colors.grey),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: h * 0.1,
                          width: w * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey,
                          ),
                          child: Center(
                            child: Image(
                              image: AssetImage('assets/images/burger.png'),
                              height: 80.0,
                              width: 50.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Burger",
                                style:
                                    GoogleFonts.merienda(color: Colors.black),
                              ),
                              Text(
                                "1.6 km form You",
                                style: GoogleFonts.merienda(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    height: h * 0.07,
                    width: w * 0.33,
                    decoration: BoxDecoration(
                      color: Color(0xffababab),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: h * 0.05,
                          width: w * 0.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffe1e1e1)),
                          child: Center(
                            child: Icon(Icons.remove),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "1",
                          style: GoogleFonts.merienda(
                              color: Colors.black, fontSize: 25.0),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          height: h * 0.05,
                          width: w * 0.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffe1e1e1)),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: h * 0.1,
                    width: w * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.green,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Buy Now",
                          style: GoogleFonts.merienda(color: Colors.white),
                        ),
                        Text(
                          "100 Tk",
                          style: GoogleFonts.merienda(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
