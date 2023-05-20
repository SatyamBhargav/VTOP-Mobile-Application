import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Column(
          children: [
            // Padding(
            //   padding: EdgeInsets.only(top: 100, left: 90),
            //   child: Title(
            //     color: Colors.black,
            //     child: Text(
            //       'Welcome To VTOP',
            //       style: TextStyle(fontSize: 20),
            //     ),
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(top: 100),
              // height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/welcome.png')),
              ),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(top: 450),
                  child: Text(
                    '“Inspiration does exist, but it must find you working."',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
                subtitle: Text(
                  '-Pablo Picasso',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
