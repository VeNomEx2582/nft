import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nft/home_page.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: (NetworkImage(
                  "https://cdn.pixabay.com/photo/2022/03/01/02/51/galaxy-7040416_960_720.png")),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Collect Your',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  'Rear Digital Art',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'A credible and exllent market place',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text(
                  'for non-fungible token',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  height: 450,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: SlideAction(
                    onSubmit: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    elevation: 10,
                    text: 'Swipe to get started',
                    textStyle: TextStyle(fontSize: 15, color: Colors.white),
                    outerColor: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
