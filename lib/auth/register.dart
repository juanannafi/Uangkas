import 'package:flutter/material.dart';
import 'package:kas_cerdas_app/auth/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                    "Create your new account",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 128),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
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
                          "Username",
                          selectionColor: Color.fromARGB(255, 0, 0, 128),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 0, 0, 128),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
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
                    height: 20,
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
                  const SizedBox(
                    height: 20,
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
                          "Confirm Password",
                          selectionColor: Color.fromARGB(255, 0, 0, 128),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 0, 0, 128),
                        )),
                  ),
                  const SizedBox(
                    height: 60,
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
                            "Sign Up",
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
                        "Already have an account?",
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
                                builder: (context) => const Login(),
                              ));
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Color.fromARGB(255, 20, 22, 150),
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
