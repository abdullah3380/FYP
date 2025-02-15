import 'package:flutter/material.dart';
import 'package:untitled/forgotpwd.dart';
import 'package:untitled/dashboard.dart';
import 'signup.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
               const Column(
                children: [
               Image(
                 height:150,
                 width:100,
                 image: AssetImage('assets/logoIcon.png'),
                            ),
                  Text(
                    'Login to your account!',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Lora',
                        color: Colors.black),
                  ),

                ],
              ),

              const SizedBox(height: 40,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Lora',
                          color: Colors.black
                      ),
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7E8)),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7E8)),
                          borderRadius: BorderRadius.circular(10)
                      ),

                      prefixIcon: Icon(Icons.email_outlined,size: 20,color: Colors.black,),
                    ),
                  )),
              Padding(padding: EdgeInsets.only(left:20,right: 20,top: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Lora',
                          color: Colors.black
                      ),
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7E8)),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7E8)),
                          borderRadius: BorderRadius.circular(10)
                      ),

                      prefixIcon: Icon(Icons.lock_open,size: 20,color: Colors.black,),
                      suffixIcon: Icon(Icons.visibility_off_outlined,size: 25),
                    ),
                  )),
               Padding(padding: EdgeInsets.only(top: 20, right: 20),
                child:
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                   GestureDetector(
                     onTap: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => const forgotpwd(),
                         ),
                       );
                     },
                   child:
                    Text(
                    'Forgot password?',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Lora',
                        decoration: TextDecoration.underline,
                        color: Colors.black),
                  ),),],),),
              const SizedBox(height: 50,),
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
                      MaterialPageRoute(builder: (context) =>  Dashboard()),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 22, fontFamily: 'Lora', color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Lora',
                        color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const signup()),
                      );
                    },
                  child: Text(
                    ' Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.w600,
                        color: Colors.green),),
                  ),
                ],

              ),
            ],),
        ),
      ),
    );
  }
}
