import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
          margin: const EdgeInsets.only(top: 30),
          child: Text('Join us and started \nwatching your favorit drama',
              style:
                  blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold)));
    }

    Widget inputSection() {
      // this is inputBox Component
      Widget inputBox({labelName, placeholder, obscureText = false}) {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(labelName),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                cursorColor: kBlackColor,
                obscureText: obscureText,
                decoration: InputDecoration(
                    hintText: placeholder,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      borderSide: BorderSide(color: kPrimaryColor),
                    )),
              ),
            ],
          ),
        );
      }

      Widget buttonSubmit() {
        return Container(
            width: double.infinity,
            height: 55,
            margin: const EdgeInsets.only(bottom: 20),
            child: TextButton(
                onPressed: () => {Navigator.pushNamed(context, '/bonus')},
                style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(defaultRadius))),
                child: Text('Sign Up',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ))));
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            inputBox(
                labelName: 'Fullname', placeholder: 'Input your fullname here'),
            inputBox(labelName: 'Email', placeholder: 'Input your email here'),
            inputBox(
                labelName: 'Password',
                placeholder: 'Input your password here',
                obscureText: true),
            buttonSubmit(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 50, bottom: 73),
        child: Text(
          'Terms and Conditions',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              title(),
              inputSection(),
              tacButton(),
            ],
          ),
        ));
  }
}
