import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github Portfolio Test sd',
      home: const MainScreen(),
    );
  }
}
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Github portfolio test"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Test Png Image"),
            SizedBox(
                height: 40,
                width: 40,
                child: Image.asset(
                  "assets/images/meta.png",
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 30,
            ),
            Text("Test Jpeg Image"),
            SizedBox(
                height: 40,
                width: 40,
                child: Image.asset(
                  "assets/images/in.jpeg",
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 30,
            ),
            Text("Test Svg Image"),
            SizedBox(
                height: 40,
                width: 40,
                child: SvgPicture.asset(
                  "assets/images/star.svg",
                  fit: BoxFit.cover,
                )),
          ],
        ),
      ),
    );
  }
}