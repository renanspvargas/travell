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
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      AppLargeText(text: "Trips"),
                      AppText(text: "Mountain", size: 30),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 250,
                        child: AppText(
                          text:
                              "Mountain hikes give you a incredible sense of freedom along with endurance test",
                          color: AppColors.textColor2,
                          size: 14,
                        ),
                      ),
                      SizedBox(height: 40),
                      ResponsiveButton()
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
