import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget divisorListMain() => const Divider(
      height: 2,
      color: Colors.black54,
    );

Widget buildSvgIcon(String pathImage) =>
    SvgPicture.asset(pathImage, width: 48, height: 48);
