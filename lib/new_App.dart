
import 'package:flutter/material.dart';
import 'info2.dart';
import 'doctors_details.dart';
class NewApp extends StatefulWidget {
  const NewApp({ Key? key }) : super(key: key);

  @override
  State<NewApp> createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  @override
  Widget build(BuildContext context) {
    
  
      

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
            ),
            Text(
              "Б.Макаров",
              style:
              TextStyle(fontSize: 16, color: Color.fromRGBO(34, 43, 69, 1)),
            ),
          ],
        ),
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.arrow_back,
              color: Color.fromRGBO(34, 43, 69, 1),
              size: 16,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        actions: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.phone_outlined,
              color: Color.fromRGBO(35, 32, 32, 1),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.videocam_outlined,
              color: Color.fromRGBO(35, 32, 32, 1),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 27),
                  width: 257,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(62, 100, 255, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: 20, left: 15, top: 18, bottom: 18),
                    child: Text(
                      "Ассалому алайкум, хаво узгарганда бошим азгина огриб туради, нима килсам булади ?",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 9,
            ),
            Container(
              width: double.infinity,
              height: 14,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    width: 31,
                    height: 14,

child: Text(
                      "10:13",
                      style: TextStyle(
                          color: Color.fromRGBO(107, 119, 154, 1),
                          fontSize: 12),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 27),
                    width: 10.67,
                    height: 8,
                  
                      
                    
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 27),
                  width: 229,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(241, 244, 247, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 20, left: 15, top: 18),
                    child: Text(
                      "Добрый день, если голова болить когда будет дождь тогда у Вас скорее всего мигрень",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(107, 119, 154, 1)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 9,
            ),
            Container(
              margin: EdgeInsets.only(right: 27),
              width: double.infinity,
              height: 14,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 27),
                    height: 14,
                    child: Text(
                      "10:14",
                      style: TextStyle(
                          color: Color.fromRGBO(107, 119, 154, 1),
                          fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 27),
                  width: 110,
                  height: 103,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(62, 100, 255, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: 14, left: 16, top: 18, bottom: 31),
                    child: Text(
                      "как то его можно лечить ?",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 9,
            ),
            Container(
              width: double.infinity,
              height: 14,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    width: 31,
                    height: 14,

child: Text(
                      "10:14",
                      style: TextStyle(
                          color: Color.fromRGBO(107, 119, 154, 1),
                          fontSize: 12),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 27),
                    width: 10.67,
                    height: 8,
                  
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 27),
                  width: 205,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(241, 244, 247, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 20, left: 15, top: 18),
                    child: Text(
                      "Да конечно, сейчас медицина ....... . ... . . . ",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(107, 119, 154, 1)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 9,
            ),
            Container(
              margin: EdgeInsets.only(right: 27),
              width: double.infinity,
              height: 14,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 27),
                    height: 14,
                    child: Text(
                      "10:15",
                      style: TextStyle(
                          color: Color.fromRGBO(107, 119, 154, 1),
                          fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 27),
                  width: 80,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(62, 100, 255, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                  ),
                  child: Padding(
                    padding:
                    EdgeInsets.only(left: 15, bottom: 9, right: 11, top: 9),
                    child: Text(
                      "... . . . .",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 9,
            ),
            Container(
              width: double.infinity,
              height: 14,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    width: 31,
                    height: 14,
                    child: Text(
                      "10:16",
                      style: TextStyle(

color: Color.fromRGBO(107, 119, 154, 1),
                          fontSize: 12),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 27),
                    width: 10.67,
                    height: 8,
                    child: Image.network(
                      "assets/Icon (5).png",
                      color: Color.fromRGBO(62, 100, 255, 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 27),
                  width: 240,
                  height: 46,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(241, 244, 247, 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                ),
              ],
            ),
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.only(right: 27),
              width: double.infinity,
              height: 14,
              child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 27),
                  width: 240,
                  height: 46,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(241, 244, 247, 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  
                ),
              ],
            ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 27),
              width: double.infinity,
              height: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Напишите письмо ...",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(107, 119, 154, 1)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: 414,
              height: 68,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(241, 244, 247, 1),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(
                          0,
                          -1,
                        ),
                        color: Color.fromRGBO(241, 244, 247, 1)),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 22,
                    height: 22,
                    child: Icon(
                      Icons.add,
                      size: 22,
                      color: Color.fromRGBO(34, 43, 69, 1),
                    ),
                  ),
                  Container(
                    width: 290,
                    height: 44,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          hintText: "Напишите письмо ...",
                          hintStyle: TextStyle(

color: Color.fromRGBO(107, 119, 154, 1),
                              fontSize: 16),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.red)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(107, 119, 154, 1)),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.green))),
                      enabled: true,
                      autofocus: false,
                      maxLines: 5,
                      showCursor: true,
                      cursorColor: Colors.black,
                      cursorHeight: 20,
                      cursorWidth: 1,
                    ),
                  ),
                  Container(
                    width: 15.4,
                    height: 22,
                    child: Icon(Icons.mic,
                        size: 22, color: Color.fromRGBO(34, 43, 69, 1)),
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