import 'package:fci_map/screens/path.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Labs extends StatefulWidget {
  const Labs({super.key ,required this.title});
 final String title;
  @override
  State<Labs> createState() => _LabsState();
}

class _LabsState extends State<Labs> {
  @override
 List<Data> data = [
    Data(
        name:  'قاعه سيمنار 2 /الدور الثالث ',
        pathImage: "assets/images/office2.png",
        //depart: "علوم حاسب",
        pathImageLocation:  'assets/images/1.gif',
        ),
        Data(
        name:  ' معمل التصميم المنطقي /الدور الثالث',
        pathImage: "assets/images/office2.png",
        //depart: "علوم حاسب",
        pathImageLocation:  "assets/images/09.gif"
        
        ),
        Data(
        name:  'معمل 1 /الدور التاني',
        pathImage: "assets/images/office2.png",
        //depart: "علوم حاسب",
        pathImageLocation: 'assets/images/003.gif'
        ),
       
     Data(
        name:  ' مدرج 1 /الدور التاني',
        pathImage: "assets/images/office2.png",
        //depart: "علوم حاسب",
        pathImageLocation: 'assets/images/004.gif'
        ),

    Data(
        name:  '   معمل البيانات الكبيرة /الدورالثالث',
        pathImage: "assets/images/office2.png",
        //depart: "علوم حاسب",
        pathImageLocation: 'assets/images/005.gif'
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
