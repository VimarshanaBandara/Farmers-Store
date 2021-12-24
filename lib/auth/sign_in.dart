import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
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
                 children:  [
                   Text('Sign in to continute'),
                   Text('FARMERS\'STORE',style: TextStyle(fontSize:45.0 , color: Colors.white , shadows: [
                     BoxShadow(
                       blurRadius: 5.0,
                       color: Colors.green.shade900,
                       offset: Offset(3,3)
                     )
                   ]  ),),

                   SignInButton(
                     Buttons.Google,
                     text: "Sign up with Google",
                     onPressed: () {},
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
