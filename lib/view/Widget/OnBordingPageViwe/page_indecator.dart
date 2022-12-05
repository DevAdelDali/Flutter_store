import 'package:flutter/material.dart';

class Page_Indecator extends StatelessWidget {
  const Page_Indecator({
    Key? key,
    required bool iscurrentPadge,
    double margin_symatric_horizantal=0,
  })  : _iscurrentPadge = iscurrentPadge,
        _margin_symatric_horizantal = margin_symatric_horizantal,
        super(key: key);

  final bool _iscurrentPadge;
  final  double _margin_symatric_horizantal;

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 17.8,
      height: 4,
      margin: EdgeInsets.symmetric(horizontal:  _margin_symatric_horizantal),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: _iscurrentPadge ? const Color(0xffAEB9F0) : Colors.black12,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
