import 'package:flutter/material.dart';

class AudioPlayerScreen extends StatefulWidget {
  final String attractionName;
  final String audioFilePath;

  AudioPlayerScreen({
    required this.attractionName,
    required this.audioFilePath,
  });

  @override
  _AudioPlayerScreenState createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
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
        title: Text(widget.attractionName),
      ),
      body: Center(
        child: Text('Аудиоплеер'),
      ),
    );
  }
}