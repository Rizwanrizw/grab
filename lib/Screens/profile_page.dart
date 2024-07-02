import 'package:flutter/material.dart';
import 'package:grab/Screens/payment_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
 State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 10),
                child: Text(
                  'Rizwan Rizwan',
                  style: TextStyle(
                    fontSize: 32,
                    height: 2,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "5.0",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200]
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 23,),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        children: [
                          Icon(
                            Icons.report_gmailerrorred_outlined,
                            size: 40,
                          ),
                          const Text("Help")
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 5),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        children: [
                          // Icon(
                          //   Icons.paypal_outlined,
                          //   size: 40,
                          // ),
                          IconButton(
                            icon: const Icon(Icons.paypal_outlined,size: 40,),
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Razor()
                                  )
                              );
                            },

                          ),
                          const Text("Payment",style:
                          TextStyle(fontSize: 15,fontWeight: FontWeight.w500

                          ),),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 23),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.beenhere_rounded,
                            size: 40,
                          ),
                          Text("Activity")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                        height: 100,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 6,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "You have multiple promos",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "we'll automatically apply the one that saves you.",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            // "https://www.shutterstock.com/shutterstock/photos/2232568135/display_1500/stock-vector-golden-coupons-vouchers-with-a-percentage-sign-on-flying-gifts-flying-shopping-bag-for-online-2232568135.jpg"),
                                       "https://www.shutterstock.com/shutterstock/photos/2330412575/display_1500/stock-vector--d-coupons-voucher-with-confetti-explosion-effect-isolated-on-white-background-concept-for-sale-2330412575.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                        height: 100,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 6,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Safety check-up",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Learn ways to make trips safer.",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          "https://www.shutterstock.com/shutterstock/photos/1656984313/display_1500/stock-vector-insurance-policy-icon-vector-icon-isolated-on-white-background-1656984313.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                        height: 100,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 6,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Privacy check-up",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Take an interactive tour of your privacy settings",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          "https://www.shutterstock.com/shutterstock/photos/2343376755/display_1500/stock-vector-data-protection-concept-safety-and-security-technology-password-access-to-account-firewall-2343376755.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Settings",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),

                    ListTile(
                      leading: Icon(Icons.email_outlined),
                      title: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Messages",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),

                    ListTile(
                      leading: Icon(Icons.card_giftcard_outlined),
                      title: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Send a gift",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),

                    ListTile(
                      leading: Icon(Icons.call_rounded),
                      title: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Customer support",
                            style: TextStyle(

                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),

                    ListTile(
                      leading: Icon(Icons.login_outlined),
                      title: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Logout",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}