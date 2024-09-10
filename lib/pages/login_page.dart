// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(206, 207, 209, 209),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 1),
              // Logo
              Image.asset(
                'lib/imagenes/Logo-removebg-preview.png',
                width: 285,
                height: 285,
              ),
              //const SizedBox(height: 1),
              // Este SizedBox estaba fuera de lugar

              //Welcome Back!!
              const Text("Login",
                  style: TextStyle(
                    color: Color.fromARGB(255, 63, 61, 61),
                    fontSize: 28,
                    fontStyle: FontStyle.normal,
                  )),

              const SizedBox(height: 1),

              //Username textfield

              const Padding(
                padding: EdgeInsets.only(right: 320),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                        color: Color.fromARGB(255, 17, 17, 17),
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 500),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54)),
                      fillColor: Colors.white54,
                      filled: true,
                      hintText: "username@gmail.com",
                      prefixIcon: const Icon(Icons.email),
                      hintStyle: TextStyle(color: Colors.grey[500])),
                ),
              ),
              const SizedBox(height: 15),

              const Padding(
                padding: EdgeInsets.only(right: 290),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        color: Color.fromARGB(255, 17, 17, 17),
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),

              //Password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 500),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54)),
                      fillColor: Colors.white54,
                      filled: true,
                      hintText: "password",
                      prefixIcon: const Icon(Icons.lock),
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                      )),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 15),

              Padding(
                // Forgot Password ?
                padding: const EdgeInsets.only(right: 500),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password ?",
                      style: TextStyle(color: Colors.grey[800], fontSize: 11),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              // Sign in Bottom
              ElevatedButton(
                onPressed: () {
                  // Acción cuando el botón es presionado (Por ejemplo, iniciar sesión)
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue, // Color del texto del botón
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 15), // Tamaño del botón
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30), // Bordes redondeados
                  ),
                ),
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.1,
                      color: Colors.grey[800],
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.1,
                      color: Colors.grey[800],
                    ))
                  ],
                ),
              ),
              const SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 610),
                child: Row(
                  children: [
                    //Google Bottom
                    Image.asset(
                      "lib/imagenes/business-removebg-preview.png",
                      height: 40,
                    ),
                    const SizedBox(height: 7),

                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          //Apple Bottom

                          Image.asset(
                            "lib/imagenes/removebg-preview.png",
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

          

        
          //Password

          //Sing in bottom Left

          // Or continue with

          //Google or Apple sign in bottom

          //Not a member? register now!