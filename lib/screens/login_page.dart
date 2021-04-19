import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_customloginpage/palette.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
        BackgroundImage(),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Column (
                  children: [
                    Container(
                      height: 150,
                      child: Center(
                        child: Text('Foodybite',
                        style: kHeading,
                        ),
                      ),
                    ),
                    SizedBox(height: 50,
                      //SizedBox(height: 100,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric
                        (horizontal: 40),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              //EMAIL EDIT TEXT VIEW
                              TextInputLogin(
                                icon: FontAwesomeIcons.solidEnvelope,
                                hint: 'Email',
                                inputType: TextInputType.emailAddress,
                                inputAction: TextInputAction.next,
                              ),

                              //PASSWORD EDIT TEXT VIEW
                              PasswordInput(
                                icon: FontAwesomeIcons.lock,
                                hint: 'Password',
                                inputAction: TextInputAction.done,
                              ),
                              Text('Forgot Password'
                                ,style: kBodyText,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 50,
                                //height: 100,
                              ),
                              RoundedButton(
                                buttonText: 'Login',
                              ),
                              SizedBox(
                                height: 40,
                                //height: 80,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                   bottom: BorderSide(color: Colors.
                                   white, width: 1)
                                  )),
                                child: Text(
                                'CreateNewAccount',
                                style: kBodyText,
                              ),
                              ),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
    );
  }
}




