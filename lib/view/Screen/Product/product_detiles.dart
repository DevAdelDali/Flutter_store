import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/view/Widget/app_bar_custom.dart';
import 'package:store/view/Widget/botton_custom.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
 bool _colorfav= true;
  // Color _colorfav_Activ = Colors.redAccent;
  // Color _colorfav_NoActiv = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 60.0,
          excludeHeaderSemantics: true,
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
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  isSelected: false,
                  alignment: Alignment.center,
                  style: IconButton.styleFrom(backgroundColor: Colors.grey),
                  onPressed: () {
                    setState(() {

                      // if (_colorfav == _colorfav_Activ) {
                      //   _colorfav = _colorfav_NoActiv;
                      //   return;
                      // } else {
                      //   _colorfav = _colorfav_Activ;
                      // }

                      _colorfav =!_colorfav;

                    });
                  },
                  icon: Icon(Icons.favorite, size: 30, color: _colorfav ? Colors.grey.shade400:Colors.redAccent),
                ),
              ),
            ],
          )),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(44, 65, 44, 25),
            child: Center(
                child: Image.asset(
              "images/Product Image.png",
              height: 200,
              width: 287,
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Montpellier White \n Chronograph Watch",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                "189",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 0.5,
            height: 1,
            color: Colors.grey,
            endIndent: 30,
            indent: 30,
          ),
          Container(
              margin: EdgeInsetsDirectional.fromSTEB(30, 30, 31, 25),
              padding: EdgeInsets.all(10),
color: Colors.grey.shade100,
              height: 220,
              child: SingleChildScrollView(
                child: Text(
                  "Inspired by Scandinavian design and engineering, the ontpellier watch is a quality-built accessory for everyday wear. This handmade timepiece has crystal quartz movement, blue crocodile-embossed leather strap and silver water resistant stainless steel case.  Whether you slip it on solo or with a stack of  Grand Frank banglesInspired by Scandinavian design and engineering, the ontpellier watch is a quality-built accessory for everyday wear. This handmade timepiece has crystal quartz movement, blue crocodile-embossed leather strap and silver water resistant stainless steel case.  Whether you slip it on solo or with a stack of  Grand Frank bangles, the result is timeless.",
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
              )),
          
          BottonCustom(titel: "Add to Cart", colorBotton: Color(0xff586BCA), textColorBotton: Colors.white, fontSize: 15, height: 50, width: 285, onTap: () {


          },)
          
        ],
      ),
    );
  }
}
