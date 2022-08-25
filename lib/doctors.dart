import 'package:app10/doctors_details.dart';
import 'package:flutter/material.dart';
import 'info.dart';

class Sahifa extends StatefulWidget {
 

  @override
  State<Sahifa> createState() => _SahifaState();
}

class _SahifaState extends State<Sahifa> {
  
  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          margin: EdgeInsets.only(left: 135, top: 13),
          width: 84,
          height: 21,
          child: Text(
            "Докторы",
            style: TextStyle(
              color: Color.fromRGBO(34, 43, 69, 1),
              fontSize: 18,
            ),
          ),
        ),
        leading: Container(
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 16,
              height: 14,
              child: Icon(
                Icons.arrow_back,
                color: Color.fromRGBO(34, 43, 69, 1),
              ),
            ),
          ),
          margin: EdgeInsets.only(left: 14, top: 25, bottom: 16),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(241, 244, 247, 1),
          ),
        ),
        actions: [
          Container(
            child: Icon(Icons.menu),
            margin: EdgeInsets.only(top: 25, right: 15, bottom: 16),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(241, 244, 247, 1),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 27, right: 27),
              width: 470,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(107, 119, 154, 0.05),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Поиск доктора",
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Container(
            height: 575,
            padding: EdgeInsets.symmetric(horizontal: 27, vertical: 20),
            child: GridView.builder(
                itemCount: Info.img.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/Sahifa2/$index");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 40,
                              color: Color.fromRGBO(0, 0, 0, 0.06)),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(Info.img[index]),
                          ),
                          Text(
                            Info.name[index],
                            style: TextStyle(
                              color: Color.fromRGBO(34, 43, 69, 1),
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            Info.kasp[index],
                            style: TextStyle(
                              color: Color.fromRGBO(107, 119, 154, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            Info.bal[index],
                            style: TextStyle(
                              color: Color.fromRGBO(107, 119, 154, 1),
                              fontSize: 11,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
