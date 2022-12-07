import 'package:travell/imports.dart';

class AppButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final Color backgroundColor;
  final double size;
  final Color borderColor;

  const AppButton(
      {super.key,
      required this.child,
      required this.color,
      required this.backgroundColor,
      required this.size,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.buttonBackground,
      ),
      child: Center(child: child),
    );
  }
}
