import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          toolbarHeight: 100.0,
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
                    icon: Icon(Icons.arrow_back_ios, color: Color(0xff586BCA)),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacementNamed(
                        context, "/bottom_screen"),
                    child: Container(
                        height: 20,
                        width: 100,
                        child: Text(
                          "Back",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color(0xff586BCA),
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
              IconButton(
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, "/home_screen");
                },
                icon: Icon(Icons.edit, color: Color(0xff586BCA)),
              ),
            ],
          )),
      body: ListView(
        children: [
          SizedBox(
            height: 25,
          ),
          CircleAvatar(
            radius: 50,
            child: Image(
              image: AssetImage("images/Profile Picture.png"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Tanya Robinson",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1B2A3B))),

          SizedBox(
            height: 79,
          ),
          ListTile(
            onTap: () {},
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff586BCA),
            ),
            leading: const Icon(
              Icons.notifications_active,
              color: Color(0xff586BCA),
            ),
            title: Text(
              "Notifications",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff586BCA),
            ),
            leading: Container(
                height: 18,
                width: 18,
                child: Image.asset("images/IconsApp/order.png")),
            title: Text(
              "My Order",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff586BCA),
            ),
            leading: Container(
                height: 20,
                width: 20,
                child: Image.asset(
                  "images/IconsApp/address.png",
                )),
            title: Text(
              "Address",
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
              color: Color(0xff586BCA),
            ),
            leading: const Icon(
              Icons.payment,
              color: Color(0xff586BCA),
            ),
            title: Text(
              "Payment",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff586BCA),
            ),
            leading: Icon(
              Icons.favorite,
              color: Color(0xff586BCA),
            ),
            title: Text(
              "Favorite",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff586BCA),
            ),
            leading: Icon(
              Icons.settings,
              color: Color(0xff586BCA),
            ),
            title: Text(
              "Settings",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
