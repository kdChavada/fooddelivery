import 'package:demo/Dribble/Detailspage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DribbleDesign1 extends StatefulWidget {
  @override
  _DribbleDesign1State createState() => _DribbleDesign1State();
}

class _DribbleDesign1State extends State<DribbleDesign1> {
  ValueNotifier _valueNotifier = ValueNotifier(0);

  ValueNotifier _notifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffe1e1e1),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: h * 0.2,
                  width: w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 57,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            CupertinoIcons.equal,
                            size: 40.0,
                          ),
                        ),
                      ),
                      Container(
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              "https://wallpapercave.com/wp/wp4540682.jpg"),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fast and",
                          style: GoogleFonts.merienda(
                            fontSize: 30.0,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Dellcious",
                              style: GoogleFonts.merienda(
                                fontSize: 30.0,
                              ),
                            ),
                            Text(
                              " Food ",
                              style: GoogleFonts.alfaSlabOne(
                                  fontSize: 30.0, color: Colors.green),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 35.0,
                                color: Colors.grey,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Address",
                                    style: GoogleFonts.merienda(
                                        color: Colors.black, fontSize: 15.0),
                                  ),
                                  Text(
                                    "nanavati chowk rajkot",
                                    style: GoogleFonts.merienda(
                                        color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ValueListenableBuilder(
                            valueListenable: _valueNotifier,
                            builder: (context, v, c) {
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        _valueNotifier.value = 1;
                                      },
                                      child: Container(
                                        height: 50.0,
                                        width: w * 0.15,
                                        decoration: BoxDecoration(
                                          color: _valueNotifier.value == 1
                                              ? Colors.green
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "All",
                                            style: GoogleFonts.merienda(
                                                color: _valueNotifier.value == 1
                                                    ? Colors.white
                                                    : Colors.grey),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        _valueNotifier.value = 2;
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10.0),
                                        height: 50.0,
                                        width: w * 0.3,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: _valueNotifier.value == 2
                                              ? Colors.green
                                              : Colors.white,
                                        ),
                                        child: Row(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/images/burger.png'),
                                              fit: BoxFit.cover,
                                              height: 20.0,
                                              width: 20.0,
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Text(
                                              "Fast food",
                                              style: GoogleFonts.merienda(
                                                  color:
                                                      _valueNotifier.value == 2
                                                          ? Colors.white
                                                          : Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        _valueNotifier.value = 3;
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10.0),
                                        height: 50.0,
                                        width: w * 0.3,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: _valueNotifier.value == 3
                                              ? Colors.green
                                              : Colors.white,
                                        ),
                                        child: Row(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/images/juice.png'),
                                              fit: BoxFit.cover,
                                              height: 20.0,
                                              width: 20.0,
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Text(
                                              "Drink",
                                              style: GoogleFonts.merienda(
                                                  color:
                                                      _valueNotifier.value == 3
                                                          ? Colors.white
                                                          : Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        _valueNotifier.value = 4;
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10.0),
                                        height: 50.0,
                                        width: w * 0.3,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: _valueNotifier.value == 4
                                              ? Colors.green
                                              : Colors.white,
                                        ),
                                        child: Row(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/images/pizza.png'),
                                              fit: BoxFit.cover,
                                              height: 20.0,
                                              width: 20.0,
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Text(
                                              "Pizza",
                                              style: GoogleFonts.merienda(
                                                  color:
                                                      _valueNotifier.value == 4
                                                          ? Colors.white
                                                          : Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Popular items",
                                style: GoogleFonts.merienda(
                                    color: Colors.black, fontSize: 20.0),
                              ),
                              Text(
                                "See All",
                                style: GoogleFonts.merienda(
                                    color: Colors.green, fontSize: 18.0),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailsPage()));
                              },
                              child: Container(
                                height: h * 0.3,
                                width: w * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Image(
                                      image: AssetImage(
                                        "assets/images/store.png",
                                      ),
                                      height: 100,
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      "cacke",
                                      style: GoogleFonts.merienda(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 6.0, right: 6.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "\$ 70",
                                            style: GoogleFonts.merienda(
                                                color: Colors.black),
                                          ),
                                          Container(
                                            height: h * 0.06,
                                            width: w * 0.2,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Colors.green,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "\$50",
                                                style: GoogleFonts.merienda(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailsPage()));
                              },
                              child: Container(
                                height: h * 0.3,
                                width: w * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Image(
                                      image: AssetImage(
                                        "assets/images/burger.png",
                                      ),
                                      height: 100,
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      "Burger",
                                      style: GoogleFonts.merienda(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 6.0, right: 6.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "\$ 70",
                                            style: GoogleFonts.merienda(
                                                color: Colors.black),
                                          ),
                                          Container(
                                            height: h * 0.06,
                                            width: w * 0.2,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Colors.green,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "\$50",
                                                style: GoogleFonts.merienda(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailsPage()));
                              },
                              child: Container(
                                height: h * 0.3,
                                width: w * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Image(
                                      image: AssetImage(
                                        "assets/images/pizza.png",
                                      ),
                                      height: 100,
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      "Pizza",
                                      style: GoogleFonts.merienda(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 6.0, right: 6.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "\$ 70",
                                            style: GoogleFonts.merienda(
                                                color: Colors.black),
                                          ),
                                          Container(
                                            height: h * 0.06,
                                            width: w * 0.2,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Colors.green,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "\$50",
                                                style: GoogleFonts.merienda(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailsPage()));
                              },
                              child: Container(
                                height: h * 0.3,
                                width: w * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Image(
                                      image: AssetImage(
                                        "assets/images/juice.png",
                                      ),
                                      height: 100,
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      "Juice",
                                      style: GoogleFonts.merienda(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 6.0, right: 6.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "\$ 70",
                                            style: GoogleFonts.merienda(
                                                color: Colors.black),
                                          ),
                                          Container(
                                            height: h * 0.06,
                                            width: w * 0.2,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Colors.green,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "\$50",
                                                style: GoogleFonts.merienda(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: h * 0.92,
              child: ValueListenableBuilder(
                valueListenable: _notifier,
                builder: (context, c, v) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                    ),
                    height: h * 0.07,
                    width: w,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _notifier.value = 1;
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: _notifier.value == 1
                                      ? Colors.green
                                      : Color(0xffe1e1e1),
                                ),
                                Text(
                                  "Home",
                                  style: GoogleFonts.merienda(
                                      color: _notifier.value == 1
                                          ? Colors.green
                                          : Color(0xffe1e1e1)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 55.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            _notifier.value = 2;
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: _notifier.value == 2
                                      ? Colors.green
                                      : Color(0xffe1e1e1),
                                ),
                                Text(
                                  "Search",
                                  style: GoogleFonts.merienda(
                                      color: _notifier.value == 2
                                          ? Colors.green
                                          : Color(0xffe1e1e1)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 95.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            _notifier.value = 3;
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  color: _notifier.value == 3
                                      ? Colors.green
                                      : Color(0xffe1e1e1),
                                ),
                                Text(
                                  "Cart",
                                  style: GoogleFonts.merienda(
                                      color: _notifier.value == 3
                                          ? Colors.green
                                          : Color(0xffe1e1e1)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 55.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            _notifier.value = 4;
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: _notifier.value == 4
                                      ? Colors.green
                                      : Color(0xffe1e1e1),
                                ),
                                Text(
                                  "Person",
                                  style: GoogleFonts.merienda(
                                    color: _notifier.value == 4
                                        ? Colors.green
                                        : Color(0xffe1e1e1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Positioned(
              left: w * 0.4,
              top: h * 0.88,
              child: Container(
                child: FloatingActionButton(
                  hoverColor: Colors.black,
                  elevation: 0.0,
                  onPressed: () {},
                  backgroundColor: Colors.green,
                  child: Icon(
                    CupertinoIcons.barcode_viewfinder,
                    size: 30.0,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
