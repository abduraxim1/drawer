import 'dart:html';
import 'dart:ui';
import 'new_appointment.dart';
import 'package:app10/doctors.dart';
import 'package:app10/main.dart';
import 'package:flutter/material.dart';
import 'info.dart';
import 'new_App.dart';

class Sahifa2 extends StatefulWidget {
  int? index;
  Sahifa2(this.index);

  @override
  State<Sahifa2> createState() => _Sahifa2State();
}

class _Sahifa2State extends State<Sahifa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: const EdgeInsets.only(left: 17, top: 24, bottom: 16),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(
              241,
              244,
              247,
              1,
            ),
          ),
          child: InkWell(
            onTap: (() {
              setState(() {
                Navigator.pop(context);
              });
            }),
            child: const Icon(
              Icons.arrow_back,
              color: const Color.fromRGBO(34, 43, 69, 1),
            ),
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 17),
            child: Icon(
              Icons.more_vert,
              color: Color.fromRGBO(35, 31, 32, 1),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  color: const Color.fromRGBO(252, 250, 250, 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 55,
                        backgroundColor: const Color.fromRGBO(216, 216, 216, 1),
                        backgroundImage: NetworkImage(Info.img[widget.index!]),
                      ),
                      Text(
                        Info.name[widget.index!],
                        style: const TextStyle(
                          color: const Color.fromRGBO(34, 43, 69, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        Info.kasp[widget.index!],
                        style: const TextStyle(
                          color: Color.fromRGBO(107, 119, 154, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 110,
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 49,
                                  height: 63,
                                  color:
                                      const Color.fromRGBO(122, 206, 250, 0.15),
                                  child: const Icon(
                                    Icons.people_alt_outlined,
                                    color:
                                        const Color.fromRGBO(122, 206, 250, 1),
                                  ),
                                ),
                                const Text(
                                  "1000+",
                                  style: const TextStyle(
                                    color: Color.fromRGBO(34, 43, 69, 1),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                  ),
                                ),
                                const Text(
                                  "Пациентов",
                                  style: const TextStyle(
                                    color: Color.fromRGBO(107, 119, 154, 1),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 110,
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 49,
                                  height: 63,
                                  color: const Color.fromRGBO(253, 241, 243, 1),
                                  child: const Icon(
                                    Icons.search,
                                    color: Color.fromRGBO(232, 137, 158, 1),
                                  ),
                                ),
                                const Text(
                                  "10 Лет",
                                  style: const TextStyle(
                                    color: Color.fromRGBO(34, 43, 69, 1),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                                
                                const Text(
                                  "Стаж",
                                  style: const TextStyle(
                                    color: Color.fromRGBO(107, 119, 154, 1),
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 110,
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromRGBO(
                                255,
                                255,
                                255,
                                1,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 49,
                                  height: 63,
                                  color: const Color.fromRGBO(254, 246, 236, 1),
                                  child: const Icon(
                                    Icons.star_border,
                                    color:
                                        const Color.fromRGBO(247, 196, 128, 1),
                                  ),
                                ),
                                const Text(
                                  "4.5 ",
                                  style: TextStyle(
                                    color: Color.fromRGBO(34, 43, 69, 1),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                  ),
                                ),
                                const Text(
                                  "Рейтинг",
                                  style: const TextStyle(
                                    color:
                                        const Color.fromRGBO(107, 119, 154, 1),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 41,
                ),
                const Text(
                  "О доктора",
                  style: TextStyle(
                    color: Color.fromRGBO(34, 43, 69, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                const Text(
                  "Здесь будет текст Здесь будет текст Здесь будет текст Здесь будет текст фыва ыфвафыв афывафы ваф ываф ываф ываф ываф ываф ывафывафывафы вафыв афывафывафывафыва фывафыва фываф ыва фыва фыва фыва фыва фыва фыва фыва фыва фыа фыва фывафыва",
                  style: TextStyle(
                    color: const Color.fromRGBO(107, 119, 154, 1),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Время работы",
                  style: const TextStyle(
                    color: Color.fromRGBO(34, 43, 69, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                const Text(
                  "Пн - Пт (08:30 AM - 09:00 PM)",
                  style: const TextStyle(
                    color: Color.fromRGBO(107, 119, 154, 1),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                const Text(
                  "Связаться",
                  style: const TextStyle(
                    color: Color.fromRGBO(34, 43, 69, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(237, 161, 171, 0.15),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network("icon.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "СМС",
                          style: TextStyle(
                            color: Color.fromRGBO(
                              34,
                              43,
                              69,
                              1,
                            ),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "С помощю встроенного чата",
                          style: TextStyle(
                            color: Color.fromRGBO(107, 119, 154, 1),
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(122, 206, 250, 0.15),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.phone,
                        color: const Color.fromRGBO(122, 206, 250, 1),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Аудио вызов",
                          style: TextStyle(
                            color: Color.fromRGBO(34, 43, 69, 1),
                            fontSize: 16,
                          ),
                        ),
                        Text("Аудио",  style: TextStyle(
                            color: Color.fromRGBO(107, 119, 154, 1),
                            fontSize: 12,
                          ),)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(247, 196, 128, 0.15)),
                      child: Image.network("icon.png"),
                    ),
                    Column(
                      children: [
                        Text(
                          "Видео вызов",
                          style: TextStyle(
                            color: Color.fromRGBO(34, 43, 69, 1),
                            fontSize: 16,
                          ),
                        ),
                        Text("Видео",
                            style: TextStyle(
                              color: Color.fromRGBO(107, 119, 154, 1),
                              fontSize: 12,
                            )),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 42),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => HomePage1(widget.index))));
                  },
                  child: Center(
                    child: Container(
                      width: 360,
                      height: 60,
                      child: Center(
                        child: Text(
                          "Записаться",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(62, 100, 255, 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 21,
                )
              ]),
        ),
      ),
    );
  }
}
