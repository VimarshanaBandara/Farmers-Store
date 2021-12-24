import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                          onPressed: () {},
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
