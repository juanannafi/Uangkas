import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pinput/pinput.dart';

class OTPVer extends StatefulWidget {
  const OTPVer({super.key});

  @override
  State<OTPVer> createState() => _OTPVerState();
}

class _OTPVerState extends State<OTPVer> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      margin: const EdgeInsets.all(7),
      width: 53,
      height: 53,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black)
      )
    );
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
              "Verification",
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
                    const SizedBox(height: 30),
                    const Text(
                      "Check your email",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Color.fromARGB(255, 0, 0, 128),
                      ),
                    ),
                    const Text(
                      "Enter the code we sent to :\n b********@gmail.com",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color.fromARGB(255, 0, 0, 128),
                          wordSpacing: 0
                      ),
                    ),
                    const SizedBox(height: 30),
                    Pinput(
                      length: 4,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          border: Border.all(color: Colors.grey)
                        )
                      ),
                      onCompleted: (pin) => debugPrint(pin),
                    ),
                    const SizedBox(height: 50),
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
