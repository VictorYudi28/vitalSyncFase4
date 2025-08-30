import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiVitalSync extends StatefulWidget {
  @override
  State<ApiVitalSync> createState() => ApiVitalSyncState();
}

class ApiVitalSyncState extends State<ApiVitalSync> {
  List<dynamic> frutas = [];
  bool carregando = true;

  @override
  void initState() {
    super.initState();
    fetchFrutas();
  }

  Future<void> fetchFrutas() async {
    // Usar 127.0.0.1 (localhost) para rodar com Flutter Desktop (Windows/macOS/Linux)
    var url = 'http://127.0.0.1:8080/frutas';

    try {
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        setState(() {
          frutas = json;
          carregando = false;
        });
      } else {
        print('Erro ao buscar frutas: ${response.statusCode}');
        setState(() {
          carregando = false;
        });
      }
    } catch (e) {
      print('Erro na requisição: $e');
      setState(() {
        carregando = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recomendações de Frutas')),
      body: carregando
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: frutas.length,
        itemBuilder: (context, index) {
          final fruta = frutas[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(
                fruta['nome'] ?? 'Sem nome',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4),
                  Text("Calorias: ${fruta['calorias'] ?? 'N/A'}"),
                  Text("Vitaminas: ${fruta['vitaminas'] ?? 'N/A'}"),
                  Text("Peso médio: ${fruta['pesoMedio'] ?? 'N/A'} kg"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
