import 'package:flutter/material.dart';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return  
    Scaffold(
      appBar: AppBar(title:Text('profile'),leading:IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);})),
      body:Container(
        height: MediaQuery.of(context).size.height,
        child: Column(children: <Widget>[
        Container(
                          width: 100.0,
                          height: 100.0,
                          margin: const EdgeInsets.all(10.0),
                          // padding: const EdgeInsets.all(3.0),
                          child: ClipOval(
                            child: Image.network(
                                'https://www.fakenamegenerator.com/images/sil-female.png'),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          child: new TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Name',
                              icon: Icon(Icons.person),
                            ),
                            
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          child: new TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Mobile',
                              icon: Icon(Icons.phone),
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          child: new TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              icon: Icon(Icons.mail),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        
      ],),
        
      ),
    );
  }
}