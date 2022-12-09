import 'package:travell/imports.dart';

class ResponsiveButton extends StatelessWidget {
  final bool isResponsive;
  final double? width;

  const ResponsiveButton({
    super.key,
    this.isResponsive = false,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            if (isResponsive)
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const AppText(
                  text: "Book Trip Now",
                  color: Colors.white,
                ),
              ),
            Image.asset(Images.buttonOne),
          ],
        ),
      ),
    );
  }
}
