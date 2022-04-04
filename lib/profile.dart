import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:justatry/readmore.dart';
import 'package:justatry/story.dart';
import 'package:justatry/views/apihomepase.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Color(0xFF3F60A0)),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 100.0, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/profile.png'),
                                ),
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            height: 100,
                            width: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              children: [
                                Text(
                                  'Welcome back,       ',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                Text(
                                  'BOOKTRON',
                                  style: TextStyle(
                                      fontSize: 25.0, color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.notifications_active,
                                size: 30,
                              ),
                              color: Colors.white,
                              onPressed: () {
                                print('pressed');
                              },
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.settings,
                                size: 30,
                              ),
                              color: Colors.white,
                              onPressed: () {
                                print('pressed');
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28.0, left: 30),
            child: Container(
              height: 50,
              width: double.infinity,
              child: Text(
                'Read Your Favorite',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
            ),
            child: Container(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Container(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Story()),
                          );
                        },
                        child: Text(
                          'Story',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xFF3F60A0),
                      ),
                      height: 20,
                      width: 175,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Container(
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'Nepali Upanyas',
                          style: TextStyle(
                              color: Color(0xFF3F60A0), fontSize: 15.0),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                      ),
                      height: 20,
                      width: 175,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Container(
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'Story',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xFF3F60A0),
                      ),
                      height: 20,
                      width: 175,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Container(
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'Story',
                          style: TextStyle(
                              color: Color(0xFF3F60A0), fontSize: 15.0),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                      ),
                      height: 20,
                      width: 175,
                    ),
                  ),
                ],
              ),
              height: 75,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 28),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  cursorColor: Color(0xFF3F60A0),
                  decoration: InputDecoration(
                    icon: Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                      ),
                      child: Icon(
                        Icons.search,
                        color: Color(0xFF3F60A0),
                      ),
                    ),
                    hintText: "Search your need here...",
                    hintStyle: TextStyle(color: Color(0xFF3F60A0)),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReadMore()),
                    );
                  },
                  child: Container(
                    height: 285,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Book-cover.png')),
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReadMore()),
                    );
                  },
                  child: Container(
                    height: 285,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Book-cover.png')),
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReadMore()),
                    );
                  },
                  child: Container(
                    height: 285,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Book-cover.png')),
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReadMore()),
                    );
                  },
                  child: Container(
                    height: 285,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Book-cover.png')),
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReadMore()),
                    );
                  },
                  child: Container(
                    height: 285,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Book-cover.png')),
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReadMore()),
                    );
                  },
                  child: Container(
                    height: 285,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Book-cover.png')),
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
