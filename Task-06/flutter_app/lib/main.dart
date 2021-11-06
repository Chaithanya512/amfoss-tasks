// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: IntroScreen()));
}

void initState() => runApp(IntroScreen());

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
          backgroundColor: Colors.grey[400],
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => IntroScreen()))),
        ),
        body: Stack(children: [
          Padding(
              padding: EdgeInsets.all(14),
              child: Image.asset('assets/welcome.png')),
          Padding(
              padding: EdgeInsets.all(14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: TextSpan(children: const [
                  TextSpan(
                      text: 'Chaithanya Kalyan Reddy \n\n\n',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  TextSpan(
                      text:
                          'I am doing my UG in Amrita University with specalization in Artificial intelligence. I completed my schooling in RGM International School,AP. After my schooling, started my jee preperation like many of them. Finally landed here, i dont regret though. Besides my academics I play soccer, listen to music and dance a lot.  ',
                      style: TextStyle(color: Colors.black)),
                ])),
              ))
        ]),
      );
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          showNextButton: false,
          next: Text('next'),
          pages: [
            PageViewModel(
              title: 'YOGA SURGE',
              body: 'Inhale the future, exhale the past',
              image: buildImage('assets/page1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Healthy Freaky Exercises',
              body: 'Letting go is the hardest asana.',
              image: buildImage('assets/page2.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Cycling',
              body:
                  'You cannot always control what goes on outside. But you can always control what goes on inside.',
              image: buildImage('assets/page3.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Meditation',
              body: 'The longest journey of any person is the journey inward.',
              image: buildImage('assets/page4.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Get Started'),
          onDone: () => goToHome(context),
          doneColor: Colors.grey[900],
          showSkipButton: true,
          skip: Text('Skip'),
          onSkip: () => goToHome(context),
          skipColor: Colors.grey[900],
          dotsDecorator: getDotDecorator(),
          //skipFlex: 0,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => Homepage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecorator() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeColor: Colors.black,
        size: Size(7, 7),
        activeSize: Size(19, 7),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.orange[50],
      );
}
