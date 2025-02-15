import 'package:flutter/material.dart';
import 'package:untitled/login.dart';
import 'package:untitled/forgotpwd.dart';
import 'package:untitled/dashboard.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  bool isChecked = false; // Define state variable for checkbox

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(

          child: Column(
            children: [
              const SizedBox(height: 20),
               Column(
                children: [
                  Align(
                 alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                  child: Image(
                    height: 140,
                    width: 90,
                    image: AssetImage('assets/logoIcon.png'),
                  ),),),
                  Text(
                    'Let’s Create Your Account!',
                    style: TextStyle(
                        fontSize: 30, fontFamily: 'Lora', color: Colors.black),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Already Registered? ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Lora',
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const login(), // Replace with your login screen class
                              ),
                            );
                          },
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Lora',
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.green,
                              fontWeight: FontWeight.w600,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
            ],
              ),
              const SizedBox(height: 20),

              // Name Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    hintStyle: const TextStyle(
                        fontSize: 17, fontFamily: 'Lora', color: Colors.black),
                    fillColor: const Color(0xffF8F9FA),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon:
                    const Icon(Icons.person, size: 20, color: Colors.black),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // Email Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle: const TextStyle(
                        fontSize: 17, fontFamily: 'Lora', color: Colors.black),
                    fillColor: const Color(0xffF8F9FA),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: const Icon(Icons.email_outlined,
                        size: 20, color: Colors.black),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // Password Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: const TextStyle(
                        fontSize: 17, fontFamily: 'Lora', color: Colors.black),
                    fillColor: const Color(0xffF8F9FA),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon:
                    const Icon(Icons.lock_open, size: 20, color: Colors.black),
                    suffixIcon: const Icon(Icons.visibility_off_outlined, size: 25),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // Confirm Password Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Confirm your password',
                    hintStyle: const TextStyle(
                        fontSize: 17, fontFamily: 'Lora', color: Colors.black),
                    fillColor: const Color(0xffF8F9FA),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon:
                    const Icon(Icons.lock_open, size: 20, color: Colors.black),
                    suffixIcon: const Icon(Icons.visibility_off_outlined, size: 25),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // Contact Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your contact',
                    hintStyle: const TextStyle(
                        fontSize: 17, fontFamily: 'Lora', color: Colors.black),
                    fillColor: const Color(0xffF8F9FA),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7E8)),
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon:
                    const Icon(Icons.phone, size: 20, color: Colors.black),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Checkbox
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked = newValue!;
                        });
                      },
                      activeColor: Colors.green, // Checkbox color when checked
                      checkColor: Colors.white, // Tick color
                    ),
                    const Expanded(
                      child: Text(
                        'By continuing, you agree with our Terms & Conditions and Privacy Policy.',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'Lora', color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // Signup Button
              SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  },
                  child: const Text(
                    'Signup',
                    style: TextStyle(fontSize: 22, fontFamily: 'Lora', color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
