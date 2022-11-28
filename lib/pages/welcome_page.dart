import 'package:travell/imports.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final List _images = [
    Images.welcomeOne,
    Images.welcomeTwo,
    Images.welcomeThree
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(_images[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
