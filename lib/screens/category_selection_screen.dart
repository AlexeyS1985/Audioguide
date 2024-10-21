import 'package:flutter/material.dart';
import 'package:audiogid/screens/audio_player_screen.dart';

class CategorySelectionScreen extends StatefulWidget {
  final String attractionName;
  final String adultAudioFilePath;
  final String childAudioFilePath;

  CategorySelectionScreen({
    required this.attractionName,
    required this.adultAudioFilePath,
    required this.childAudioFilePath,
  });

  @override
  _CategorySelectionScreenState createState() => _CategorySelectionScreenState();
}

class _CategorySelectionScreenState extends State<CategorySelectionScreen> {
  @override
  void initState() {
    super.initState();
    // Инициализация ресурсов
  }

  @override
  void dispose() {
    // Очистка ресурсов
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Выбор категории - ${widget.attractionName}'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AudioPlayerScreen(
                      attractionName: widget.attractionName,
                      audioFilePath: widget.adultAudioFilePath,
                    ),
                  ),
                );
              },
              child: Text('Взрослый'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AudioPlayerScreen(
                      attractionName: widget.attractionName,
                      audioFilePath: widget.childAudioFilePath,
                    ),
                  ),
                );
              },
              child: Text('Ребенок'),
            ),
          ],
        ),
      ),
    );
  }
}