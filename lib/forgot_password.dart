import 'package:flutter/cupertino.dart' hide Title;
import 'package:flutter/material.dart' hide Title;

import 'home_page.dart';

class ForgotPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForgotPasswordState();
  }
}

class ForgotPasswordState extends State<ForgotPassword> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF003E25),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                  child: ImageVital(path: "assets/cadeado.png")
              ),
              Title(titleCont: "Esqueceu a senha"),
              Container(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Digite seu endereço de email e enviaremos um link para redefinir a sua senha",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: CustomInput(
                  hintText: 'Digite seu email',
                  obscureText: true,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: CustomButton(text: "Enviar",
                    color: Color(0xFF01613C),
                    onPressed: ()=> {
                      Navigator.of(
                      context
                      ).push(MaterialPageRoute(builder: (context) => HomePage()))
                    }
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: CustomTextButton(
                    text: 'Cancelar',
                    hexColor: '#FFFFFF',
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

class CustomInput extends StatelessWidget {
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomInput({
    Key? key,
    required this.hintText,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}