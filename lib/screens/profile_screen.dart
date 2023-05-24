import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';
import 'package:furniture_ecommerce_app/widget/profile_item_buttons.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nb_utils/nb_utils.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.scaffoldBgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            60.height,
            const ProfileTopContainer(),
            30.height,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Account',
                style: AppStyles.bodyText.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            20.height,
            const ProfileItemButtons(
              buttonName: 'Settings',
              iconData: Icons.settings_outlined,
              arrowIconData: Icons.arrow_forward_ios,
            ),
            const ProfileItemButtons(
              buttonName: 'Notification',
              iconData: Icons.notifications_outlined,
              arrowIconData: Icons.arrow_forward_ios,
            ),
            const ProfileItemButtons(
              buttonName: 'Order History',
              iconData: Icons.watch_later_outlined,
              arrowIconData: Icons.arrow_forward_ios,
            ),
            10.height,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'General',
                style: AppStyles.bodyText.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            20.height,
            const ProfileItemButtons(
              buttonName: 'Privacy & Policy',
              iconData: Icons.lock_outline,
              arrowIconData: Icons.arrow_forward_ios,
            ),
            const ProfileItemButtons(
              buttonName: 'Terms & Conditions',
              iconData: Icons.privacy_tip_outlined,
              arrowIconData: Icons.arrow_forward_ios,
            ),
            GestureDetector(
              onTap: () {
                context.go('/authscreen');
              },
              child: const ProfileItemButtons(
                buttonName: 'Log Out',
                iconData: Icons.logout_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileTopContainer extends StatefulWidget {
  const ProfileTopContainer({
    super.key,
  });

  @override
  State<ProfileTopContainer> createState() => _ProfileTopContainerState();
}

class _ProfileTopContainerState extends State<ProfileTopContainer> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemprary = File(image.path);
      setState(() => this.image = imageTemprary);
    } on PlatformException {
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Text(
            'My Profile',
            style: AppStyles.headLine2,
          ),
          20.height,
          Stack(children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: image != null
                  ? Image.file(
                      image!,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'images/profile_image.jpg',
                      fit: BoxFit.cover,
                    ),
            ),
            Positioned(
                top: 60,
                left: 60,
                child: GestureDetector(
                  onTap: () => pickImage(ImageSource.gallery),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppStyles.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    ),
                  ),
                ))
          ]),
          20.height,
          Text(
            'John Lennon',
            style: AppStyles.itemTitle,
          ),
          10.height,
          Text(
            'johnlennon34@gmail.com',
            style: AppStyles.bodyText,
          ),
        ],
      ),
    );
  }
}
