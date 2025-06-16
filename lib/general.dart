import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_main_screen.dart';

class General extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return GeneralState();
  }
}

class GeneralState extends State<General> {
  @override
  Widget build(BuildContext context) {
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
                    textAlign: TextAlign.center,
                    "Registro Geral",
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF306B31)
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFC6F1BC),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Peso",
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Color(0xFF306B31),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "72 kg",
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
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFC6F1BC),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Altura",
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Color(0xFF306B31),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "180 cm",
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
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFC6F1BC),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Idade",
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Color(0xFF306B31),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "32",
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
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFA4E6A4),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 0,
                    ),
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        textAlign: TextAlign.center,
                        "Salvar",
                        style: TextStyle(
                          color: Color(0xFF225522),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ),
                )



              ]


          )
        )
      )
    );
  }

}
