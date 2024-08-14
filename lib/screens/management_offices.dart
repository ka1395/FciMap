import 'package:fci_map/screens/path.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ManagementOffices extends StatefulWidget {
  const ManagementOffices({super.key,required this.title});
final String title;
  @override
  State<ManagementOffices> createState() => _ManagementOfficesState();
}

class _ManagementOfficesState extends State<ManagementOffices> {
  @override
 List<Data> data = [
    Data(
        name:  'الدور الارضي/ شئون العاملين',
        pathImage: "assets/images/office3.png",
        //depart: "علوم حاسب",
        pathImageLocation:  ' assets/images/G001.gif ',
        ),
        Data(
        name:   '  وحدة شئون الجودة / الدورالارضي',
        pathImage: "assets/images/office2.png",
        //depart: "علوم حاسب",
        pathImageLocation:  "assets/images/G003.gif"
        
        ),
        Data(
        name:  'معمل رقم 1 /الدور الارضي ',
        pathImage: "assets/images/office2.png",
        //depart: "علوم حاسب",
        pathImageLocation: 'assets/images/G002.gif'
        ),
       
     Data(
        name:   'الكادر العام /الدور الارضي',
        pathImage: "assets/images/office2.png",
        //depart: "علوم حاسب",
        pathImageLocation: 'assets/images/G005.gif'
        ),

    Data(
        name:  '    شئون الطلاب/الدور الارضي      ',
        pathImage: "assets/images/office2.png",
        //depart: "علوم حاسب",
        pathImageLocation: 'assets/images/G004.gif'
        ),
        
    Data(
        name:  'الاستحقاقات/الدور الارضي',
        pathImage: "assets/images/office2.png",
        //depart: "علوم حاسب",
        pathImageLocation: 'assets/images/G006.gif'
        ),
         Data(
        name:  'الدراسات العليا/الدور الارضي',
        pathImage: "assets/images/office2.png",
        //depart: "علوم حاسب",
        pathImageLocation: 'assets/images/G007.gif'
        ),
         Data(
        name:  'الخريجين/الدور الارضي',
        pathImage: "assets/images/office2.png",
        //depart: "علوم حاسب",
        pathImageLocation: 'assets/images/G008.gif'
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
           // depart: data[index].depart!,
            pahtImage: data[index].pathImage!,
            onTap: () {
               
               //add data[index].pathImageLocation in  pathImage  wwhen image is avilable

               Navigator.push(
                   context,
                    MaterialPageRoute(
                      builder: (context) => PathScreen(
                         // pathImage:data[index].pathImage!,
                           pathImage :data[index].pathImageLocation!,
                           title: data[index].name!, pathImageLocation: '', ),
                           
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
     // required this.depart,
      this.onTap});
  final String name;
  final String pahtImage;
 // final String depart;
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
  //final String? depart;
  final String? pathImageLocation;

  Data({
    this.name,
    this.pathImage,
   // this.depart,
    this.pathImageLocation,
  });
}
