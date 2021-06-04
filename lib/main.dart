import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    final imgSize = 200.0;

    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF171717), primaryColor: Colors.red), // FF: alpha, 2b,2b,2b: rgb hex codes

      home: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              // Profile / header of page
              Container(
                //decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),

                  child: Column(
                    children: <Widget>[

                      Text("Profile", style: TextStyle(fontSize: 30.0, color: Color(0xFFc7c7c7)),),

                      SizedBox( height: 15.0, ),

                      // img
                      Container(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(150),
                            child: Image.asset("assets/images/profilePic.jpg", height: imgSize, width: imgSize, fit: BoxFit.cover,),

                        )
                      ),


                      Text("Tony Stark", style: TextStyle(fontSize: 30.0, color: Color(0xFFc7c7c7)),),

                      SizedBox(height: 4.0,),

                      Text("CEO of Stark Industries", style: TextStyle(fontSize: 15.0, color: Colors.white),),

                    ],
                  )
                ),
              ),


              // About / body of page
              Padding(
                padding: EdgeInsets.all(30.0),

                child: Column(
                  children: [

                    // Contact Box
                    Container(
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color(0xFF2b2b2b),
                              borderRadius: BorderRadius.circular(14),
                            ),

                            //color: Colors.cyanAccent,
                            child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [

                                    /// contact Header
                                    Text("Contact", style: TextStyle(fontSize: 35.0, color: Color(0xFFC7C7C7)),),

                                    // Horizontal line
                                    Divider(
                                      color: Colors.white,
                                    ),

                                    // email
                                    contactInfo("Email", "tonystark@starkindustries.com", Icons.email),

                                    // phone number
                                    contactInfo("Mobile", "1-222-333-4444", Icons.phone),

                                    // Location
                                    contactInfo("Location", "Classified", Icons.location_on),

                                  ],

                                )
                            )
                        )
                    ),

                    SizedBox(height: 20,),

                    // Education Box
                    box("Education", ["MA in Electrical Engineering and Physics", "University of MIT", "1984 - 1987"]),

                    SizedBox(height: 20,),

                    // Affiliation Box
                    box("Affiliation", ["Stark Industries", "S.H.I.E.L.D.", "A.I.M.", "U.S. Military", "U.S. Government"]),

                  ],
                )

              )

            ],
          ),
        )

      ),
    );
  }

  Widget box(String header, List<String> content)
  {
    return Container(
        child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color(0xFF2b2b2b),
              borderRadius: BorderRadius.circular(14),
            ),

            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    /// Header
                    Text(header, style: TextStyle(fontSize: 35.0, color: Color(0xFFC7C7C7)),),

                    // Horizontal line
                    Divider(
                      color: Colors.white,
                    ),

                    // Generate content list
                    for (var string in content) Text(string.toString(), style: TextStyle(fontSize: 15.0, color: Color(0xFFC7C7C7)),),
                  ],
                )
            )
        )
    );
  }

  Widget contactInfo(String header, String content, IconData theIcon)
  {
    return Container(
      child: Row(
        children: [
          Icon(
            theIcon,
            color: Colors.grey,
          ),

          Padding(padding: EdgeInsets.all(12),

                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(header, style: TextStyle(fontSize: 20.0, color: Color(0xFFC7C7C7),),),
                      SizedBox(height: 4,),
                      Text(content, style: TextStyle(fontSize: 15.0, color: Color(0xFFC7C7C7)),),
                    ]
                ),
          )
        ],
      ),
    );
  }
}

