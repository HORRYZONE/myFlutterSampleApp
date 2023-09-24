import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampleflutterapp/constant/color.dart';
import 'package:sampleflutterapp/constant/image_strings.dart';
import 'package:sampleflutterapp/constant/sizes.dart';
import 'package:sampleflutterapp/constant/text_strings.dart';

class FormFooterWidget extends StatelessWidget {
  const FormFooterWidget({
    
    required this.account,
    required this.otherPage,
    super.key,
  });

    final String account, otherPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: SvgPicture.asset(
              tGoogleImage,
              width: 20.0,
            ),
            onPressed: () {},
            label: Text(
              tSignInWithGoogle.toUpperCase(),
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: lightTextPrimary,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: SvgPicture.asset(
              tGithubImage,
              width: 20.0,
            ),
            onPressed: () {},
            label: Text(
              tSignInWithGithub.toUpperCase(),
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: lightTextPrimary,
              ),
            ),
          ),
        ),
        
        const SizedBox(
          height: tFormHeight - 20.0,
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
                text: account,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: lightTextPrimary,
                ),
                children: [
                  TextSpan(
                    text: otherPage,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
