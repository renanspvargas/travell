import 'package:travell/imports.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final double size;
  final Color borderColor;
  IconData? icon;
  String? text;

  AppButton({
    super.key,
    required this.color,
    required this.backgroundColor,
    required this.size,
    required this.borderColor,
    this.icon,
    this.text,
  })  : assert(icon != null || text != null, "You must provide icon OR text"),
        assert(icon == null || text == null,
            "Cannot provide both a icon and a text at the same time");

  Widget getCenteredWidget() {
    if (icon != null) {
      return Icon(icon, color: color);
    }

    if (text != null) {
      return Text(
        text!,
        style: const TextStyle(color: Colors.black),
      );
    }

    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
        border: Border.all(color: borderColor, width: 1.0),
      ),
      child: Center(child: getCenteredWidget()),
    );
  }
}
