import 'package:flutter/material.dart';

import 'offices.dart';
import 'path.dart';
import 'splash.dart';


class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(''),
      ),
      body: GridView.count(
        crossAxisCount: 2, // عدد الأعمدة
        childAspectRatio: 2, // نسبة العرض إلى الارتفاع لكل بطاقة
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          _buildGridItem('د. محمد حلمي خفاجي'),
          _buildGridItem('د. محمد حسن فراج'),
          _buildGridItem('د. شيرين على طايع'),
          _buildGridItem('د. ماجي'),
          _buildGridItem('د. هبة نجاتي'),
          _buildGridItem('د. هبة الله نبيل'),
          _buildGridItem('د. مصطفى ثابت'),
          _buildGridItem('د. مصطفى ربيع'),
          _buildGridItem('د. احمد سلامة'),
          _buildGridItem('د. ايمن عنتر'),
          _buildGridItem('د. احمد صادق'),
           _buildGridItem('د. فوزيه'),
        ],
      ),
    );
  }

  Widget _buildGridItem(String title) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
       child: MaterialButton(
                        onPressed: () {
                          if(title=='د. فوزيه'){

                        var router = new MaterialPageRoute(
                         builder: (BuildContext context) => SplashScreen(),
                    );
                    //can back for previos page
                    Navigator.of(context).push(router);
                         }
                          if(title=='د. احمد صادق'){

                        var router = new MaterialPageRoute(
                         builder: (BuildContext context) => Offices(),
                    );
                    //can back for previos page
                    Navigator.of(context).push(router);
                         }
                         if(title== 'د. محمد حلمي خفاجي')
                         {
                        var router = new MaterialPageRoute(
                         builder: (BuildContext context) =>PathScreen(),
                            );
                            //can back for previos page
                            Navigator.of(context).push(router);
                         }
                         
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