import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:social_media/firebase_screen.dart';
import 'package:social_media/home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool ischecked = false;



  TextEditingController txtemaillogin = TextEditingController();
  TextEditingController txtpasswordlogin = TextEditingController();




  @override
  void initState() {

    getData();

    super.initState();
  }

  void getData()async
  {

  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xffffffff),
            body: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("assets/background.png"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(
                            child: Image.asset(
                              "assets/logo.png",
                              height: 120,
                              width: 180,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 25, right: 25),
                          child: TextField(
                            controller: txtemaillogin,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined),
                              prefixIconColor: Color(0xff7d7f86),
                              hintText: "Your email  address",
                              hintStyle: TextStyle(color: Color(0xff7d7f86)),
                              filled: true,
                              fillColor: Color(0xfff6f6f6),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Color(0xfff6f6f6)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 25, left: 25, right: 25),
                          child: TextFormField(
                            obscureText: true,
                            controller: txtpasswordlogin,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.key),
                              prefixIconColor: Color(0xff7d7f86),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Color(0xff7d7f86)),
                              filled: true,
                              fillColor: Color(0xfff6f6f6),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Color(0xfff6f6f6)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 20, top: 25),
                          child: Row(
                            children: [
                              Transform.scale(
                                scale: 1.5,
                                child: Checkbox(
                                    checkColor: Colors.white,
                                    fillColor: MaterialStateProperty.all(
                                        Color(0xfffa7914)),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6)),
                                    value: ischecked,
                                    onChanged: (bool? valuee) {
                                      setState(() {
                                        ischecked = valuee!;
                                        print(valuee);
                                      });
                                    }),
                              ),
                              Text(
                                "Remember me",
                                style: TextStyle(color: Color(0xff7d7f86)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.07,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shadowColor: Color(0xffdee1e6),
                                      elevation: 10,
                                      backgroundColor: Color(0xfffa7914),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(50))),
                                  onPressed: () async{

                                    String? msg = await loginWithEmail(txtemaillogin.text, txtpasswordlogin.text);

                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$msg")));

                                    if(msg == "Success")
                                    {
                                      Navigator.push(context, MaterialPageRoute(builder: (context){return HomeScreen();}));
                                    }


                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(fontSize: 16),
                                  ))),
                        ),


                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.lock_outline,
                                        color: Color(0xfffa7914),
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Forgot Password?",
                                        style:
                                        TextStyle(color: Color(0xfffa7914)),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(onPressed: ()async{

                                Object msg = await googleLogin();
                                print("=========================${msg}======================================");

                              if(msg == true)
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context){return HomeScreen();}));
                              }

                            }, icon: FaIcon(FontAwesomeIcons.google,size: 35,color: Colors.red,)),
                            SizedBox(width: 10,),
                            IconButton(onPressed: ()async{

                                await signInWithFacebook();

                            }, icon: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,size:35,)),

                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Text(
                            "Don't have an account?",
                            style: TextStyle(color: Color(0xff7d7f86)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: TextButton(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(color: Color(0xfffa7914)),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "/");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
