import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() =>runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
),);

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState () => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
      backgroundColor: Colors.pink[300],
      title: Text('Profil'),
      leading: Icon(Icons.arrow_back),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.settings), onPressed: () {
        },),
      ],
     ),
     body:
     Column(
       children: [
         Padding(
           padding: EdgeInsets.fromLTRB(200, 200, 200, 8),
           child: CircleAvatar(
                    backgroundImage: AssetImage('asset/photo.jpg'),
                    radius: 50.0,
                  ),
         ),
         SizedBox(height: 50),
         Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[200],
          ),
          height: 200,
          width: 300, 
            child: Padding(
              padding: EdgeInsets.all(35),
              child: Column(
                children: [
                  Text('Delima Sari Dewi', style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 8,),
                  Text('085021002', style: GoogleFonts.poppins(fontSize: 15),),
                  Text('Manajemen Informatika', style: GoogleFonts.poppins(fontSize: 15),),
                  Text('Sekolah Vokasi',style: GoogleFonts.poppins(fontSize: 15),),
                  Text('Universitas Pakuan', style: GoogleFonts.poppins(fontSize: 15),),
                ],
              ),
            ),
          ), 
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              children: [
                Icon(Icons.call), Text('  081264575323'),
                Spacer(),
                Icon(Icons.email), Text('  delima055@gmail.com'),
            ],),
          ),
       ],
     ),
     );
     
  }
}