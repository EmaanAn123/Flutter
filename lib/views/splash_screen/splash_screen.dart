import 'package:flutter_application_1/consts/consts.dart';
import 'package:flutter_application_1/widgets_common/applogo_widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Vx.orange500,
        body: Center(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(bg, width: 300)),
              30.heightBox,
              applogoWideget(),
              appname.text.fontFamily(bold).size(10).white.make(),
            ],
          ),
        ));
  }
}
