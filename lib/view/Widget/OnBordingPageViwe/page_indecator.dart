import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/controller.dart';

class Page_Indecator extends StatelessWidget {
   Page_Indecator({
    Key? key,
    required bool iscurrentPadge,
    double margin_symatric_horizantal = 0,
  })  : _iscurrentPadge = iscurrentPadge,
        _margin_symatric_horizantal = margin_symatric_horizantal,
        super(key: key);

  final bool _iscurrentPadge;
  final double _margin_symatric_horizantal;
   MyController controller = Get.put(MyController());

   @override
  Widget build(BuildContext context) {
    return Container(
      width: 17.8,
      height: 4,
      margin: EdgeInsets.symmetric(horizontal: _margin_symatric_horizantal),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: _iscurrentPadge
              ? controller.isLight()
                  ? const Color(0xff586BCA)
                  : const Color(0xff019592)
              : Color(0xff464646),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
