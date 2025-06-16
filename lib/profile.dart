import 'package:flutter/cupertino.dart' hide Title;
import 'package:flutter/material.dart' hide Title;
import 'package:vitalsync/register.dart';

import 'app_main_screen.dart';
import 'forgot_password.dart';
import 'home_page.dart';

class Profile extends StatefulWidget {
  State<StatefulWidget> createState() {
    return ProfileState();
  }
}

class ProfileState extends State<Profile> {
    @override
    Widget build(BuildContext context)  {
      return Scaffold(
          backgroundColor: Color(0xFFE7FFDF),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [

                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Hoje",
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF306B31)
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 2),
                    child: Text(
                      "Resumo do dia",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Color(0xFF306B31)
                      ),
                    ),
                  ),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [

                      Container(
                        width: 150,
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFFC6F1BC),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [

                            Text(
                              "Qualidade do sono",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xFF306B31),
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                    Icons.nightlight_round,
                                  color: Color(0xFF306B31),
                                  size: 50,
                                ),
                                Text(
                                    "82",
                                  style: TextStyle(
                                      fontSize: 50.0,
                                      color: Color(0xFF306B31),
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            )

                          ],

                        )
                      ),
                      Container(

                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFFC6F1BC),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [

                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Recomendações",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color(0xFF306B31),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Column(

                                children: [

                                  Row(
                                    children: [
                                      Icon(
                                        Icons.restaurant,
                                        color: Color(0xFF306B31),
                                        size: 40,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "12:00",
                                          style: TextStyle(
                                            fontSize: 25.0,
                                            color: Color(0xFF306B31),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.directions_run,
                                        color: Color(0xFF306B31),
                                        size: 40,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "14:30",
                                          style: TextStyle(
                                            fontSize: 25.0,
                                            color: Color(0xFF306B31),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_right_alt,
                                        color: Color(0xFF306B31),
                                        size: 40,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "15:00",
                                          style: TextStyle(
                                            fontSize: 25.0,
                                            color: Color(0xFF306B31),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )


                                ],
                              )

                            ],

                          )
                      ),

                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        "Progresso",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Color(0xFF306B31),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [

                      Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFFC6F1BC),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.nightlight_round,
                              color: Color(0xFF306B31),
                              size: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Progresso sono",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Color(0xFF306B31),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFFC6F1BC),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.restaurant,
                              color: Color(0xFF306B31),
                              size: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Registrar refeição",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Color(0xFF306B31),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFFC6F1BC),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.directions_run,
                              color: Color(0xFF306B31),
                              size: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Registrar exercício",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Color(0xFF306B31),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        textAlign: TextAlign.end,
                        "Ver mais",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFF306B31),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          )
      );
    }
  }

