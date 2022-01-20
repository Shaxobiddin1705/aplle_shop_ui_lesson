import 'package:flutter/material.dart';

class SignInTaskUIPage extends StatefulWidget {
  const SignInTaskUIPage({Key? key}) : super(key: key);
  static const String id = "sign_in_task_ui_page";

  @override
  _SignInTaskUIPageState createState() => _SignInTaskUIPageState();
}

class _SignInTaskUIPageState extends State<SignInTaskUIPage> {
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
            const SizedBox(height: 150,),
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
                        const Text("Sign in Account", style: TextStyle(color: Colors.black87, fontSize: 22, fontWeight: FontWeight.bold),),
                        const SizedBox(height: 10,),
                        const Text("Sign in to continue"),
                        const SizedBox(height: 50,),
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
                            child: const Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 17),),
                            height: 55,
                            minWidth: 350,
                            color: Colors.black,
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
                                  onTap: (){},
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
