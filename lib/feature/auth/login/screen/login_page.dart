import 'package:aadhar_chamical/core/theme/color_pallets.dart';
import 'package:aadhar_chamical/core/widgets/textFields.dart';
import 'package:aadhar_chamical/feature/auth/login/provider/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final LoginProvider loginProvider = LoginProvider();
  final TextEditingController mobileController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallets.secondaryColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LOGIN PAGE',
                style: GoogleFonts.poppins(
                    color: ColorPallets.textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                controller: mobileController,
                hintText: 'Mobile Number',
                text: 'Mobile',
                iconData: Icons.phone,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                controller: passwordController,
                hintText: 'Password',
                text: 'Password',
                iconData: Icons.password,
              ),
              const SizedBox(height: 30),
              Consumer<LoginProvider>(
                builder: (_, provider, __) {
                  return SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => provider.UserLogin(
                            mobileController.text, passwordController.text,context),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorPallets.primaryColor),
                        child: const Text(
                          'LogIn',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white),
                        )),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
