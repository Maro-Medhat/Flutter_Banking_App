import 'package:flutter/material.dart';

Widget createCard(String title, String subtitle, String trailing) {
  return Card(
      color: Colors.white,
      child: ListTile(
          title: Text(title,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w500,
                color: Color(0xff333333),
              )),
          subtitle: Text(subtitle,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w300,
                color: Color(0xff858585),
              )),
          trailing: Text(trailing,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w500,
                color: Color(0xff333333),
              ))));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selctedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(children: [
        Positioned(
            top: -74,
            left: 251,
            child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffF8E192),
                ))),
        Positioned(
            top: 246,
            left: -72,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(47, 203, 252, 0.3),
              ),
            )),
        ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            children: [
              Row(
                children: [
                  Stack(children: [
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(19, 63, 219, 1),
                              Color.fromRGBO(183, 0, 77, 0.3),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          )),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/avatar.jpeg"),
                          radius: 29,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 5,
                        right: 0.3,
                        child: Container(
                            width: 13,
                            height: 13,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              shape: BoxShape.circle,
                              color: const Color(0xffDB1337),
                            ))),
                  ]),
                  /* ----------------- */
                  const SizedBox(width: 10),
                  /* ----------------- */
                  const Column(
                    children: [
                      Text("Good morning",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          )),
                      Text("ANDREA",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ],
              ),
              /* ----------------- */
              const SizedBox(height: 30),
              /* ----------------- */
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: 327,
                    height: 109,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            blurRadius: 15,
                            offset: Offset(5, -5),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                    child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Current Balance",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(51, 51, 51, 1),
                              )),
                          /* ----------------- */
                          SizedBox(height: 10),
                          /* ----------------- */
                          Text("\$12567.89",
                              style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w500,
                                color: Color(0xff333333),
                              )),
                        ]),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: 327,
                    height: 88,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(19, 63, 219, 1),
                            Color.fromRGBO(183, 0, 77, 0.3)
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("3452 1235 7894 1678",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'IBM_Plex_Mono',
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )),
                          Text("05/2025",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'IBM_Plex_Mono',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )),
                        ]),
                  ),
                ],
              ),
              /* ----------------- */
              const SizedBox(height: 49),
              /* ----------------- */
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("LAST TRANSACTIONS",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w500,
                        color: Color(0xff858585),
                      )),
                ],
              ),
              /* ----------------- */
              const SizedBox(height: 5),
              /* ----------------- */
              createCard("Shopping", "Tue 12.05.2021", "\$29.90"),
              createCard("Movie Ticket", "Mon 11.05.2021", "\$9.50"),
              createCard("Amazon", "Mon 11.05.2021", "\$19.30"),
              createCard("Udemy", "Sat 09.05.2021", "\$20.00"),
            ]),
      ]),
      bottomNavigationBar: SizedBox(
        height: 82,
        child: BottomNavigationBar(
          currentIndex: selctedindex,
          onTap: (val) {
            setState(() {
              selctedindex = val;
            });
          },
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: const Color(0xff818181),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.send),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
