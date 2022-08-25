import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'info2.dart';
import 'new_App.dart';

class HomePage1 extends StatefulWidget {
  int? index;
  HomePage1(this.index);
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  List<bool> _isLike4 = List.generate(Info.name.length, (index) => false);
  List<bool> _isLike3 = List.generate(Info.time2.length, (index) => false);
  List<bool> _isLike2 = List.generate(Info.time1.length, (index) => false);
  List<bool> _isLike = List.generate(Info.name.length, (index) => false);
  List<bool> _isLike1 = List.generate(Info.time.length, (index) => false);
  @override
  void initState() {
    _isLike4[0] = true;
    _isLike[1] = true;
    _isLike2[1] = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        title: Text(
          "Записаться",
          style: TextStyle(color: Color.fromRGBO(34, 43, 69, 1), fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        primary: true,
        child: Padding(
          padding: const EdgeInsets.only(left: 27),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 144,
                  height: 21,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Декабрь, 2021",
                        style: TextStyle(
                            color: Color.fromRGBO(34, 43, 69, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                        width: 14,
                        height: 7,
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Color.fromRGBO(34, 43, 69, 1),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 22,
              ),
           Container(
                height: 90,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Info.name.length,
                    itemBuilder: (cotext, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (!_isLike[index]) {
                              _isLike = List.generate(
                                  Info.name.length, (index) => false);
                              _isLike[index] = true;
                            } else {
                              _isLike[index] = false;
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 80,
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: _isLike[index]
                                  ? Color.fromRGBO(62, 100, 255, 1): Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  Info.name[index],
                                  style: TextStyle(
                                      color: _isLike[index]
                                          ? Color.fromRGBO(255, 255, 255, 1)
                                          : Color.fromRGBO(107, 119, 154, 1),
                                      fontSize: 24,
                                      fontWeight: _isLike[index]
                                          ? FontWeight.w700
                                          : FontWeight.w400),
                                
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                width: 145,
                height: 21,
                child: Text(
                  "Доступные чсы",
                  style: TextStyle(
                      color: Color.fromRGBO(34, 43, 69, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Info.time.length,
                    itemBuilder: (cotext, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (!_isLike1[index]) {
                              _isLike3 = List.generate(
                                  Info.time2.length, (index) => false);
                              _isLike2 = List.generate(
                                  Info.time1.length, (index) => false);
                              _isLike1 = List.generate(
                                  Info.time.length, (index) => false);
                              _isLike1[index] = true;
                            } else {
                              _isLike1[index] = false;
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _isLike1[index]
                                  ? Color.fromRGBO(62, 100, 255, 1)
                                  : Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Info.time[index],
                                  style: TextStyle(
                                      color: _isLike1[index]
                                          ? Color.fromRGBO(255, 255, 255, 1)
                                          : Color.fromRGBO(107, 119, 154, 1),
                                      fontSize: 14,
                                      fontWeight: _isLike1[index]
                                          ? FontWeight.w700
                                          : FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Info.time1.length,
                    itemBuilder: (cotext, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _isLike1 = List.generate(
                                Info.time2.length, (index) => false);
                            _isLike3 = List.generate(
                                Info.time.length, (index) => false);
                            if (!_isLike2[index]) {
                              _isLike2 = List.generate(
                                  Info.time1.length, (index) => false);
                              _isLike2[index] = true;
                            } else {
                              _isLike2[index] = false;
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _isLike2[index]
                                  ? Color.fromRGBO(62, 100, 255, 1)
                                  : Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Info.time1[index],
                                  style: TextStyle(
                                      color: _isLike2[index]
                                          ? Color.fromRGBO(255, 255, 255, 1)
                                          : Color.fromRGBO(107, 119, 154, 1),
                                      fontSize: 14,
                                      fontWeight: _isLike2[index]
                                          ? FontWeight.w700
                                          : FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Info.time2.length,
                    itemBuilder: (cotext, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (!_isLike3[index]) {
                              _isLike2 = List.generate(
                                  Info.time1.length, (index) => false);
                              _isLike1 = List.generate(
                                  Info.time.length, (index) => false);
                              _isLike3 = List.generate(
                                  Info.time2.length, (index) => false);
                              _isLike3[index] = true;
                            } else {
                              _isLike3[index] = false;
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _isLike3[index]
                                  ? Color.fromRGBO(62, 100, 255, 1)
                                  : Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Info.time2[index],
                                  style: TextStyle(
                                      color: _isLike3[index]
                                          ? Color.fromRGBO(255, 255, 255, 1)
                                          : Color.fromRGBO(107, 119, 154, 1),
                                      fontSize: 14,
                                      fontWeight: _isLike3[index]
                                          ? FontWeight.w700
                                          : FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                width: 227,
                height: 21,
                child: Text(
                  "Информация о пациенте",
                  style: TextStyle(
                      color: Color.fromRGBO(34, 43, 69, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Container(
                width: 33,
                height: 16,
                child: Text(
                  "ФИО",
                  style: TextStyle(color: Color.fromRGBO(107, 119, 154, 1)),
                ),
              ),
              SizedBox(height: 9),
              Container(
                width: 360,
                height: 50,
                child: TextFormField(
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintText: "Иззат Рахматов",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(34, 43, 69, 1), fontSize: 16),
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
                  maxLines: 1,
                  showCursor: true,
                  cursorColor: Colors.black,
                  cursorHeight: 30,
                  cursorWidth: 3,
                ),
                color: Color.fromRGBO(107, 119, 154, 0.05),
              ),
              SizedBox(height: 20),
              Container(
                width: 54,
                height: 16,
                child: Text(
                  "Возраст",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(107, 119, 154, 1),
                  ),
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Container(
                width: 360,
                height: 50,
                decoration:
                    BoxDecoration(color: Color.fromRGBO(107, 119, 154, 0.05)),
                child: TextFormField(
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 21,
                        color: Color.fromRGBO(107, 119, 154, 1),
                      ),
                      hintText: "26 - 30",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(34, 43, 69, 1), fontSize: 16),
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
                  maxLines: 1,
                  showCursor: true,
                  cursorColor: Colors.black,
                  cursorHeight: 30,
                  cursorWidth: 3,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 27,
                height: 16,
                child: Text(
                  "Пол",
                  style: TextStyle(
                      color: Color.fromRGBO(107, 119, 154, 1), fontSize: 14),
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Info.name.length,
                    itemBuilder: (cotext, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (!_isLike4[index]) {
                              _isLike4 = List.generate(
                                  Info.name.length, (index) => false);
                              _isLike4[index] = true;
                            } else {
                              _isLike4[index] = false;
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _isLike4[index]
                                  ? Color.fromRGBO(62, 100, 255, 1)
                                  : Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Info.name[index],
                                  style: TextStyle(
                                      color: _isLike4[index]
                                          ? Color.fromRGBO(255, 255, 255, 1)
                                          : Color.fromRGBO(107, 119, 154, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20),
              Container(
                width: 151,
                height: 16,
                child: Text(
                  "Напишите о проблеме",
                  style: TextStyle(
                      fontSize: 14, color: Color.fromRGBO(107, 119, 154, 0.05)),
                ),
              ),
              SizedBox(height: 9),
              Container(
                width: 360,
                height: 129,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(107, 119, 154, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintText: "Ваша проблема",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(107, 119, 154, 1),
                          fontSize: 16),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(10, 225, 227, 232)),
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
              SizedBox(
                height: 62,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewApp()));
                  });
                },
                child: Container(
                  width: 360,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(62, 100, 255, 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Записаться",
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 21,
              )
            ],
          ),
        ),
      ),
    );
  }
}
