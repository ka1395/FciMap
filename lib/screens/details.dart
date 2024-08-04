import 'dart:convert';

import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.title});
  final String title;
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<Data> data = [
    Data(
        name: 'د. محمد حلمي خفاجي',
        pathImage: "assets/images/person.png",
        depart: "علوم حاسب"),
    Data(
        name: 'د. محمد حسن فراج',
        pathImage: "assets/images/person.png",
        depart: "علوم حاسب"),
    Data(
        name: 'د. شيرين على طايع',
        pathImage: "assets/images/person.png",
        depart: "علوم حاسب"),
    Data(
        name: 'د. ماجي',
        pathImage: "assets/images/person.png",
        depart: "علوم حاسب"),
    Data(
        name: 'د. هبة نجاتي',
        pathImage: "assets/images/person.png",
        depart: "نظام معلومات"),
    Data(
        name: 'د. هبة الله نبيل',
        pathImage: "assets/images/person.png",
        depart: "نظام معلومات"),
    Data(
        name: 'د. مصطفى ثابت',
        pathImage: "assets/images/person.png",
        depart: "نظام معلومات"),
    Data(
        name: 'د. احمد سلامة',
        pathImage: "assets/images/person.png",
        depart: "نظام معلومات"),
    Data(
        name: 'د. مصطفى ربيع',
        pathImage: "assets/images/person.png",
        depart: 'علوم الحاسب'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return CardDetails(
            name: data[index].name!,
            depart: data[index].depart!,
            pahtImage: data[index].pathImage!,
            onTap: () {},
          );
        },
      ),
    );
  }
}

class CardDetails extends StatelessWidget {
  const CardDetails(
      {super.key,
      required this.name,
      required this.pahtImage,
      required this.depart,
      this.onTap});
  final String name;
  final String pahtImage;
  final String depart;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      margin:
          const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: .3,
        ),
        color: Colors.red,
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        onTap: onTap,
        child: LayoutBuilder(
          builder: (context, constraints) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(pahtImage),
                    radius: 22,
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  SizedBox(
                    width: constraints.maxWidth * .65,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontSize: 18, color: Colors.white),
                        ),
                        Text(
                          "قسم $depart",
                          style: const TextStyle(
                              fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.location_on,
                color: Colors.white,
                size: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Data {
  final String? name;
  final String? pathImage;
  final String? depart;

  Data({this.name, this.pathImage, this.depart});
}
// GridView.count(
//         crossAxisCount: 2, // عدد الأعمدة
//         childAspectRatio: 2, // نسبة العرض إلى الارتفاع لكل بطاقة
//         padding: EdgeInsets.all(8.0),
//         children: <Widget>[
//           _buildGridItem('د. محمد حلمي خفاجي'),
//           _buildGridItem('د. محمد حسن فراج'),
//           _buildGridItem('د. شيرين على طايع'),
//           _buildGridItem('د. ماجي'),
//           _buildGridItem('د. هبة نجاتي'),
//           _buildGridItem('د. هبة الله نبيل'),
//           _buildGridItem('د. مصطفى ثابت'),
//           _buildGridItem('د. مصطفى ربيع'),
//           _buildGridItem('د. احمد سلامة'),
//           _buildGridItem('د. ايمن عنتر'),
//           _buildGridItem('د. احمد صادق'),
//           _buildGridItem('د. فوزيه'),
//         ],
//       ),


  // Widget _buildGridItem(String title) {
  //   return Container(
  //     margin: EdgeInsets.all(8),
  //     decoration: BoxDecoration(
  //       color: Colors.red,
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //     child: MaterialButton(
  //       onPressed: () {
  //         if (title == 'د. فوزيه') {
  //           var router = new MaterialPageRoute(
  //             builder: (BuildContext context) => SplashScreen(),
  //           );
  //           //can back for previos page
  //           Navigator.of(context).push(router);
  //         }
  //         if (title == 'د. احمد صادق') {
  //           var router = new MaterialPageRoute(
  //             builder: (BuildContext context) => Offices(),
  //           );
  //           //can back for previos page
  //           Navigator.of(context).push(router);
  //         }
  //         if (title == 'د. محمد حلمي خفاجي') {
  //           var router = new MaterialPageRoute(
  //             builder: (BuildContext context) => PathScreen(),
  //           );
  //           //can back for previos page
  //           Navigator.of(context).push(router);
  //         }
  //       },
  //       child: Center(
  //         child: Text(
  //           title,
  //           textAlign: TextAlign.center,
  //           style: TextStyle(
  //             color: Colors.white,
  //             fontSize: 16,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
