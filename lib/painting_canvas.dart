import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'brush_settings.dart';

class PaintingCanvas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: (details) {
        context.read<BrushSettings>().addLine(
          DrawnLine(
            points: [details.localPosition],
            color: context.read<BrushSettings>().color,
            strokeWidth: context.read<BrushSettings>().strokeWidth,
          ),
        );
      },
      onPanUpdate: (details) {
        context.read<BrushSettings>().updateCurrentLine(details.localPosition);
      },
      child: Consumer<BrushSettings>(
        builder: (context, brushSettings, child) {
          return CustomPaint(
            painter: CanvasPainter(brushSettings.lines),
            size: Size.infinite,
          );
        },
      ),
    );
  }
}

class CanvasPainter extends CustomPainter {
  CanvasPainter(this.lines);

  final List<DrawnLine> lines;

  @override
  void paint(Canvas canvas, Size size) {
    for (var line in lines) {
      var paint = Paint()
        ..color = line.color
        ..strokeWidth = line.strokeWidth
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke;
      canvas.drawPoints(PointMode.polygon, line.points, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
