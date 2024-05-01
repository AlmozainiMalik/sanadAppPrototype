import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart'; // ignore_for_file: must_be_immutable

class AdminMainpagePage extends StatelessWidget {
  const AdminMainpagePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              _buildWelcomeAhmed(context),
              SizedBox(height: 46.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 29.h),
                  child: Text(
                    "الخدمات",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    onTapRow(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 29.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 11.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "ادارة التصنيفات",
                                style: theme.textTheme.bodyMedium,
                              ),
                              Text(
                                "اضافة/حدف او تعديل التصنيفات",
                                style: CustomTextStyles.bodySmallGray50002,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: CustomIconButton(
                            height: 46.v,
                            width: 48.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFrame,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Divider(
                indent: 21.h,
                endIndent: 20.h,
              ),
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    onTapRow1(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 29.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 12.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 3.h),
                                child: Text(
                                  "ادارة المواقع",
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                              Text(
                                "اضافة/حدف او تعديل المواقع",
                                style: CustomTextStyles.bodySmallGray50002,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: CustomIconButton(
                            height: 46.v,
                            width: 48.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgLocationUndefined,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Divider(
                indent: 19.h,
                endIndent: 23.h,
              ),
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 27.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 12.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 2.h),
                              child: Text(
                                "ادارة الاقسام",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            Text(
                              "اضافة/حدف او تعديل الاقسام",
                              style: CustomTextStyles.bodySmallGray50002,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 46.v,
                        width: 50.h,
                        margin: EdgeInsets.only(left: 10.h),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 46.v,
                                width: 48.h,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.circular(
                                    10.h,
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgFrameBlue900,
                              height: 46.adaptSize,
                              width: 46.adaptSize,
                              alignment: Alignment.centerRight,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Divider(
                indent: 21.h,
                endIndent: 21.h,
              ),
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 29.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 11.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "الموظفين",
                              style: theme.textTheme.bodyMedium,
                            ),
                            Text(
                              "اضافة/حدف الموظفين في النظام",
                              style: CustomTextStyles.bodySmallGray50002,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 46.v,
                        width: 48.h,
                        margin: EdgeInsets.only(left: 9.h),
                        decoration:
                            AppDecoration.fillOnPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup,
                          height: 46.adaptSize,
                          width: 46.adaptSize,
                          alignment: Alignment.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Divider(
                indent: 21.h,
                endIndent: 21.h,
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeAhmed(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 23.v,
        ),
        decoration: AppDecoration.outlineBlack,
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse2,
              height: 69.adaptSize,
              width: 69.adaptSize,
              radius: BorderRadius.circular(
                34.h,
              ),
              margin: EdgeInsets.only(top: 1.v),
            ),
            Container(
              width: 72.h,
              margin: EdgeInsets.only(
                left: 12.h,
                top: 14.v,
                bottom: 13.v,
              ),
              child: Text(
                "Welcome,\nAhmed",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the categorypageScreen when the action is triggered.
  onTapRow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.categorypageScreen);
  }

  /// Navigates to the locationpageScreen when the action is triggered.
  onTapRow1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.locationpageScreen);
  }
}
