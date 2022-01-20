import 'package:aplle_shop_ui_lesson/pages/get_started_task_ui_page.dart';
import 'package:aplle_shop_ui_lesson/pages/sign_in_task_ui_page.dart';
import 'package:flutter/material.dart';

class TaskUIPage extends StatefulWidget {
  const TaskUIPage({Key? key}) : super(key: key);
  static const String id = "task_ui_page";

  @override
  _TaskUIPageState createState() => _TaskUIPageState();
}

class _TaskUIPageState extends State<TaskUIPage> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.deepOrange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text(
                "Your Logo",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Container(
              width: 300,
              height: 100,
              padding: const EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    current = value;
                  });
                },
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Column(children: [
                      const Text(
                        "All Your Favorite Dishes",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: const Text(
                            "All Your Favorite Dishes",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )),
                      Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: const Text(
                            "All Your Favorite Dishes",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )),
                    ]),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(children: [
                      const Text(
                        "All Your Favorite Dishes",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: const Text(
                            "All Your Favorite Dishes",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )),
                      Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: const Text(
                            "All Your Favorite Dishes",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )),
                    ]),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(children: [
                      const Text(
                        "All Your Favorite Dishes",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: const Text(
                            "All Your Favorite Dishes",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )),
                      Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: const Text(
                            "All Your Favorite Dishes",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(3),
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                        color: current == 0 ? Colors.white : Colors.grey,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(3),
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                        color: current == 1 ? Colors.white : Colors.grey,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(3),
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                        color: current == 2 ? Colors.white : Colors.grey,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                  color: Colors.deepOrangeAccent.withGreen(150),
                ),
                child: Column(
                  children: [
                    Container(
                      child: MaterialButton(
                        child: const Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, GetStartedTaskUiPage.id);
                        },
                        color: Colors.green,
                        minWidth: 250,
                        height: 50,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      padding: const EdgeInsets.only(top: 70),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: MaterialButton(
                        child: const Text(
                          "Log In",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.of(context).pushNamed(SignInTaskUIPage.id);
                        },
                        minWidth: 250,
                        height: 50,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getStarted() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      color: Colors.deepOrange.shade400,
      child: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              "Your Logo",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.only(left: 30, right: 20, top: 60),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Text(
                        "Create an account",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
