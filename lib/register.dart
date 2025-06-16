import 'package:flutter/cupertino.dart' hide Title;
import 'package:flutter/material.dart' hide Title;

import 'forgot_password.dart';
import 'home_page.dart';

class Register extends StatefulWidget {
  State<StatefulWidget> createState() {
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
        backgroundColor: Color(0xFF003E25),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                ImageVital(path: "assets/coracao.png"),
                Title(titleCont: "Bem vindo ao VitalSync"),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: LabeledInput(label: "Nome", hintText: "Digite seu nome", keyboardType: TextInputType.text),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: LabeledInput(label: "Email", hintText: "Digite seu email", keyboardType: TextInputType.emailAddress),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: LabeledInput(
                      label: "Senha", hintText: "Digite sua senha",
                      keyboardType: TextInputType.visiblePassword, obscureText: true
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: LabeledInput(
                      label: "Confirmar senha", hintText: "Digite sua senha novamente",
                      keyboardType: TextInputType.visiblePassword, obscureText: true
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 30.0),
                    child: CustomButton(
                      text: "Criar",
                      color: Color(0xFF01613C),
                      onPressed: () {
                        Navigator.of(
                            context
                        ).push(MaterialPageRoute(builder: (context) => HomePage()));
                      },
                    )
                )

              ],
            ),
          ),
        )
    );
  }
}