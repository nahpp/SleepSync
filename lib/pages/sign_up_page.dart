import 'package:flutter/material.dart';
import 'sign_in_page.dart' as signin;
import 'home_page.dart' as home;

/// SignUpPage is the registration screen where users create a new account.
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  // Controls whether the password field is obscured (hidden) or visible
  bool _obscurePassword = true;

  // Controls whether the confirm password field is obscured or visible
  bool _obscureConfirmPassword = true;

  /// Returns a white border style used when the text field is idle
  OutlineInputBorder _whiteIdleBorder() => const OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFFFFFFF)),
  );

  /// Returns a green border style used when the text field is focused
  OutlineInputBorder _activeBorder() => const OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF1ABC9C)),
  );

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
                  'Create Account',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                const SizedBox(height: 32),

                // Full Name input field
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    labelStyle: const TextStyle(color: Color(0xFFFFFFFF)),
                    filled: true,
                    fillColor: const Color(
                      0x66000000,
                    ), // Semi-transparent background
                    enabledBorder: _whiteIdleBorder(),
                    focusedBorder: _activeBorder(),
                  ),
                  style: const TextStyle(color: Color(0xFFFFFFFF)),
                ),
                const SizedBox(height: 16),

                // Email input field
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: const TextStyle(color: Color(0xFFFFFFFF)),
                    filled: true,
                    fillColor: const Color.fromRGBO(0, 0, 0, 0.4),
                    enabledBorder: _whiteIdleBorder(),
                    focusedBorder: _activeBorder(),
                  ),
                  style: const TextStyle(color: Color(0xFFFFFFFF)),
                  keyboardType: TextInputType
                      .emailAddress, // Optimized keyboard for email
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
                    enabledBorder: _whiteIdleBorder(),
                    focusedBorder: _activeBorder(),
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
                const SizedBox(height: 16),

                // Confirm Password input field with toggle visibility
                TextField(
                  obscureText: _obscureConfirmPassword,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: const TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: const Color.fromRGBO(0, 0, 0, 0.4),
                    enabledBorder: _whiteIdleBorder(),
                    focusedBorder: _activeBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureConfirmPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: const Color(0xFFFFFFFF),
                      ),
                      onPressed: () {
                        // Toggle confirm password visibility
                        setState(() {
                          _obscureConfirmPassword = !_obscureConfirmPassword;
                        });
                      },
                    ),
                  ),
                  style: const TextStyle(color: Color(0xFFFFFFFF)),
                ),
                const SizedBox(height: 24),

                // Sign Up button → navigates to HomePage
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
                    'Sign Up',
                    style: TextStyle(color: Color(0xFFFFFFFF)),
                  ),
                ),
                const SizedBox(height: 16),

                // Link to Sign In page
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const signin.SignInPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Already have an account? Sign in here",
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