import 'package:flutter/material.dart';
import 'package:store/view/Widget/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPass = true;

  late TextEditingController _emailControler;
  late TextEditingController _passwordControler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailControler = TextEditingController();
    _passwordControler = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _emailControler.dispose();
    _passwordControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextFieldCustom(
            isShow: false,
            hintTitel: "hintTitel",
            errorText: "errorText",
            prefixIcon: Icon(Icons.person, color: Colors.green),
            textInputType: TextInputType.text,
            controller: _emailControler,
          ),
          TextFieldCustom(
              hintTitel: "hintTitel",
              errorText: "errorText",
              prefixIcon: Icon(Icons.person, color: Colors.green),
              textInputType: TextInputType.text,
              controller: _passwordControler,
              isShow: _showPass,
              safixIcon: IconButton(
                  onPressed: () {
                    print(_showPass);
                    setState(() {
                      _showPass = !_showPass;
                    });
                  },
                  icon: Icon(
                    _showPass ? Icons.remove_red_eye : Icons.visibility_off,
                    color: Colors.grey,
                  )))
        ],
      ),
    );
  }
}
