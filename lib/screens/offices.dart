import 'package:fci_map/screens/details%20_labs.dart';
import 'package:fci_map/screens/management_offices.dart';
import 'package:fci_map/screens/path.dart';
import 'package:flutter/material.dart';

import 'details.dart';

class Offices extends StatefulWidget {
  const Offices({super.key});

  @override
  State<Offices> createState() => _OfficesState();
}

class _OfficesState extends State<Offices> {
  List<OfficeData> nameOffices = [
    OfficeData(
        name: 'مكتب عميد الكلية /الدور الاول', imagePath: "assets/images/office0.png"),
    OfficeData(
        name: ' مكتب وكيل الكلية لشؤون الدراسات العليا /الدور الاول ',
        imagePath: "assets/images/office1.png"),
    OfficeData(
        name: 'مكتب وكيل الكلية لشؤون التعليم والطلاب/الدور الاول    ',
        imagePath: "assets/images/office2.png"),
    OfficeData(
        name: 'مكتب وكيل الكلية لشؤون خدمة المجتمع والبيئة/الدور الاول  ',
        imagePath: "assets/images/office3.png"),
    OfficeData(
        name: ' مكتب الارشاد الاكاديمي /الدور الاول  ',
        imagePath: "assets/images/office7.png"), 
     OfficeData(
       name: 'مجلس الكليه /الدور الاول  ', imagePath: "assets/images/office2.png"),      
    OfficeData(
        name: 'أعضاء هيئة التدريس', imagePath: "assets/images/office4.png"),
   
   // OfficeData(
      //  name: 'أعضاء الهيئة المعاونة', imagePath: "assets/images/office5.png"),
    OfficeData(
        name: 'المكاتب الإدارية', imagePath: "assets/images/office6.png"),
    OfficeData(
        name: 'المدرجات والمعامل والقاعات',
        imagePath: "assets/images/office7.png"),
    
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
                title: nameOffices[index].name,
                pathImage: nameOffices[index].imagePath,
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => PathScreen(
                                title: nameOffices[index].name,
                                pathImage: 'assets/images/01.gif', pathImageLocation: '',
                              )));
                      break;


                  case 1:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => PathScreen(
                                title: nameOffices[index].name,
                                pathImage: 'assets/images/07.gif', pathImageLocation: '',
                              )));
                      break;
                   case 2:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => PathScreen(
                                title: nameOffices[index].name,
                                pathImage: 'assets/images/04.gif', pathImageLocation: '',
                              )));
                      break;
                    case 3:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => PathScreen(
                                title: nameOffices[index].name,
                                pathImage: 'assets/images/05.gif', pathImageLocation: '',
                              )));
                      break;

                     case 4:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => PathScreen(
                                title: nameOffices[index].name,
                                pathImage: 'assets/images/02.gif', pathImageLocation: '',
                              )));
                      break;  

                      case 5:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => PathScreen(
                                title: nameOffices[index].name,
                                pathImage: 'assets/images/06.gif', pathImageLocation: '',
                              )));
                      break;  
                      

                    case 6:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              Details(title: nameOffices[index].name)));
                      break;
                      
                        
                       case 7:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ManagementOffices(title: nameOffices[index].name)));
                      break;

                      case 8:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              Labs(title: nameOffices[index].name)));
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

class OfficeData {
  final String name;
  final String imagePath;

  OfficeData({required this.name, required this.imagePath});
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
