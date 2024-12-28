import 'package:flutter/material.dart';

import 'package:dotted_line/dotted_line.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       appBar: AppBar(
        
        //backgroundColor: Colors.black,
        foregroundColor: Colors.black,
        centerTitle: false,
        leadingWidth: 0,
         title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Text('Weekly Expense', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('From 1 - 6 Apr, 2024 ', style: TextStyle(fontSize: 17, color: Colors.grey)),
            ],
         ),

         actions: [
        
           TextButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide(color: Colors.grey)
                )
              )
            ),
            child: const Text('view report', style: TextStyle(color: Colors.black),)
            
          ),
            const Padding(
            padding: EdgeInsets.all(10)),
         ],
       ),
        
       body: Column(
          //Circles
          children: [

            const SizedBox(height: 30,),

             // CustomPaint(painter: DashedLinePainter()),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //purple circle
                Container(
                  child: const Center(child: Text(' 48%', style: TextStyle(color: Colors.purple, fontSize: 50),),),
                  
          width: 200.0,
          height: 200.0,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 237, 202, 244),
            shape: BoxShape.circle,
            
          ),
        ),
        const SizedBox(
          width: 5,
        ),

        Column(
          children: [
            //green circle
             Container(
                  child: const Center(child: Text(' 32%', style: TextStyle(color: Colors.green, fontSize: 30),),),
                  
          width: 130.0,
          height: 130.0,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 216, 246, 217),
            shape: BoxShape.circle,
            
          ),
        ),

        const SizedBox(
          height: 10,
        ),
        //red circl
        Row(
          children: [
              Container(
                  child: const Center(child: Text(' 13%', style: TextStyle(color: Colors.red, fontSize: 20),),),
                  
          width: 100.0,
          height: 100.0,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 214, 211),
            shape: BoxShape.circle,
            
          ),
        ),

        //yellow circle

        const SizedBox(
            width: 10,
        ),
        
        Column(
          children: [
             Container(
                  child: const Center(child: Text(' 7%', style: TextStyle(color: Color.fromARGB(255, 219, 200, 28), fontSize: 14),),),
                  
          width: 50.0,
          height: 50.0,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 250, 207),
            shape: BoxShape.circle,
            
          ),
        ),

        const SizedBox(
          height: 30,
        )
          ],
        )
          ],

        )

          ],
        )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
          const DottedLine(
            dashColor: Colors.grey,
          ),

           SizedBox(
              height: 20,
            ),

          //first row

          const Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
           

              SizedBox(
                width: 5,
              ),
              //Grocery Column

              Column(
                    children: [
                      Row(
                          children: [
                            CircleAvatar(
                backgroundColor: Colors.purple,
                radius: 8,
              ),
              SizedBox(
                width: 10,
              ),

               Text('Grocery', style: TextStyle(color: Colors.purple,
                      fontWeight: FontWeight.bold, fontSize: 20),),
                          ],

                      ),
                     
                      SizedBox(
                        height: 5,
                      ),
                      Text('  \$758.20', style: TextStyle(color: Colors.black),)
                    ],
              ),
              //Food and drink column

               Column(

               // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children: [
                            CircleAvatar(
                backgroundColor: Colors.green,
                radius: 8,
              ),
              SizedBox(
                width: 10,
              ),

               Text('Food & Drink', style: TextStyle(color: Colors.green,
                      fontWeight: FontWeight.bold, fontSize: 20),),
                          ],

                      ),
                     
                      SizedBox(
                        height: 5,
                      ),

                      Text('       \$758.20', style: TextStyle(color: Colors.black),)
                    ],
              ),
               SizedBox(
                width: 5,
              )
            ],
          ),

           SizedBox(
              height: 20,
            ),

          //second row

            const DottedLine(
            dashColor: Colors.grey,
          ),

            SizedBox(
              height: 20,
            ),

           const Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
           

              SizedBox(
                width: 5,
              ),
              //shopping Column

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children: [
                            CircleAvatar(
                backgroundColor: Colors.red,
                radius: 8,
              ),
              SizedBox(
                width: 10,
              ),

               Text('Shopping', style: TextStyle(color:Colors.red,
                      fontWeight: FontWeight.bold, fontSize: 20),),
                          ],

                      ),
                     
                      SizedBox(
                        height: 5,
                      ),
                      Text('       \$758.20', style: TextStyle(color: Colors.black),)
                    ],
              ),
              //Food and drink column

               Column(

                crossAxisAlignment: CrossAxisAlignment.start
                ,
                    children: [
                      Row(
                          children: [
                            CircleAvatar(
                backgroundColor: Color.fromARGB(255, 212, 195, 40),
                radius: 8,
              ),
              SizedBox(
                width: 10,
              ),

               Text('Transportation', style: TextStyle(color: Color.fromARGB(255, 212, 195, 40),
                      fontWeight: FontWeight.bold, fontSize: 20),),
                          ],

                      ),
                     
                      SizedBox(
                        height: 5,
                      ),
                      Text('       \$758.20', style: TextStyle(color: Colors.black),)
                    ],
              ),
               SizedBox(
                width: 5,
              )
            ],
          )
          
          ],
       ),
    );
  }
}