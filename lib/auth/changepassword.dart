import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
              "Change Password",
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
                color: Color.fromARGB(255, 254, 240, 243),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      "Enter your new password",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Color.fromARGB(255, 0, 0, 128),
                      ),
                    ),
                    const Text(
                      "Your new password must be different\nfrom previously used password",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color.fromARGB(255, 0, 0, 128),
                          wordSpacing: 0
                      ),
                    ),
                    const SizedBox(height: 20),
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
                    const SizedBox(height: 30,),
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
                    const SizedBox(height: 20),
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
                            "Verify",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ),
                    const SizedBox(height: 10),
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
