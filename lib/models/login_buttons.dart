import 'package:flutter/material.dart';

class SocialAuthButton extends StatelessWidget {
  final icon_name;

  const SocialAuthButton({super.key, required this.icon_name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              //border: Border.all(width: 5),
              borderRadius: BorderRadius.circular(20)),
          height: 60,
          //color: Colors.blue,
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              _getCorrectIcon(icon_name),
              const SizedBox(
                width: 40,
              ),
              Text(
                '$icon_name 아이디로 로그인',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          )),
    );
  }
}

_getCorrectIcon(iconName) {
  switch (iconName) {
    case '애플':
      return Image.asset(
        'assets/apple_logo.png',
        height: 35,
        width: 35,
      );
    case '구글':
      return Image.asset(
        'assets/google_logo.png',
        height: 35,
        width: 35,
      );
    case '카카오':
      return Image.asset(
        'assets/kakaotalk_logo.png',
        height: 35,
        width: 35,
      );
  }
}
