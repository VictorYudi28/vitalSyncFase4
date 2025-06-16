
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vitalsync/app_main_screen.dart';
import 'package:vitalsync/forgot_password.dart';
import 'package:vitalsync/register.dart';

class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
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
                  margin: EdgeInsets.only(top: 30.0),
                  child: CustomButton(
                    text: "Login",
                    color: Color(0xFF01613C),
                    onPressed: () {
                      Navigator.of(
                          context
                      ).push(MaterialPageRoute(builder: (context) => AppMainScreen()));
                    },
                  )
              ),
              Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: CustomTextButton(
                    text: 'Esqueceu a senha?',
                    hexColor: '#FFFFFF',
                    onPressed: () {
                      Navigator.of(
                          context
                      ).push(MaterialPageRoute(builder: (context) => ForgotPassword()));
                    },
                  )
              ),
              Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: CustomTextButton(
                    text: 'Criar conta',
                    hexColor: '#FFFFFF',
                    onPressed: () {
                      Navigator.of(
                          context
                      ).push(MaterialPageRoute(builder: (context) => Register()));
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

class Title extends StatefulWidget {

  final String titleCont;
  final Color? colorTitle;

  const Title({super.key, required this.titleCont, this.colorTitle});

  State<StatefulWidget> createState(){
    return TitleState();
  }
}

class TitleState extends State<Title> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text(
            textAlign: TextAlign.center,
            widget.titleCont,
            style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: widget.colorTitle ?? Colors.white),
          )
      ),
    );
    }
  }

class ImageVital extends StatefulWidget {

  final String path;

  const ImageVital({super.key, required this.path});

  State<StatefulWidget> createState(){
    return ImageVitalState();
  }
}

class ImageVitalState extends State<ImageVital> {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Image.asset(widget.path, width: 150, height: 150),
    );
  }

}

class LabeledInput extends StatelessWidget {
  final String label;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;

  const LabeledInput({
    super.key,
    required this.label,
    required this.hintText,
    this.keyboardType,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8),
        TextField(
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
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // botão com largura total
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // cantos arredondados
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}


class CustomTextButton extends StatelessWidget {
  final String text;
  final String hexColor;
  final VoidCallback onPressed;

  const CustomTextButton({
    Key? key,
    required this.text,
    required this.hexColor,
    required this.onPressed,
  }) : super(key: key);

  Color _hexToColor(String hex) {
    final buffer = StringBuffer();
    if (hex.length == 6 || hex.length == 7) buffer.write('ff');
    buffer.write(hex.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: _hexToColor(hexColor),
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}



