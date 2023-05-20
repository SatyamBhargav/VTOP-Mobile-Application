import 'package:flutter/material.dart';
import 'package:ham/modules/SideBar.dart';
import 'package:ham/modules/homePage.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  bool isSidebarClosed = true;
  // late AnimationController _animationController;
  // late Animation<double> animation;

  // @override
  // void initState() {
  //   _animationController = AnimationController(
  //     vsync: this,
  //     duration: const Duration(milliseconds: 200),
  //   )..addListener(() {
  //       setState(() {});
  //     });

  //   animation = Tween<double>(begin: 0, end: 1).animate(
  //     CurvedAnimation(
  //         parent: _animationController, curve: Curves.fastOutSlowIn),
  //   );
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _animationController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1e212f),
      body: Stack(children: [
        AnimatedPositioned(
          width: 288,
          left: isSidebarClosed ? -250 : 0,
          height: MediaQuery.of(context).size.height,
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn,
          child: const Statebar(),
        ),
        Transform.translate(
          offset: Offset(isSidebarClosed ? 0 : 250, 0),
          child: Transform.scale(
            scale: isSidebarClosed ? 1 : 0.8,
            child: const ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                child: HomePage()),
          ),
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          left: isSidebarClosed ? 0 : 200,
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.only(left: 30, top: 55),
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 217, 212, 212),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                  icon: Icon(
                    Icons.list_outlined,
                  ),
                  onPressed: () {
                    if (isSidebarClosed) {
                      setState(() {
                        isSidebarClosed = false;
                      });
                    } else {
                      setState(() {
                        isSidebarClosed = true;
                      });
                    }
                  }),
            ),
          ),
        ),
      ]),
    );
  }
}
