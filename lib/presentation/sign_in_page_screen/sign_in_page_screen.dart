import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignInPageScreen extends StatelessWidget {
  SignInPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 50.h,
                top: 65.v,
                right: 50.h,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup3,
                    height: 164.adaptSize,
                    width: 164.adaptSize,
                  ),
                  SizedBox(height: 44.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.h),
                    child: CustomTextFormField(
                      controller: emailController,
                      hintText: "Email",
                      textInputType: TextInputType.emailAddress,
                      prefix: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 15.v,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgUserGray70002,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 54.v,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.h),
                    child: CustomTextFormField(
                      controller: passwordController,
                      hintText: "Password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(15.h, 17.v, 11.h, 18.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgTrophy,
                          height: 20.v,
                          width: 16.h,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 55.v,
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: CustomTextStyles.bodySmallBlue900_1,
                    ),
                  ),
                  SizedBox(height: 25.v),
                  CustomOutlinedButton(
                    text: "Sign In",
                    margin: EdgeInsets.symmetric(horizontal: 2.h),
                  ),
                  SizedBox(height: 34.v),
                  Divider(
                    color: theme.colorScheme.secondaryContainer,
                    indent: 2.h,
                    endIndent: 2.h,
                  ),
                  SizedBox(height: 44.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 77.h,
                        right: 2.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Don’t have an account? ",
                            style: CustomTextStyles.bodySmallGray800,
                          ),
                          GestureDetector(
                            onTap: () {
                              onTapTxtCreatenewone(context);
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "Create new One",
                                style: CustomTextStyles.bodySmallBlue900,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the signUpPageScreen when the action is triggered.
  onTapTxtCreatenewone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpPageScreen);
  }
}
