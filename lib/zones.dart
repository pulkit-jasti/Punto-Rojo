import 'dart:async';

import 'package:flutter/material.dart';
import 'package:location1/maps.dart';
import 'package:location1/zon.dart';
class Zones extends StatefulWidget {
  @override
  _ZonesState createState() => _ZonesState();
}

class _ZonesState extends State<Zones> {
  @override
  final List<Zone> Zon = [
 
  Zone(place: "Hyderabad",type:"red" ),
  Zone(place: "Suryapet",type:"red"  ),
  Zone(place: "Ranga Reddy",type:"orange"),
  Zone(place: "MedchalMalkajgiri ",type:"red" ),
  Zone(place: "Vikarabad",type:"green" ),
  Zone(place: "Warangal Urban",type:"red" ),
  Zone(place: "Nizamabad",type:"orange" ),
  Zone(place: "Jogulamba Gadwal ",type:"orange" ),
  Zone(place: "Nirmal",type:"orange" ),
  Zone(place: "Nalgonda",type:"orange" ),
  Zone(place: "Adilabad",type:"green" ),
  Zone(place: "Sangareddy",type:"orange" ),
  Zone(place: "Kama reddy ",type:"red" ),
  Zone(place: "Kumuram Bheem Asifabad",type:"orange" ),
  Zone(place: "Karimnagar",type:"orange" ),
  Zone(place: "Khammam ",type:"green" ),
  Zone(place: "Mulugu ",type:"orange" ),
  Zone(place: "Bhadradri Kothagudem",type:"orange" ),
  Zone(place: "Mahabubabad ",type:"red" ),
  Zone(place: "Warangal Rural",type:"orange" ),
  Zone(place: "Wanaparthy ",type:"green" ),
  
]; 
  Widget build(BuildContext context) {
    return Container(child: SingleChildScrollView(
      child:
        Column(
          children: <Widget>[
            Container(color: Colors.white,height: MediaQuery.of(context).size.height *0.4,child: MapSample(),),
            Container(height: MediaQuery.of(context).size.height *0.4,
            color: Colors.black,
              child: ListView.builder(
                

              
                itemBuilder: (ctx, index) {
                    return Card(
                      color: Zon[index].type=="orange"?Colors.orange:(Zon[index].type=="red"?Colors.red:Colors.green),
                      elevation: 5,
                      margin: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 5,
                      ),
                      child: ListTile(

                        
                        
                        title: Text(
                          Zon[index].place,
                          style: Theme.of(context).textTheme.title,
                        ),
                        subtitle: Text(
                         Zon[index].type,
                        ),
                        
                      ),
                    );
                },
              ),)
          ],
        ),
      
    ),
    
      
    );
  }
}

