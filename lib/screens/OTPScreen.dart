import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:taxc/screens/Dashboard.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0d1724),
      body: Stack(
        children: <Widget>[
          const Align(
            alignment: Alignment(0.0, -0.364),
            child: SizedBox(
              width: 115.0,
              height: 17.0,
              child: Text(
                'Send another code',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  color: Color(0xff4048bf),
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                softWrap: false,
              ),
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
                  alignment: const Alignment(0.0, 0.029),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Dashboard()),
                      );
                    },
                    child: SizedBox(
                      width: 33.0,
                      height: 21.0,
                      child: Stack(
                        children: const <Widget>[
                          SizedBox.expand(
                              child: Text(
                            'Next',
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
          Pinned.fromPins(
            Pin(start: 56.0, end: 55.0),
            Pin(size: 73.0, middle: 0.2179),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(size: 51.0, start: 0.0),
                      Pin(start: 0.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0x4d58517b),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 51.0, middle: 0.6667),
                      Pin(start: 0.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0x4d58517b),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 51.0, middle: 0.3333),
                      Pin(start: 0.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0x4d58517b),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 51.0, end: 0.0),
                      Pin(start: 0.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0x4d58517b),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, start: 18.0),
                  Pin(size: 33.0, middle: 0.5),
                  child: const Text(
                    '6',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      color: Color(0xffffffff),
                      letterSpacing: 0.48,
                      height: 1.4166666666666667,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ),
                const Align(
                  alignment: Alignment(-0.275, 0.0),
                  child: SizedBox(
                    width: 13.0,
                    height: 33.0,
                    child: Text(
                      '7',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        color: Color(0xffffffff),
                        letterSpacing: 0.48,
                        height: 1.4166666666666667,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      softWrap: false,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(0.288, 0.0),
                  child: SizedBox(
                    width: 14.0,
                    height: 33.0,
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        color: Color(0xffffffff),
                        letterSpacing: 0.48,
                        height: 1.4166666666666667,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.0, end: 18.0),
                  Pin(size: 33.0, middle: 0.5),
                  child: const Text(
                    '4',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      color: Color(0xffffffff),
                      letterSpacing: 0.48,
                      height: 1.4166666666666667,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 194.0, start: 30.0),
            Pin(size: 53.0, start: 40.0),
            child: const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Color(0xffffffff),
                  height: 1.875,
                ),
                children: [
                  TextSpan(
                    text: 'A code has been sent to\n',
                  ),
                  TextSpan(
                    text: '+91 8606722845',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}
