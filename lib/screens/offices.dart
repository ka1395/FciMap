import 'package:flutter/material.dart';

import 'details.dart';

class Offices extends StatefulWidget {
  const Offices({super.key});

  @override
  State<Offices> createState() => _OfficesState();
}

class _OfficesState extends State<Offices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title: Text(
          'المكاتب',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(3, 50, 3, 40),
            child: Container(
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),

              padding: EdgeInsets.all(20),
              child: Center(
                child: Icon(
                  Icons.location_on,
                  size: 100,
                  color: Colors.white,
                ),
              ),
              //color: Colors.red,
              height: 150,
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 2,
              children: <Widget>[
                _buildGridItem('مكتب عميد الكلية'),
                _buildGridItem('مكتب وكيل الكلية لشؤون الدراسات العليا'),
                _buildGridItem('مكتب وكيل الكلية لشؤون التعليم والطلاب'),
                _buildGridItem('مكتب وكيل الكلية لشؤون خدمة المجتمع والبيئة'),
                _buildGridItem('أعضاء هيئة التدريس'),
                _buildGridItem('أعضاء الهيئة المعاونة'),
                _buildGridItem('المكاتب الإدارية'),
                _buildGridItem('المدرجات والمعامل والقاعات'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(String title) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.red,
        // color: Color.fromARGB(255, 59, 81, 92),
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {
          var router = new MaterialPageRoute(
            builder: (BuildContext context) => Details(),
          );
          //can back for previos page
          Navigator.of(context).push(router);
        },
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
