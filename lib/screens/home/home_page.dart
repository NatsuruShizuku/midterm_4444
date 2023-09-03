// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '620710120';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    // TODO: build UI
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(
          width: 4.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(14.0),
              margin: const EdgeInsets.all(20.0),
              child: Text('Question 1 of 30',style: TextStyle(fontSize: 30.0),),
            ),
            Container(
              decoration: BoxDecoration(
                color:Colors.greenAccent,
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(
                  width: 2.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Which planet is known as the 'Red Planet'",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 16, 10, 10),
              child: choicebuttom(
                'A',
                'Mars',
                true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 16, 10, 10),
              child: choicebuttom(
                'B',
                'Urenus',
                false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 16, 10, 10),
              child: choicebuttom(
                'C',
                'Saturn',
                false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 16, 10, 10),
              child: choicebuttom(
                'D',
                'Earth',
                false,
              ),
            ),

          ],
    ),
      ),
    );
  }

  Container choicebuttom(
  String text,
  String textdata,
  bool isCorrected,
      ) {
    return Container(
            decoration: BoxDecoration(
              color: isCorrected ? Color.fromARGB(255, 204, 255, 255) : Colors.white70,
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(
                width: 2.0,
              ),
            ),
            child: Row(
                //mainAxisAlignment: MainAxisAlignment.,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: isCorrected ? Color.fromARGB(255, 255, 102, 102) : Colors.white70,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(text,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold ,color: Colors.black),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Text(textdata,style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold),),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: isCorrected ? Color.fromARGB(255, 0, 255, 128) : Colors.white70 ,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.done,
                            color: isCorrected ? Colors.black : Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),

                ]
            ),
          );
  }

  _buildButtonPanel() {
    // TODO: build UI
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Expanded(
          child: ElevatedButton(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0,bottom: 12.0),
              child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 30,),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
              shadowColor: Colors.lightBlue,
            ),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: ElevatedButton(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0,bottom: 12.0),
              child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 30,),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.greenAccent,
              shadowColor: Colors.lightBlue,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
