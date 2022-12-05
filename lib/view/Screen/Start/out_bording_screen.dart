import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/view/Widget/OnBordingPageViwe/page_indecator.dart';
import 'package:store/view/Widget/OnBordingPageViwe/page_view_content.dart';

class Out_Bording extends StatefulWidget {
  const Out_Bording({Key? key}) : super(key: key);

  @override
  State<Out_Bording> createState() => _Out_BordingState();
}

class _Out_BordingState extends State<Out_Bording> {
  int _courantIndexTabPageviwe = 0;
  late PageController _counrolerPageView;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counrolerPageView = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _counrolerPageView.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 8, top: 10),
              child: Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Visibility(
                  visible: _courantIndexTabPageviwe != 2,
                  replacement: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/choose_entry_screen");
                    },
                    child: Text("START",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _counrolerPageView.animateToPage(2,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeOutExpo);
                    },
                    child: Text("SKIP",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),
                ),
              ),
            ),

            Expanded(
              child: PageView(
                controller: _counrolerPageView,
                onPageChanged: (int courantindexTabPageviwe) {
                  setState(() {
                    _courantIndexTabPageviwe = courantindexTabPageviwe;
                  });
                },
                children: const [
                  PageView_Content(
                    img: "Black Friday-pana (1)",
                    titel: "The Best way to explore \n an off-beat location",
                  ),
                  PageView_Content(
                    img: "Closed sign-bro (1)",
                    titel: "Realtime Tracking",
                    subTitel: "Track your delivery in realtime.",
                  ),
                  PageView_Content(
                    img: "Discount-rafiki",
                    titel: "Pickup Delivery",
                    subTitel: "Receive doorstep delivery and best discounts",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 120.2,
            ),
            Container(
              padding: EdgeInsetsDirectional.only( start: 29,end: 23.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Page_Indecator(
                        iscurrentPadge: _courantIndexTabPageviwe == 0,
                      ),
                      Page_Indecator(
                        iscurrentPadge: _courantIndexTabPageviwe == 1,
                        margin_symatric_horizantal: 13.4,
                      ),
                      Page_Indecator(
                          iscurrentPadge: _courantIndexTabPageviwe == 2),
                    ],
                  ),
                  const SizedBox(
                    width: 192.5,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:_courantIndexTabPageviwe != 2 ? Color(0xffAEB9F0):  Color(0xff586BCA)  ,
                        minimumSize: const Size(44, 50),
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () {
                        if (_courantIndexTabPageviwe != 2) {
                          _counrolerPageView.nextPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeOutBack);
                        }else{

                          Navigator.pushReplacementNamed(context, "/choose_entry_screen");
                        }


                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 25,
                        color: Colors.black,
                      )),
                ],
              ),
            ),
//*********************************************************************


            const SizedBox(
              height: 111.4,
            ),
          ],
        ),
      ),
    );
  }
}

