import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/controller/api_response.dart';
import 'package:store/controller/controller.dart';
import 'package:store/shared_preferences.dart';

import '../../../generated/l10n.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leadingWidth: double.minPositive,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pushReplacementNamed(
                        context, "/bottom_screen"),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacementNamed(
                        context, "/bottom_screen"),
                    child: Text(
                      S.of(context).back,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Theme.of(context).iconTheme.color,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              IconButton(
                onPressed: () async {
                  await logout(context);
                },
                icon: const Icon(
                  Icons.login_rounded,
                ),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 130,
              height: 130,
              child: const ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                child: Image(
                  image: AssetImage("images/offers.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text('khalid Tanboura',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 79,
            ),
            ListTile(
              onTap: () {},
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
              leading: const Icon(
                Icons.notifications_active,
              ),
              title: Text(
                S.of(context).notifications,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
              leading: Container(
                height: 18,
                width: 18,
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(
                S.of(context).my_order,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
              leading: const Icon(Icons.location_on),
              title: Text(
                S.of(context).address,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
              leading: const Icon(
                Icons.payment,
              ),
              title: Text(
                S.of(context).payment,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
              leading: const Icon(
                Icons.favorite,
              ),
              title: Text(
                S.of(context).favorite,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
              leading: const Icon(
                Icons.settings,
              ),
              title: Text(
                S.of(context).settings,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    UserApiResponse apiResponse = await MyController().logout();
    print('%%%%%%%%%%5${apiResponse.message}');
    if (apiResponse.success) {
      MySharedPreferences().clear();
      Navigator.pushReplacementNamed(context, '/choose_entry_screen');
    }
  }
}
