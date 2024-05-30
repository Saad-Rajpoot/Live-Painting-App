import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'painting_canvas.dart';
import 'settings_screen.dart';
import 'brush_settings.dart';

void main() {
  runApp(const LivePaintingApp());
}

class LivePaintingApp extends StatelessWidget {
  const LivePaintingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BrushSettings(),
      child: MaterialApp(
        title: 'Live Painting App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Painting App'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              context.read<BrushSettings>().clear();
            },
          ),
        ],
      ),
      body: PaintingCanvas(),
    );
  }
}
