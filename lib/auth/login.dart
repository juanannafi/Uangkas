import 'package:flutter/material.dart';
import 'package:kas_cerdas_app/auth/forgot_password.dart';
import 'package:kas_cerdas_app/auth/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 46,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 0, 0, 128),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 191,
              height: 191,
              color: Colors.white,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            height: 589,
            width: 500,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 240, 248, 254),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 35, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Login to your account",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 128),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 0, 0, 128),
                          ),
                        ),
                        label: Text(
                          "Email",
                          selectionColor: Color.fromARGB(255, 0, 0, 128),
                        ),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Color.fromARGB(255, 0, 0, 128),
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 0, 0, 128),
                          ),
                        ),
                        label: Text(
                          "Password",
                          selectionColor: Color.fromARGB(255, 0, 0, 128),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 0, 0, 128),
                        )),
                  ),
                  const SizedBox(height: 7,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ForgotPassword(),
                              ));
                        },
                        child: const Text(
                          "Forget Password?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 128),
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      width: 328,
                      height: 55,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 20, 22, 150)),
                          ),
                          child: const Text(
                            "Continue",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Didn't have an account?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 20, 22, 150),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Register(),
                              ));
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Color.fromARGB(255, 20, 22, 150),
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Color.fromARGB(255, 20, 22, 150),
                          height: 36,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Or Login With",
                          style: TextStyle(
                              color: Color.fromARGB(255, 20, 22, 150),
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Color.fromARGB(255, 20, 22, 150),
                          height: 36,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  const Offset(3, 4), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 55,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  const Offset(3, 4), // changes position of shadow
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
