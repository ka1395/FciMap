import 'package:fci_map/screens/path.dart';
import 'package:flutter/material.dart';

import 'details.dart';

class Offices extends StatefulWidget {
  const Offices({super.key});

  @override
  State<Offices> createState() => _OfficesState();
}

class _OfficesState extends State<Offices> {
  List<String> nameOffices = [
    'مكتب عميد الكلية',
    'مكتب وكيل الكلية لشؤون الدراسات العليا',
    'مكتب وكيل الكلية لشؤون التعليم والطلاب',
    'مكتب وكيل الكلية لشؤون خدمة المجتمع والبيئة',
    'أعضاء هيئة التدريس',
    'أعضاء الهيئة المعاونة',
    'المكاتب الإدارية',
    'المدرجات والمعامل والقاعات',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_pin,
                color: Colors.red,
                size: 24,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'المكاتب',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListView.separated(
            itemCount: nameOffices.length,
            itemBuilder: (context, index) {
              return CustomCard(
                title: nameOffices[index],
                pathImage: "assets/images/office$index.png",
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => const PathScreen(
                                pathImage: 'assets/images/01.gif',
                              )));
                      break;
                    case 4:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              Details(title: nameOffices[index])));
                      break;
                  }
                },
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 5,
            ),
          ),
        ));
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.title,
      required this.pathImage,
      required this.onTap});
  final String title;
  final String pathImage;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .13,
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: .3,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        child: LayoutBuilder(
          builder: (context, constraints) => Row(
            children: [
              Image(
                  height: constraints.maxHeight * .7,
                  width: constraints.maxWidth * .3,
                  fit: BoxFit.fill,
                  image: AssetImage(pathImage)),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: SizedBox(
                  width: constraints.maxWidth * .7,
                  child: Padding(
                    padding: EdgeInsets.only(top: constraints.maxHeight * .3),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

   // Expanded(
          //   child: GridView.count(
          //     crossAxisCount: 2,
          //     childAspectRatio: 2,
          //     children: <Widget>[

          //       _buildGridItem('مكتب عميد الكلية'),
          //       _buildGridItem('مكتب وكيل الكلية لشؤون الدراسات العليا'),
          //       _buildGridItem('مكتب وكيل الكلية لشؤون التعليم والطلاب'),
          //       _buildGridItem('مكتب وكيل الكلية لشؤون خدمة المجتمع والبيئة'),
          //       _buildGridItem('أعضاء هيئة التدريس'),
          //       _buildGridItem('أعضاء الهيئة المعاونة'),
          //       _buildGridItem('المكاتب الإدارية'),
          //       _buildGridItem('المدرجات والمعامل والقاعات'),
          //     ],
          //   ),
          // ),
          // ),



          
  // Widget _buildGridItem(String title) {
  //   return Card(
  //     elevation: 15,
  //     child: Container(
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //         // color: Color.fromARGB(255, 59, 81, 92),
  //         borderRadius: BorderRadius.circular(10),
  //       ),
  //       child: MaterialButton(
  //         onPressed: () {
  //           //can back for previos page
  //           Navigator.of(context).push(MaterialPageRoute(
  //             builder: (BuildContext context) => const Details(),
  //           ));
  //         },
  //         child: Center(
  //           child: Text(
  //             title,
  //             textAlign: TextAlign.center,
  //             style: const TextStyle(
  //               fontSize: 18,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
