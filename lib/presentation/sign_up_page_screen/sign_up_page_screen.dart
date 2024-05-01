import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpPageScreen extends StatelessWidget {
  SignUpPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  TextEditingController phoneNumberFieldController = TextEditingController();

  TextEditingController firstNameFieldController = TextEditingController();

  TextEditingController lastNameFieldController = TextEditingController();

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
                left: 49.h,
                top: 61.v,
                right: 49.h,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 181.h,
                      margin: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "Create an \naccount",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.displaySmall!.copyWith(
                          height: 1.19,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildEmailField(context),
                  SizedBox(height: 31.v),
                  _buildPasswordField(context),
                  SizedBox(height: 31.v),
                  _buildPhoneNumberField(context),
                  SizedBox(height: 31.v),
                  _buildFirstNameField(context),
                  SizedBox(height: 31.v),
                  _buildLastNameField(context),
                  SizedBox(height: 48.v),
                  _buildSignUpButton(context),
                  SizedBox(height: 34.v),
                  Divider(
                    color: theme.colorScheme.secondaryContainer,
                    indent: 4.h,
                    endIndent: 4.h,
                  ),
                  SizedBox(height: 36.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Already have an account?",
                          style: CustomTextStyles.bodySmallGray800,
                        ),
                        GestureDetector(
                          onTap: () {
                            onTapTxtSignin(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "Sign in",
                              style: CustomTextStyles.bodySmallBlue900,
                            ),
                          ),
                        )
                      ],
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

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 11.h,
      ),
      child: CustomTextFormField(
        controller: emailFieldController,
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
          maxHeight: 55.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 11.h,
      ),
      child: CustomTextFormField(
        controller: passwordFieldController,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 17.v,
          ),
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
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 11.h,
      ),
      child: CustomTextFormField(
        controller: phoneNumberFieldController,
        hintText: "Phone Number",
        textInputType: TextInputType.phone,
        prefix: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 17.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgCheckmark,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 55.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstNameField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 11.h,
      ),
      child: CustomTextFormField(
        controller: firstNameFieldController,
        hintText: "First Name",
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
          maxHeight: 55.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLastNameField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 11.h,
      ),
      child: CustomTextFormField(
        controller: lastNameFieldController,
        hintText: "Last Name",
        textInputAction: TextInputAction.done,
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
          maxHeight: 55.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Sign Up",
      margin: EdgeInsets.only(
        left: 4.h,
        right: 2.h,
      ),
    );
  }

  /// Navigates to the signInPageScreen when the action is triggered.
  onTapTxtSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInPageScreen);
  }
}
