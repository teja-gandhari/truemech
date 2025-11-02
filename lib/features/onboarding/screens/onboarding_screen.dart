import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../core/widgets/custome_button.dart';
import 'intro_screens/intro_pages.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  //page controller
  PageController _controller = PageController();
  bool onLastPage =false;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:_appBar(),
      body: Stack(
        children:[
          PageView(
            onPageChanged: (index){
              setState(() {
                onLastPage = (index == 2);
              });
            },
            controller: _controller,
          children: [
            Intro1(),
            Intro2(),
            Intro3(),
          ],
        ),
          //dot indicator + next button
          Align(
              alignment: Alignment(0, 0.45),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SmoothPageIndicator(
                    effect: SwapEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Colors.blue,
                      dotHeight: 10,dotWidth: 8),
                      controller: _controller, count: 3),
                  const SizedBox(height: 18),
                  //next button
                  onLastPage
                  ? CustomeButton(onPressed: onGetStarted, child: Text('Get Started',style: TextStyle(color: Colors.white)))
                  : CustomeButton(onPressed: nextPage, child: Text('Next',style: TextStyle(color: Colors.white)))
                ],
              )),
        ]
      ),
    );
  }
  //appbar
  _appBar(){
    return AppBar(
        title:Row(
              children: [
                const Spacer(),
                InkWell(onTap:onTap,
                    child: Text('Skip',style: TextStyle(fontSize: 16,color: Colors.grey[800]),)),
              ],
            ),
      backgroundColor: Colors.white,
        );
  }
  //skip button
  void onTap(){
    context.go('/login');
  }
  // next page
  nextPage(){
    return _controller.nextPage(duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
  }
  //last Page
  onGetStarted(){
    context.go('/login');
  }

}


