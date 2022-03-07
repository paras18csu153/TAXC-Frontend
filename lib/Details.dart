import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxc/OTPScreen.dart';

class Details extends StatelessWidget {
  const Details({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0d1724),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 191.0, start: 31.0),
            Pin(size: 21.0, start: 43.0),
            child: const Text(
              'Enter your phone number',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                color: Color(0xffffffff),
                height: 2,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 30.0, start: 45.0),
            Pin(size: 25.0, middle: 0.2516),
            child: const Text(
              '+91',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: Color(0xffffffff),
                letterSpacing: 0.36,
                height: 1.8888888888888888,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          const Align(
            alignment: Alignment(-0.191, -0.497),
            child: SizedBox(
              width: 113.0,
              height: 25.0,
              child: Text(
                '8606722845',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: Color(0xffffffff),
                  letterSpacing: 0.36,
                  height: 1.8888888888888888,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 240.0, end: 29.5),
            Pin(size: 1.0, middle: 0.2873),
            child: SvgPicture.string(
              _svg_d3hyw,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 55.0, start: 30.5),
            Pin(size: 1.0, middle: 0.2873),
            child: SvgPicture.string(
              _svg_ybp4b2,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 190.0, start: 31.0),
            Pin(size: 35.0, middle: 0.3256),
            child: const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  color: Color(0xffffffff),
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                    text: 'By countinuing, I confirm I have \nread the',
                  ),
                  TextSpan(
                    text: '  ',
                    style: TextStyle(
                      color: Color(0xff4136f1),
                    ),
                  ),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                      color: Color(0xff4048bf),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 30.0, end: 30.0),
            Pin(size: 56.0, middle: 0.98),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(1.0, 0.0),
                      end: Alignment(-1.0, 0.0),
                      colors: [Color(0xff514bc3), Color(0xff4048bf)],
                      stops: [0.0, 1.0],
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x291466cc),
                        offset: Offset(0, 15),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const Alignment(0.017, 0.029),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OTPScreen()),
                      );
                    },
                    child: SizedBox(
                      width: 142.0,
                      height: 21.0,
                      child: Stack(
                        children: const <Widget>[
                          SizedBox.expand(
                              child: Text(
                            'Accept & Continue',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                              height: 0.9333333333333333,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            softWrap: false,
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_d3hyw =
    '<svg viewBox="105.5 233.0 240.0 1.0" ><path transform="translate(105.5, 233.0)" d="M 0 0 L 240 0" fill="none" fill-opacity="0.3" stroke="#4048bf" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ybp4b2 =
    '<svg viewBox="30.5 233.0 55.0 1.0" ><path transform="translate(30.5, 233.0)" d="M 0 0 L 55 0" fill="none" fill-opacity="0.3" stroke="#4048bf" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
