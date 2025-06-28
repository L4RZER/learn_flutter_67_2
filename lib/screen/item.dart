import 'package:flutter/material.dart';
import 'package:learn_flutter_67_2/models/person.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter_67_2/screen/addForm.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   itemCount: personList.length,
    //   itemBuilder: (context, index) {
    //     return Container(
    //       decoration: BoxDecoration(
    //         color: Colors.blue,
    //         borderRadius: BorderRadius.circular(10),
    //       ),
    //       margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
    //       padding: const EdgeInsets.all(20),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 personList[index].name,
    //                 // style: const TextStyle(
    //                 //   fontSize: 24,
    //                 //   color: Colors.white,
    //                 //   fontWeight: FontWeight.bold,
    //                 // ),

    //                 // Step 12: use google fonts
    //                 style: GoogleFonts.kanit(
    //                   fontSize: 24,
    //                   color: Colors.white,
    //                   fontWeight: FontWeight.bold,
    //                 ),
    //               ),
    //               Text(
    //                 "Job: ${personList[index].job.title}",
    //                 // style: const TextStyle(
    //                 //   fontSize: 18,
    //                 //   color: Colors.white,
    //                 //   fontWeight: FontWeight.normal,
    //                 // ),
    //                 style: GoogleFonts.kanit(
    //                   fontSize: 18,
    //                   color: Colors.white,
    //                   fontWeight: FontWeight.normal,
    //                 ),
    //               ),
    //               Text(
    //                 personList[index].age.toString(),
    //                 // style: const TextStyle(
    //                 //   fontSize: 18,
    //                 //   color: Colors.white,
    //                 //   fontWeight: FontWeight.normal,
    //                 // ),
    //                 style: GoogleFonts.kanit(
    //                   fontSize: 18,
    //                   color: Colors.white,
    //                   fontWeight: FontWeight.normal,
    //                 ),
    //               ),
    //               Image.asset(
    //                 personList[index].job.image,
    //                 width: 50,
    //                 height: 50,
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
    // Step 17: Routing
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: personList.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: personList[index]
                  .job
                  .color, // Use the color from the job enum
                ),
                margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          personList[index].name,
                          style: GoogleFonts.kanit(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Age: ${personList[index].age}, Job: ${personList[index].job.title}",
                          style: GoogleFonts.kanit(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ]
                    ),
                    Image.asset(
                      personList[index].job.image,
                      width: 70,
                      height: 70,
                    ),
                  ],
                ),
              );

            },
            ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: IconButton(
            onPressed: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AddForm()),
                );
            }, 
            icon: Icon(Icons.add, size: 40, color: Colors.pinkAccent),
            ),
            ),
      ],
    );
  }
}
