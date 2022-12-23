import 'package:flutter/material.dart';

import '../../utils/assets.dart';

class CustmeImage extends StatefulWidget {
  var height;
  var width;
  CustmeImage({
    super.key,
    this.height = 100,
    this.width = 150,
  });

  @override
  State<CustmeImage> createState() => _CustmeImageState();
}

class _CustmeImageState extends State<CustmeImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        height: widget.height,
        width: widget.width,
        child: Image.asset(
          logoImage,
        ));
  }
}
