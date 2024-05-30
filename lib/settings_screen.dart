import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'brush_settings.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Settings'),
          actions: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent, // Set background color to transparent if needed
              child: ClipOval(
                child: Image.asset(
                  'assets/image.jpg',
                  fit: BoxFit.cover, // Use BoxFit.cover to ensure the image covers the circular area
                  width: 50, // Ensure width and height are set to the diameter of the CircleAvatar
                  height: 50,
                ),
              ),
            )
          ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Brush Color', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildColorButton(context, Colors.red),
                _buildColorButton(context, Colors.green),
                _buildColorButton(context, Colors.blue),
                _buildColorButton(context, Colors.black),
              ],
            ),
            SizedBox(height: 20),
            Text('Brush Size', style: TextStyle(fontSize: 18)),
            Slider(
              value: context.watch<BrushSettings>().strokeWidth,
              min: 1.0,
              max: 10.0,
              onChanged: (value) {
                context.read<BrushSettings>().setStrokeWidth(value);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorButton(BuildContext context, Color color) {
    return GestureDetector(
      onTap: () {
        context.read<BrushSettings>().setColor(color);
      },
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
