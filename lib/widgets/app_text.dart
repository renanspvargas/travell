import 'package:travell/imports.dart';

class AppText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const AppText({
    super.key,
    required this.text,
    this.size = 16,
    this.color = Colors.black54,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
