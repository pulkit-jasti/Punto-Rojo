import 'dart:async';
import 'dart:convert'; 
import 'dart:math' show Random;

import 'package:curved_navigation_bar/curved_navigation_bar.dart';


import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:http/http.dart' as http; 

import 'package:location1/profile.dart';
import 'package:location1/tansport.dart';
import 'package:location1/zones.dart';

import 'maps.dart';



void main(){runApp(MyApp());_getLocation();continues();}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Location',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const MyHomePage(title: 'Location '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  final Location location = Location();
var density=0;
int _page = 2;
GlobalKey _bottomNavigationKey = GlobalKey();
static  List<Widget> _screens = [
Zones(),
    
    
    Text(
      'news',
    ),
    Home(),
    Transport(),
     Text(
      'corona meter',
    ),

  ];
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: density<1?Colors.red:Colors.green,
      
      
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.person), onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => User()),
  );
}),
        title: Text(widget.title),
        
      ),
      
      bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 2,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.location_on, size: 30),
            Icon(Icons.radio, size: 30),
            Icon(Icons.map, size: 30),
            Icon(Icons.train, size: 30),
            Icon(Icons.view_stream)
          ],
          color: Colors.blue,
          buttonBackgroundColor: Colors.orange,
          backgroundColor: density<1?Colors.red:Colors.green,
          animationCurve: Curves.easeInCirc,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _page = index;
              
            });
          },
        ),
      
      body: Container(padding: EdgeInsets.all(10),child: _screens[_page],)
        );
    
  }
}


  final Location location = Location();

  LocationData _location;
 
  var type='D';

 var danger=0;
  Future<void> _getLocation() async {
    
  

    
      final LocationData _locationResult = await location.getLocation();
      
        _location = _locationResult;
        const did='/-M9dm8LaDsu5kpnx2i2C';
        const nid='/-M9eFcs3URde6aZ62PSx';
                if(type=='D'){
                  
        const url = 'https://location-4509d.firebaseio.com/drivers/$did.json';
        await http.patch(url,
          body: json.encode({
            'latitude':_location.latitude,
      'longitude':_location.longitude,
      'position': danger>=4?'ubnormal':'normal',
      'density' :'high,'
            
          }));
    }
      else{
        const url = 'https://location-4509d.firebaseio.com/locations/$nid.json';
    await http.patch(url,
          body: json.encode({
            'latitude':_location.latitude,
      'longitude':_location.longitude,
      'position': danger>=4?'ubnormal':'normal',
            
          }));
    }
      
        

      
   
    
    
  }
  
//-----------------------------------------
fetchAndSetProducts() async {
    const url = 'https://location-4509d.firebaseio.com/locations.json';
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
     
      extractedData.forEach((personId, data) {
        
        densityperson(data['latitude'], data['longitude']);
        
      });
      
      
    } catch (error) {
      throw (error);
    }
  }
var numberofpeople=0;
void  densityperson(latitude,longitude){
    
    var a= 0.000990;
    
    var x1= _location.latitude+a;
    var x2=_location.latitude-a;
    var y1=_location.longitude+a;
    var y2=_location.longitude-a;
    if (latitude>=x2 && latitude<=x1 && longitude>=y2 && longitude<=y1){
      numberofpeople+=1;

    }
    
    var density=10000/numberofpeople ;
    print(density);
    numberofpeople=0;
    


  }
  
  
  //------
  continues(){
    const one = const Duration(seconds:20);
      const oneSec = const Duration(seconds:900);
  var random = new Random();
  
new Timer.periodic(oneSec, (Timer t) {
  var heart=random.nextInt(125);
  if(heart>100 || heart<50){
    
    danger+=1;

  }

});
  new Timer.periodic(one, (Timer t) {
    _getLocation();
  

  fetch();
    fetchAndSetProducts();
    
  
  });

  }
  


  //--------------------
var numberofpeopleinbus=0;
Future<void> fetch() async {
    const url = 'https://location-4509d.firebaseio.com/locations.json';
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
     
      extractedData.forEach((personId, data) {
        var latitude = data['latitude'] - 0.0000110; //midpoint
    var longitude = data['longitude'] - 0.000054; //midpoint
    var length_offset = 0.000054; //12 meters
    var breadth_offset = 0.000011; //2.5 meters
    var x1= latitude + breadth_offset;
    var x2= latitude - breadth_offset;
    var y1= longitude + length_offset;
    var y2= longitude - length_offset;
    if (latitude>=x2 && latitude<=x1 && longitude>=y2 && longitude<=y1){
      numberofpeopleinbus+=1;
    }
    var busdensity=25/numberofpeopleinbus ;
    print(busdensity);

    numberofpeopleinbus=0;
        
        
        
      });
      
      
    } catch (error) {
      throw (error);
    }
  }

 


  class Home extends StatefulWidget {
    @override
    _HomeState createState() => _HomeState();
  }
  
  
  class _HomeState extends State<Home> {
  get safe => true;

var density=0;
    @override
    Widget build(BuildContext context) {
      return Container(
        
        child: Container(color: density<1?Colors.red:Colors.green,
        padding: EdgeInsets.all(10),
        child: 
            MapSample(),
            
          
        ),
        
      );
    }
  }
  






