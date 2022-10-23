import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Course'),
            centerTitle: true,
            leading: Icon(Icons.arrow_back_ios),
            actions: [
              Icon(Icons.more_vert),
            ],
            backgroundColor: Colors.blue,
            elevation: 0,
          ),
          body: Stack(
            children: <Widget>[
              Container(
                height: 300,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 3, 136, 253),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(150, 150),
                      bottomRight: Radius.elliptical(150, 150),
                    )),
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Spanish',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 40)),
                              Container(
                                height: 30,
                                width: 120,
                                margin: EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('Begginer'),
                                    IconButton(
                                        icon: Icon(
                                            Icons.keyboard_arrow_down_rounded),
                                        onPressed: () {}),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.stars),
                                    Icon(Icons.stars),
                                    Text('2 Milestones')
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: CircularPercentIndicator(
                              radius: 55,
                              lineWidth: 4,
                              backgroundWidth: 2,
                              percent: 0.4,
                              backgroundColor: Colors.white,
                              progressColor: Colors.red,
                              center: Text(
                                '43 %',
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    children: <Widget>[
                      Card(
                        margin: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade600,
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                            offset: Offset(3, 4),
                                          ),
                                        ]),
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXYqi93oSVA5dPULexNeIMlJ4u2p4Ut37-QBU7tWh2WiTEeYQRs-risMrMFHQ0MAE_uwQ&usqp=CAU',
                                      scale: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                'Basics',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text('4/5'),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: LinearPercentIndicator(
                                backgroundColor: Colors.grey.shade300,
                                progressColor: Colors.blue,
                                percent: 0.8,
                                lineHeight: 5,
                                barRadius: Radius.circular(18),
                                linearStrokeCap: LinearStrokeCap.round,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade600,
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                            offset: Offset(3, 4),
                                          ),
                                        ]),
                                    child: Image.network(
                                      'https://jdih.kotabogor.go.id/assets/dokumen3.png',
                                      scale: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                'Occupations',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text('4/5'),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: LinearPercentIndicator(
                                backgroundColor: Colors.grey.shade300,
                                progressColor: Colors.blue,
                                percent: 0.8,
                                lineHeight: 5,
                                barRadius: Radius.circular(18),
                                linearStrokeCap: LinearStrokeCap.round,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade600,
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                            offset: Offset(3, 4),
                                          ),
                                        ]),
                                    child: Image.network(
                                      'https://www.pngkit.com/png/full/207-2074271_related-wallpapers-calendar-yellow-icon-png.png',
                                      scale: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                'Conversation',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text('4/5'),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: LinearPercentIndicator(
                                backgroundColor: Colors.grey.shade300,
                                progressColor: Colors.blue,
                                percent: 0.8,
                                lineHeight: 5,
                                barRadius: Radius.circular(18),
                                linearStrokeCap: LinearStrokeCap.round,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade600,
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                            offset: Offset(3, 4),
                                          ),
                                        ]),
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/4781/4781517.png',
                                      scale: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                'Places',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text('4/5'),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: LinearPercentIndicator(
                                backgroundColor: Colors.grey.shade300,
                                progressColor: Colors.blue,
                                percent: 0.8,
                                lineHeight: 5,
                                barRadius: Radius.circular(18),
                                linearStrokeCap: LinearStrokeCap.round,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade600,
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                            offset: Offset(3, 4),
                                          ),
                                        ]),
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/3884/3884982.png',
                                      scale: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                'Family Members',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text('4/5'),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: LinearPercentIndicator(
                                backgroundColor: Colors.grey.shade300,
                                progressColor: Colors.blue,
                                percent: 0.8,
                                lineHeight: 5,
                                barRadius: Radius.circular(18),
                                linearStrokeCap: LinearStrokeCap.round,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade600,
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                            offset: Offset(3, 4),
                                          ),
                                        ]),
                                    child: Image.network(
                                      'https://i.pinimg.com/originals/dd/9d/c9/dd9dc9d83423bc037b511d73b29e6b80.png',
                                      scale: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                'Foods',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text('4/5'),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: LinearPercentIndicator(
                                backgroundColor: Colors.grey.shade300,
                                progressColor: Colors.blue,
                                percent: 0.8,
                                lineHeight: 5,
                                barRadius: Radius.circular(18),
                                linearStrokeCap: LinearStrokeCap.round,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                ],
              )
            ],
          )),
    );
  }
}
