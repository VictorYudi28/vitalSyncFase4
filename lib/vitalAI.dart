import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

class VitalIAScreen extends StatefulWidget {
  @override
  _VitalIAScreenState createState() => _VitalIAScreenState();
}

class _VitalIAScreenState extends State<VitalIAScreen> {
  final TextEditingController _perguntaController = TextEditingController();
  String _respostaIA = '';
  bool _carregando = false;

  Future<void> chamarIA(String pergunta) async {
    setState(() {
      _carregando = true;
      _respostaIA = '';
    });

    try {
      final resultado = await Gemini.instance.text(pergunta);
      setState(() {
        _respostaIA = resultado?.output ?? 'Sem resposta';
      });
    } catch (e) {
      setState(() {
        _respostaIA = 'Erro ao conectar: $e';
      });
    } finally {
      setState(() {
        _carregando = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('VitalAI')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _perguntaController,
              decoration: InputDecoration(
                labelText: 'Digite sua pergunta para a IA',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton.icon(
              icon: Icon(Icons.send),
              label: Text('Perguntar'),
              onPressed: _carregando
                  ? null
                  : () {
                final pergunta = _perguntaController.text.trim();
                if (pergunta.isNotEmpty) {
                  chamarIA(pergunta);
                }
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: _carregando
                  ? Center(child: CircularProgressIndicator())
                  : SingleChildScrollView(
                child: Text(
                  _respostaIA,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
