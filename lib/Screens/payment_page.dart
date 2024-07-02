import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';


class Razor extends StatefulWidget {
  const Razor({super.key});

  @override
  State<Razor> createState() => _RazorState();
}

class _RazorState extends State<Razor> {
  late Razorpay _razorpay;

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    Fluttertoast.showToast(msg: "Payment Success");
    log('Success: ${response.paymentId}');
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    Fluttertoast.showToast(msg: "Payment Failed");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet was selected
    // Fluttertoast.showToast(msg: "Payment Noooo");
  }

  void openCheckout() {
    var options = {
      'key': 'rzp_test_R6lYZDtZj25RTk',
      'amount':12000,
      'name': 'Uber Payment',
      'description': 'Ecommerce Application',
      'prefill': {'contact': '7994553815', 'email': 'test@razorpay.com'}
    };
    try {
      _razorpay.open(options);
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              openCheckout();
            },
            child: const Text("Pay",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold))),
      ),
    );
  }
}

