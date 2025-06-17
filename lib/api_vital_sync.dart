import 'dart:convert';
import 'package:flutter/foundation.dart'; // para detectar se é Web
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
    List<String> nomesFrutas = [
      'lemon',
      'watermelon',
      'strawberry',
      'peach',
      'kiwi',
      'orange',
      'apple',
      'cherry',
      'pineapple',
      'mango',
    ];
    List<dynamic> resultados = [];

    for (String fruta in nomesFrutas) {
      var url = 'https://fruityvice.com/api/fruit/$fruta';

      if (kIsWeb) {
        url = 'https://cors-anywhere.herokuapp.com/$url';
      }

      try {
        var response = await http.get(Uri.parse(url));

        if (response.statusCode == 200) {
          var json = jsonDecode(response.body);
          resultados.add(json);
        } else {
          print('Erro ao buscar $fruta: ${response.statusCode}');
        }
      } catch (e) {
        print('Erro na requisição de $fruta: $e');
      }
    }

    setState(() {
      frutas = resultados;
      carregando = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recomendações')),
      body: carregando
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: frutas.length,
        itemBuilder: (context, index) {
          final fruta = frutas[index];
          return ListTile(
            title: Text(fruta['name'] ?? 'Sem nome'),
            subtitle:
            Text("Calorias: ${fruta['nutritions']['calories']}"),
          );
        },
      ),
    );
  }
}



