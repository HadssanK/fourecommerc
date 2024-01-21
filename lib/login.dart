import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 220,
             child:Center(child: Lottie.asset("images/login.json")) ,
            ),
            Center(child: Text("Login",style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),)),
            SizedBox(height: 10,),
            Container(
              width: 90,
              child: Divider(
                height: 3,
                thickness: 2,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
                prefixIcon: Icon(Icons.person),
                hintText: "Enter Your Name",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.key),
                hintText: "Enter Your Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(height: 15,),

            ElevatedButton(onPressed: (){}, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
