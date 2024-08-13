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
        name: 'ا.د. محمد حلمي خفاجي  ',
        pathImage: "assets/images/person.png",
        depart: "علوم حاسب",
        pathImageLocation: 'assets/images/4006.gif'
        
        ),
          Data(
        name: 'ا.د. هيثم الفيل ',
        pathImage: "assets/images/person.png",
        depart: "نظام معلومات",
         pathImageLocation: 'assets/images/4006.gif'
        ),
         Data(
        name: 'ا.د. محمد حسن ابراهيم   ',
        pathImage: "assets/images/person.png",
        depart: "نظام معلومات",
         pathImageLocation: 'assets/images/4006.gif'
        ),
       
    
    Data(
        name: 'د. رشاالبدري',
        pathImage: "assets/images/person.png",
        depart: "نظام معلومات",
         pathImageLocation: 'assets/images/4005.gif'
        ),
    Data(
        name:  ' د. بسمه حسن',
        pathImage: "assets/images/person.png",
        depart: "علوم حاسب", 
         pathImageLocation: 'assets/images/4005.gif'
        ),
        Data(
        name:  ' د.انجي رجائي ',
        pathImage: "assets/images/person.png",
        depart: "علوم اساسية", 
         pathImageLocation: 'assets/images/4005.gif'
        ),
        Data(
        name: 'د.اسلام عيد      ',
        pathImage: "assets/images/person.png",
        depart: "نظام معلومات",
         pathImageLocation: 'assets/images/4005.gif'
        ),
         Data(
        name: 'د. مصطفي ربيع        ',
        pathImage: "assets/images/person.png",
        depart:  'علوم الحاسب',
         pathImageLocation: 'assets/images/4006.gif'
        ),
         Data(
        name: 'د. هبة  نجاتي  ',
        pathImage: "assets/images/person.png",
        depart: "علوم اساسية", 
         pathImageLocation: 'assets/images/4007.gif'
        ),
         Data(
        name: 'د. فوزية',
        pathImage: "assets/images/person.png",
        depart: 'علوم الحاسب',
         pathImageLocation: 'assets/images/4007.gif'
        ),
          
         Data(
        name: 'د.جهاد حسن ',
        pathImage: "assets/images/person.png",
        depart: 'علوم الحاسب',
         pathImageLocation: 'assets/images/4007.gif'
        ),
        
    Data(
        name: 'د. هبة الله نبيل',
        pathImage: "assets/images/person.png",
        depart: "نظام معلومات",
         pathImageLocation: 'assets/images/4007.gif'
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
                           title: data[index].name!, pathImageLocation: '',),
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
