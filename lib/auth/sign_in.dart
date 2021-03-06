import 'package:farmers_store/home/homescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  Future<User?> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
     // print("signed in " + user.displayName);

      return user;
    } catch (e) {
      //print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity ,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background1.png'),
              fit: BoxFit.fill,
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 400.0,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  const Text('Sign in to continute' ,style: TextStyle(color: Colors.black , fontSize: 22.0,fontWeight: FontWeight.w700),),
                  Text('Farmers\'Store',style: GoogleFonts.pacifico(textStyle: const TextStyle(fontSize: 45.0,fontWeight: FontWeight.w700,color: Colors.green) ),),

                  Column(
                    children: [
                      SignInButton(
                        Buttons.Apple,
                        text: "Sign up with Apple",
                        onPressed: () {},
                      ),

                      SignInButton(
                        Buttons.Google,
                        text: "Sign up with Google",
                        onPressed: () async {
                          await _googleSignUp().then(
                                (value) => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Text('By signing in you are agreeing to our',style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.w700),),
                      Text('Terms and privacy policy',style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.w700),),
                    ],
                  )

                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}

