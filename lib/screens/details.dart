import 'package:fci_map/screens/path.dart';
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
        depart: "علوم حاسب",
        pathImageLocation: 'assets/images/01.gif'
        
        ),
    Data(
        name: 'د. محمد حسن فراج',
        pathImage: "assets/images/person.png",
        depart: "علوم حاسب",
         pathImageLocation: 'assets/images/01.gif'
        
        ),
    Data(
        name: 'د. شيرين على طايع',
        pathImage: "assets/images/person.png",
        depart: "علوم حاسب", 
        pathImageLocation: 'assets/images/01.gif'),
    Data(
        name: 'د. ماجي',
        pathImage: "assets/images/person.png",
        depart: "علوم حاسب",
         pathImageLocation: 'assets/images/01.gif'
        ),
    Data(
        name: 'د. هبة نجاتي',
        pathImage: "assets/images/person.png",
        depart: "نظام معلومات",
         pathImageLocation: 'assets/images/01.gif'
        ),
    Data(
        name: 'د. هبة الله نبيل',
        pathImage: "assets/images/person.png",
        depart: "نظام معلومات",
         pathImageLocation: 'assets/images/01.gif'
        ),
    Data(
        name: 'د. مصطفى ثابت',
        pathImage: "assets/images/person.png",
        depart: "نظام معلومات",
         pathImageLocation: 'assets/images/01.gif'
        ),
    Data(
        name: 'د. احمد سلامة',
        pathImage: "assets/images/person.png",
        depart: "نظام معلومات",
         pathImageLocation: 'assets/images/01.gif'
        ),
    Data(
        name: 'د. مصطفى ربيع',
        pathImage: "assets/images/person.png",
        depart: 'علوم الحاسب',
         pathImageLocation: 'assets/images/01.gif'
        ),
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
            onTap: () {
               
               //add data[index].pathImageLocation in  pathImage  wwhen image is avilable

               Navigator.push(
                   context,
                    MaterialPageRoute(
                      builder: (context) => PathScreen(
                          //pathImage:data[index].pathImage!,
                          pathImage:data[index].pathImageLocation! ,
                           title: data[index].name!,),
                   ));
            },
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
  final String? pathImageLocation;

  Data({
    this.name,
    this.pathImage,
    this.depart,
    this.pathImageLocation,
  });
}
