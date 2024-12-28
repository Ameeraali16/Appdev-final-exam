import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:q1/bloc/managment_bloc.dart';
import 'package:q1/dataModel.dart';
import 'package:five_pointed_star/five_pointed_star.dart'; 

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 235, 166, 201), Color.fromARGB(255, 255, 243, 225)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text('details', style: TextStyle(fontSize: 15), ),
          leading: const Icon(Icons.arrow_back),
          actions: const [
            Icon(Icons.share),
            SizedBox(
              width: 10,
            )
          ],
        ),
      
        body:SafeArea(child:
        
          BlocBuilder<ManagmentBloc,ManagmentState>
            (builder: (context, state){
              if (state is dataInitial) {
                context.read<ManagmentBloc>().add(LoadData());
                return Center(child: CircularProgressIndicator(),);
              }
      
              if (state is dataLoading){
                return Center(child: CircularProgressIndicator(),);
              }
      
              if (state is dataLoaded) {
                return Column(

                  children: [

                    Padding(padding: EdgeInsets.all(10)),
                    Image.asset(
                "lib/juiceimage.png",
                height: 250,
                width: 250,
              ),
                    //Add image here
                    _buildInfo(state.data)
                  ],
                );
      
              }
      
              if( state is dataError){
                return Center(child: Text('Error: ${state.message}'),);
              }
      
              return Container();
            }
            ), 
            )
        ),
    );
  }
}

  Widget _buildInfo (List <DataModel> data){
      final juice_data = data [0];

    return Expanded(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //name and add button
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           //   Padding(padding: EdgeInsets.all(5)),
          
              Text(juice_data.name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              ElevatedButton(onPressed: () {}, 
              child: Text('+  01  -', style: TextStyle(color: Colors.black),)),
            ],
          ),

          //Grams

          Text('Each ( ${juice_data.grams} )'),

          // rating

          Row(
            children: [
              FivePointedStar(
                count: 5,
                color: Colors.yellow,
              ),
              Text('(${juice_data.rating.toString()})'),
            ],
          ),

          SizedBox(
            height: 20,
          ),

          //description

          Text(juice_data.description),

          //delivery time  row

          Row(
            children: [
              Icon(Icons.punch_clock, color: Colors.pink, ),
                SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Delivery Time', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(juice_data.delivery)
                ],
              ),

            ],
          ),

          //price and Add to cart row


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Column(
              children: [
                Text('Total Price'),
                Text('\$${juice_data.unit_price.toString()}.00', style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            ElevatedButton(onPressed: () {}
            , child: Text('Add to cart', style: TextStyle(color: Colors.black),))
            ],
            
          )

        ],
      ));
  }
      