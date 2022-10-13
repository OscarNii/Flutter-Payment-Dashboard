// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet/card/buttons.dart';
import 'package:wallet/card/buttons1.dart';
import 'package:wallet/card/buttons2.dart';
import 'package:wallet/card/buttons3.dart';
import 'package:wallet/card/wallet_card1.dart';
import 'package:wallet/card/wallet_card2.dart';
import 'package:wallet/card/wallet_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 211, 207, 207),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(
          Icons.monetization_on,
          size: 40,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_pin,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.forward_to_inbox_sharp,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings_outlined,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        ' Accounts',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      child: Icon(
                        Icons.circle_notifications,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1),
            Container(
              height: 180,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  Card2(),
                  Card1(),
                  Cards(),
                ],
              ),
            ),
            SizedBox(height: 20),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.black),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(),
                  Button1(),
                  Buttons2(),
                  Buttons3(),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 90,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Image.asset('assets/donation.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'History',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text('Payments and Income'),
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 90,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Image.asset('assets/paypal.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'My PayPal',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text('Payments and Withdraw'),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 90,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Image.asset('assets/exchange.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Transactions',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text('Payments and Income'),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.red,
                      ),
                    ],
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
