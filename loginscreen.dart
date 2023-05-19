import 'package:flutter/material.dart';
import 'package:yourapp/routes.dart';
class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context){
    if(_formKey.currentState!.validate()){
    Navigator.pushNamed(context, MyRoutes.homeRoute);
  }}

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/hello.png"),
            SizedBox(
              height: 20,
            ),
            Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20 ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:16 ,horizontal: 32),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Name",
                        labelText: "Name",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Name cannot be empty";
                        }

                        return null;
                      },
                    ),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        labelText: "Email",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email cannot be empty";
                        }

                        return null;
                      },
                    ),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Phone",
                        labelText: "Phone",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Phone cannot be empty";
                        }

                        return null;
                      },
                    ),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Gender",
                        labelText: "Gender",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Gender cannot be empty";
                        }

                        return null;
                      },
                    ),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Country Name",
                        labelText: "Country",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Country cannot be empty";
                        }

                        return null;
                      },
                    ),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter State Name",
                        labelText: "State",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "State cannot be empty";
                        }

                        return null;
                      },
                    ),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter City Name",
                        labelText: "City",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "City cannot be empty";
                        }

                        return null;
                      },
                    ),

                   SizedBox(
                     height: 50,
                   ),

                   ElevatedButton(child: Text("Login"),
                       onPressed: () => moveToHome(context)),

                    SizedBox(
                      height: 230,
                    ),

                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}