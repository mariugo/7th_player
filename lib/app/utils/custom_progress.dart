import 'dart:math' as math;

import 'package:flutter/material.dart';

class CustomProgress extends StatefulWidget {
  const CustomProgress({super.key});

  @override
  State<CustomProgress> createState() => _CustomProgressState();
}

class _CustomProgressState extends State<CustomProgress>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();
    _animation = Tween(begin: -math.pi, end: math.pi).animate(_controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 60,
        height: 60,
        child: AnimatedBuilder(
          builder: (context, child) {
            return CustomPaint(
              painter: LoaderPainter(colors: [
                const Color(0xFF1da1f2),
                const Color(0xFF1877F2),
                const Color(0xFF0076CE),
                const Color(0xFF0039a6),
              ], animation: _animation.value),
            );
          },
          animation: _animation,
        ),
      ),
    );
  }
}

class LoaderPainter extends CustomPainter {
  final List<Color> colors;
  final double animation;

  LoaderPainter({
    required this.colors,
    required this.animation,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final rect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: size.width,
      height: size.height,
    );

    var startArngle = animation;
    final sweepAngle = math.pi * 2 / colors.length;

    for (var color in colors) {
      paint.color = color;
      canvas.drawArc(
        rect,
        startArngle,
        sweepAngle + animation.clamp(-math.pi, 0),
        false,
        paint,
      );
      startArngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
