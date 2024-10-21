import 'dart:convert';
import 'package:flutter/material.dart';
import 'category_selection_screen.dart';
import 'package:flutter/services.dart';  // Для загрузки JSON из assets

class AttractionSelectionScreen extends StatefulWidget {
  final String cityName;

  AttractionSelectionScreen({required this.cityName, required List<String> attractions});

  @override
  _AttractionSelectionScreenState createState() => _AttractionSelectionScreenState();
}

class _AttractionSelectionScreenState extends State<AttractionSelectionScreen> {
  Map<String, dynamic> cityData = {};  // Данные о городе и достопримечательностях

  @override
  void initState() {
    super.initState();
    _loadCityData();
  }

  Future<void> _loadCityData() async {
    // Загружаем JSON файл с данными
    final String response = await rootBundle.loadString('assets/data/citiesVLD.json');
    final data = await json.decode(response);

    setState(() {
      cityData = data['locations'][widget.cityName];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Достопримечательности - ${widget.cityName}'),
        leading: BackButton(),  // Кнопка "Назад"
      ),
      body: cityData.isEmpty
          ? Center(child: CircularProgressIndicator())  // Пока данные загружаются
          : ListView.builder(
              itemCount: cityData.keys.length,
              itemBuilder: (context, index) {
                String attractionName = cityData.keys.elementAt(index);
                Map<String, String> audioFiles = cityData[attractionName];

                return ListTile(
                  title: Text(attractionName),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategorySelectionScreen(
                          attractionName: attractionName,
                          adultAudioFilePath: audioFiles['adult_audio']!,
                          childAudioFilePath: audioFiles['child_audio']!,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
