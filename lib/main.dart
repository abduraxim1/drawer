
import 'package:app10/doctors_details.dart';
import 'package:app10/info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'doctors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute:  (RouteSettings settings) {
        List<String> path = settings.name.toString().split("/");
        if (path[1] == "Sahifa2") {
          return MaterialPageRoute(
              builder: (context) => Sahifa2(int.parse(path[2])));
        }
      },
    
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState(
   
  );
}

class _HomePageState extends State<HomePage> {

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Привет, Абдукарим",
          style: TextStyle(fontSize: 15, color: Color.fromRGBO(34, 43, 69, 1)),
        ),
        actions: [
          Container(
            width: 36,
            height: 36,
            margin: EdgeInsets.symmetric(vertical: 10),
            // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(241, 244, 247, 1)),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Icon(
              Icons.calendar_month,
              color: Color.fromRGBO(35, 31, 32, 1),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 7),
            child: Icon(
              Icons.more_vert,
              color: Color.fromRGBO(35, 31, 32, 1),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 463,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(62, 100, 255, 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 208,
                            height: 82,
                            child: Text(
                              "Защита от Covid-19",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 36,
                            child: Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Text(
                                "Запищитесь онлайн на вакцинацию",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 73.16,
                          ),
                          Container(
                            width: 296.32,
                            height: 251.84,
                            margin: EdgeInsets.only(right: 32.4, left: 48.4),
                            child: Image.network(
                              "assets/illustration.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(107, 119, 154, 0.05),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Нужен доктор ?",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color.fromRGBO(35, 55, 77, 1)),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "Найдите подходящих специалистов",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 119, 154, 1)),
                              ),
                            ],
                          ),
                          Container(
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Sahifa()));
                                });
                              },
                              child:Container(
                              width: 40,
                              height: 40,
                              child: Icon(Icons.arrow_forward),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Специальность 😷",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Color.fromRGBO(34, 43, 69, 1)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 133,
                    child: ListView.builder(
                      itemBuilder: (_, __) {
                        return Text("");                     },
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}