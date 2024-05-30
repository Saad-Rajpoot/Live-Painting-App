import 'package:flutter/material.dart';

class BrushSettings extends ChangeNotifier {
  Color _color = Colors.black;
  double _strokeWidth = 4.0;
  List<DrawnLine> _lines = [];

  Color get color => _color;
  double get strokeWidth => _strokeWidth;
  List<DrawnLine> get lines => _lines;

  void setColor(Color color) {
    _color = color;
    notifyListeners();
  }

  void setStrokeWidth(double strokeWidth) {
    _strokeWidth = strokeWidth;
    notifyListeners();
  }

  void addLine(DrawnLine line) {
    _lines.add(line);
    notifyListeners();
  }

  void updateCurrentLine(Offset point) {
    _lines.last.points.add(point);
    notifyListeners();
  }

  void clear() {
    _lines.clear();
    notifyListeners();
  }
}

class DrawnLine {
  DrawnLine({required this.points, required this.color, required this.strokeWidth});

  List<Offset> points;
  final Color color;
  final double strokeWidth;
}
