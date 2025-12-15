import 'package:flutter/material.dart';
import 'sign_up_page.dart' as signup;
import 'home_page.dart' as home;

/// SignInPage is the login screen where users enter their email and password.
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  SignInPageState createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  // Controls whether the password field is obscured (hidden) or visible
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Full-screen container with background image
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover, // Ensures background covers entire screen
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          // Allows scrolling if content overflows
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Title text at the top
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                const SizedBox(height: 32),

                // Email input field
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: const TextStyle(color: Color(0xFFFFFFFF)),
                    filled: true,
                    fillColor: const Color(
                      0x66000000,
                    ), // Semi-transparent background
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(
                          0xFF1ABC9C,
                        ), // Highlight color when focused
                        width: 2.0,
                      ),
                    ),
                  ),
                  style: const TextStyle(color: Color(0xFFFFFFFF)),
                ),
                const SizedBox(height: 16),

                // Password input field with toggle visibility
                TextField(
                  obscureText: _obscurePassword, // Controls text visibility
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: Color(0xFFFFFFFF)),
                    filled: true,
                    fillColor: const Color.fromRGBO(0, 0, 0, 0.4),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF1ABC9C),
                        width: 2.0,
                      ),
                    ),
                    // Eye icon to toggle password visibility
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: const Color(0xFFFFFFFF),
                      ),
                      onPressed: () {
                        // Toggle password visibility
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  style: const TextStyle(color: Color(0xFFFFFFFF)),
                ),
                const SizedBox(height: 24),

                // Sign In button → navigates to HomePage
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const home.HomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1ABC9C),
                    minimumSize: const Size(
                      double.infinity,
                      48,
                    ), // Full-width button
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Color(0xFFFFFFFF)),
                  ),
                ),
                const SizedBox(height: 16),

                // Link to Sign Up page
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const signup.SignUpPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Don't have an account? Sign up here",
                    style: TextStyle(color: Color(0xFFFFFFFF)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}