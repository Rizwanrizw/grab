import 'package:flutter/material.dart';
import 'package:grab/Screens/map_page.dart';
import 'package:grab/Screens/registration_page.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatefulWidget {
  final String number;
  const Otp({super.key, required this.number});

  @override
  State<Otp> createState() => _OtpState();
}
class _OtpState extends State<Otp> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      "Enter 4-digit Code send to\n${widget.number} ",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Change Your phone number?",
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Pinput(
                      defaultPinTheme: PinTheme(
                        width: 56,
                        height: 56,
                        textStyle: const TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.w600),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromRGBO(234, 239, 243, 1)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      separatorBuilder: (index) => const SizedBox(width: 8),
                      hapticFeedbackType: HapticFeedbackType.lightImpact,
                      onChanged: (value) {
                        debugPrint('onChanged: $value');
                      },
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child:  ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[800]// Replace with your desired color
                        ),

                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    RegistrationPage()),
                          );
                        },
                          child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "Verify",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}