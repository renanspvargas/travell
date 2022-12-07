import 'package:travell/imports.dart';

class CircleTabIndicator extends Decoration {
  final Color color;
  final double radius;

  const CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  final double radius;

  final Paint _paint = Paint();

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    _paint.color = color;
    _paint.isAntiAlias = true;

    final Size? configSize = configuration.size;

    if (configSize != null) {
      Offset circleOffset =
          Offset(configSize.width / 2 - radius / 2, configSize.height - radius);
      canvas.drawCircle(offset + circleOffset, radius, _paint);
      return;
    }

    canvas.drawCircle(offset, radius, _paint);
  }
}
