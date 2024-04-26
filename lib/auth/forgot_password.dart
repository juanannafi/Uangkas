import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kas_cerdas_app/auth/login.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 0, 0, 128),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 46,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: 115,
              height: 140,
            ),
            const Text(
              "Forgot Password",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 27),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Color.fromARGB(255, 240, 248, 254),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    const Text(
                      "Enter the email associated with your\naccount and we will email you a code\nto recover your password",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color.fromARGB(255, 0, 0, 128),
                          wordSpacing: 0),
                    ),
                    const SizedBox(height: 30),
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
                    const SizedBox(height: 70),
                    SizedBox(
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
                            "Send",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Remember your password?",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color.fromARGB(255, 20, 22, 150)),
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
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Color.fromARGB(255, 20, 22, 150)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 90),
            Container(
              width: 52,
              height: 44,
              color: Colors.white,
            ),
            const Text(
              "Kas Cerdas",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
