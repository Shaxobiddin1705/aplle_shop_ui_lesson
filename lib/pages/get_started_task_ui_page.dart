import 'package:aplle_shop_ui_lesson/pages/sign_in_task_ui_page.dart';
import 'package:flutter/material.dart';

class GetStartedTaskUiPage extends StatefulWidget {
  const GetStartedTaskUiPage({Key? key}) : super(key: key);
  static const String id = "get_started_task_ui_page";

  @override
  _GetStartedTaskUiPageState createState() => _GetStartedTaskUiPageState();
}

class _GetStartedTaskUiPageState extends State<GetStartedTaskUiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: Colors.deepOrange.shade400,
        child: Column(
          children: [
            const SizedBox(height: 120,),
              Container(
                alignment: Alignment.center,
                child: const Text("Your Logo", style: TextStyle(color: Colors.white, fontSize: 40),),
              ),
            const SizedBox(height: 80,),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 60),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Create an account", style: TextStyle(color: Colors.black87, fontSize: 22, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      const Text("Sign up to continue"),
                      const SizedBox(height: 50,),
                      const Text("NAME", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(color: Colors.grey.shade300)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Name",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Text("Email", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Text("Password", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Container(
                        child: MaterialButton(
                          onPressed: (){},
                          child: const Text("Get Started", style: TextStyle(color: Colors.white, fontSize: 17),),
                          height: 55,
                          minWidth: 350,
                          color: Colors.greenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an account?", style: TextStyle(color: Colors.grey),),
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).pushNamed(SignInTaskUIPage.id);
                              },
                              child: const Text(" LogIn", style: TextStyle(color: Colors.grey),),
                            )
                          ],
                        )
                      ),
                    ],
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
