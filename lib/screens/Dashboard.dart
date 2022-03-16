import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  border:
                      Border.all(width: 1.0, color: const Color(0xff707070)),
                ),
              ),
            ],
          ),
          Align(
            alignment: const Alignment(-0.259, -0.207),
            child: SizedBox(
              width: 35.0,
              height: 64.0,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 18.9),
                    child: SizedBox.expand(
                        child: SvgPicture.string(
                      _svg_asgvt,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    )),
                  ),
                  Pinned.fromPins(
                    Pin(start: 7.2, end: 7.2),
                    Pin(size: 20.2, start: 7.2),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 1.0, middle: 0.5128),
                    Pin(size: 18.6, end: 5.5),
                    child: SvgPicture.string(
                      _svg_yiv70z,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 14.0,
                      height: 15.0,
                      decoration: const BoxDecoration(
                        color: Color(0xff4048bf),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 19.8, start: 62.8),
            Pin(size: 31.4, start: 110.5),
            child: Transform.rotate(
              angle: -0.6632,
              child: Stack(
                children: <Widget>[
                  SizedBox.expand(
                      child: SvgPicture.string(
                    _svg_nysps,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  )),
                  Pinned.fromPins(
                    Pin(start: 4.2, end: 4.2),
                    Pin(size: 5.2, end: 4.2),
                    child: SvgPicture.string(
                      _svg_kj4rza,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 4.2, end: 4.2),
                    Pin(size: 5.2, middle: 0.3177),
                    child: SvgPicture.string(
                      _svg_jroteu,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.463, 0.165),
            child: SizedBox(
              width: 20.0,
              height: 31.0,
              child: Transform.rotate(
                angle: 1.3614,
                child: Stack(
                  children: <Widget>[
                    SizedBox.expand(
                        child: SvgPicture.string(
                      _svg_nysps,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    )),
                    Pinned.fromPins(
                      Pin(start: 4.2, end: 4.2),
                      Pin(size: 5.2, end: 4.2),
                      child: SvgPicture.string(
                        _svg_kj4rza,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 4.2, end: 4.2),
                      Pin(size: 5.2, middle: 0.3177),
                      child: SvgPicture.string(
                        _svg_jroteu,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.218, 0.421),
            child: SizedBox(
              width: 20.0,
              height: 31.0,
              child: Transform.rotate(
                angle: -0.1047,
                child: Stack(
                  children: <Widget>[
                    SizedBox.expand(
                        child: SvgPicture.string(
                      _svg_nysps,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    )),
                    Pinned.fromPins(
                      Pin(start: 4.2, end: 4.2),
                      Pin(size: 5.2, end: 4.2),
                      child: SvgPicture.string(
                        _svg_kj4rza,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 4.2, end: 4.2),
                      Pin(size: 5.2, middle: 0.3177),
                      child: SvgPicture.string(
                        _svg_jroteu,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 40.0, end: 21.0),
            Pin(size: 40.0, middle: 0.8342),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(1.0, -1.0),
                          end: Alignment(-1.0, 1.0),
                          colors: [
                            Color(0xff514bc3),
                            Color(0xff4048bf)
                          ],
                          stops: [0.0, 1.0],
                        ),
                        borderRadius: BorderRadius.circular(28.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x291466cc),
                            offset: Offset(0, 15),
                            blurRadius: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Center(
                  child: SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: Stack(
                      children: <Widget>[
                        SizedBox.expand(
                            child: SvgPicture.string(
                          _svg_eterkn,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        )),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: SizedBox.expand(
                              child: SvgPicture.string(
                            _svg_xg7zlr,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 40.0, start: 20.0),
            Pin(size: 40.0, start: 20.0),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(1.0, -1.0),
                          end: Alignment(-1.0, 1.0),
                          colors: [
                            Color(0xff514bc3),
                            Color(0xff4048bf)
                          ],
                          stops: [0.0, 1.0],
                        ),
                        borderRadius: BorderRadius.circular(28.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x291466cc),
                            offset: Offset(0, 15),
                            blurRadius: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Center(
                  child: SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: Stack(
                      children: <Widget>[
                        SizedBox.expand(
                            child: SvgPicture.string(
                          _svg_eterkn,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3.0, vertical: 4.0),
                          child: SizedBox.expand(
                              child: SvgPicture.string(
                            _svg_raj975,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0.516, 0.668),
            child: SizedBox(
              width: 40.0,
              height: 40.0,
              child: Stack(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(1.0, -1.0),
                            end: Alignment(-1.0, 1.0),
                            colors: [
                              Color(0xff514bc3),
                              Color(0xff4048bf)
                            ],
                            stops: [0.0, 1.0],
                          ),
                          borderRadius: BorderRadius.circular(28.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x291466cc),
                              offset: Offset(0, 15),
                              blurRadius: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: SizedBox(
                      width: 24.0,
                      height: 24.0,
                      child: Stack(
                        children: <Widget>[
                          SizedBox.expand(
                              child: SvgPicture.string(
                            _svg_eterkn,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          )),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: SizedBox.expand(
                                child: SvgPicture.string(
                              _svg_w4w8te,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 19.0, end: 21.0),
            Pin(size: 88.0, end: 20.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xf20d0d0d),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x27000000),
                        offset: Offset(0, 25),
                        blurRadius: 40,
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 131.0, start: 22.0),
                  Pin(size: 48.0, middle: 0.5),
                  child: Stack(
                    children: <Widget>[
                      const Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          width: 111.0,
                          height: 17.0,
                          child: Text(
                            'From : Springwood',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              color: Color(0x91ffffff),
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment(-0.273, 1.0),
                        child: SizedBox(
                          width: 76.0,
                          height: 21.0,
                          child: Text(
                            'Where to?',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: Color(0xf2ffffff),
                              fontWeight: FontWeight.w500,
                              height: 0.9333333333333333,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            softWrap: false,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 10.0, start: 0.0),
                        Pin(size: 10.0, start: 4.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xf270b200),
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                          ),
                        ),
                      ),
                    ],
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

const String _svg_asgvt =
    '<svg viewBox="208.0 386.0 34.6 44.7" ><path transform="translate(5669.28, 859.64)" d="M -5456.29150390625 -444.2183837890625 C -5459.3779296875 -447.3391418457031 -5461.2841796875 -451.6303405761719 -5461.2841796875 -456.366455078125 C -5461.2841796875 -465.9085998535156 -5453.54833984375 -473.6429138183594 -5444.00634765625 -473.6429138183594 C -5434.46533203125 -473.6429138183594 -5426.72998046875 -465.9085998535156 -5426.72998046875 -456.366455078125 C -5426.72998046875 -451.7025756835938 -5428.578125 -447.4703063964844 -5431.58154296875 -444.3621826171875 L -5444.07763671875 -428.9859619140625 L -5456.29150390625 -444.2183837890625 Z" fill="#4048bf" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yiv70z =
    '<svg viewBox="225.2 425.4 1.0 18.6" ><path transform="translate(225.21, 425.43)" d="M 0 0 L 0 18.63911628723145" fill="none" stroke="#4048bf" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nysps =
    '<svg viewBox="-984.8 -57.9 19.8 31.4" ><path transform="translate(0.0, 0.0)" d="M -967.5509033203125 -47.63259124755859 L -967.5509033203125 -51.81917572021484 C -967.5509033203125 -55.16638946533203 -970.2645263671875 -57.8800048828125 -973.6117553710938 -57.8800048828125 L -976.2254638671875 -57.8800048828125 C -979.5726928710938 -57.8800048828125 -982.2863159179688 -55.16638946533203 -982.2863159179688 -51.81917572021484 L -982.2863159179688 -47.63259124755859 C -983.693359375 -47.62042999267578 -984.8300170898438 -46.47674560546875 -984.8300170898438 -45.06681823730469 L -984.8300170898438 -44.48857879638672 L -982.2863159179688 -44.48857879638672 L -982.2863159179688 -32.50228118896484 C -982.2863159179688 -29.15506362915039 -979.5726928710938 -26.44145202636719 -976.2254638671875 -26.44145202636719 L -973.6117553710938 -26.44145202636719 C -970.2645263671875 -26.44145202636719 -967.5509033203125 -29.15506362915039 -967.5509033203125 -32.50228118896484 L -967.5509033203125 -44.48857879638672 L -965.0072021484375 -44.48857879638672 L -965.0072021484375 -45.06681823730469 C -965.0072021484375 -46.47674560546875 -966.1441650390625 -47.62042999267578 -967.5509033203125 -47.63259124755859 Z M -974.9185791015625 -30.60691070556641 C -979.0818481445312 -30.60691070556641 -980.6520385742188 -32.05939483642578 -980.6520385742188 -32.05939483642578 L -979.3720703125 -35.79061889648438 C -979.3720703125 -35.79061889648438 -978.1473999023438 -35.35541534423828 -974.9185791015625 -35.35541534423828 C -971.6898193359375 -35.35541534423828 -970.4651489257812 -35.79061889648438 -970.4651489257812 -35.79061889648438 L -969.1851196289062 -32.05939483642578 C -969.1851196289062 -32.05939483642578 -970.7554321289062 -30.60691070556641 -974.9185791015625 -30.60691070556641 Z M -970.4651489257812 -44.35577392578125 C -970.4651489257812 -44.35577392578125 -971.6898193359375 -44.79097747802734 -974.9185791015625 -44.79097747802734 C -978.1473999023438 -44.79097747802734 -979.3720703125 -44.35577392578125 -979.3720703125 -44.35577392578125 L -980.6520385742188 -48.08699417114258 C -980.6520385742188 -48.08699417114258 -979.0818481445312 -49.53980255126953 -974.9185791015625 -49.53980255126953 C -970.7554321289062 -49.53980255126953 -969.1851196289062 -48.08699417114258 -969.1851196289062 -48.08699417114258 L -970.4651489257812 -44.35577392578125 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_kj4rza =
    '<svg viewBox="-980.7 -35.8 11.5 5.2" ><path transform="translate(-126.38, -668.2)" d="M -842.8031005859375 636.1412353515625 C -842.8031005859375 636.1412353515625 -844.3734130859375 637.5936889648438 -848.5365600585938 637.5936889648438 C -852.6998291015625 637.5936889648438 -854.27001953125 636.1412353515625 -854.27001953125 636.1412353515625 L -852.9900512695312 632.4099731445312 C -852.9900512695312 632.4099731445312 -851.765380859375 632.84521484375 -848.5365600585938 632.84521484375 C -845.3078002929688 632.84521484375 -844.0831298828125 632.4099731445312 -844.0831298828125 632.4099731445312 L -842.8031005859375 636.1412353515625 Z" fill="#0d1724" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_jroteu =
    '<svg viewBox="-980.7 -49.5 11.5 5.2" ><path transform="translate(-126.38, -252.29)" d="M -842.8031005859375 204.2028045654297 L -844.0831298828125 207.9340209960938 C -844.0831298828125 207.9340209960938 -845.3078002929688 207.4988098144531 -848.5365600585938 207.4988098144531 C -851.765380859375 207.4988098144531 -852.9900512695312 207.9340209960938 -852.9900512695312 207.9340209960938 L -854.27001953125 204.2028045654297 C -854.27001953125 204.2028045654297 -852.6998291015625 202.75 -848.5365600585938 202.75 C -844.3734130859375 202.75 -842.8031005859375 204.2028045654297 -842.8031005859375 204.2028045654297 Z" fill="#0d1724" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_eterkn =
    '<svg viewBox="0.0 0.0 24.0 24.0" ><path  d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xg7zlr =
    '<svg viewBox="1.0 1.0 22.0 22.0" ><path  d="M 13 1 L 13.00100040435791 4.062000274658203 C 16.62584114074707 4.520281314849854 19.4802417755127 7.375093460083008 19.9379997253418 11.00000095367432 L 23 11 L 23 13 L 19.9379997253418 13.00100040435791 C 19.47982025146484 16.62551879882812 16.62551689147949 19.47982025146484 13.00099945068359 19.9379997253418 L 13 23 L 11 23 L 11 19.9379997253418 C 7.375092506408691 19.4802417755127 4.520279884338379 16.62584114074707 4.061999320983887 13.00100040435791 L 1 13 L 1 11 L 4.062000274658203 11 C 4.519858360290527 7.374767780303955 7.374770641326904 4.519856452941895 11.00000095367432 4.062000274658203 L 11 1 L 13 1 Z M 12 6 C 8.686290740966797 6 6 8.686291694641113 6 12 C 6 15.3137092590332 8.686291694641113 18 12 18 C 15.3137092590332 18 18 15.31370830535889 18 12 C 18 8.686290740966797 15.31370830535889 6 12 6 Z M 12 10 C 13.10456943511963 10 14 10.89543056488037 14 12 C 14 13.10456943511963 13.10456943511963 14 12 14 C 10.89543056488037 14 10 13.10456943511963 10 12 C 10 10.89543056488037 10.89543056488037 10 12 10 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_raj975 =
    '<svg viewBox="3.0 4.0 18.0 16.0" ><path  d="M 18 18 L 18 20 L 6 20 L 6 18 L 18 18 Z M 21 11 L 21 13 L 3 13 L 3 11 L 21 11 Z M 18 4 L 18 6 L 6 6 L 6 4 L 18 4 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w4w8te =
    '<svg viewBox="2.0 2.0 20.0 20.0" ><path  d="M 12 2 C 17.52299880981445 2 22 6.47700023651123 22 12 C 22 17.52299880981445 17.52299880981445 22 12 22 C 6.477001190185547 22 2 17.52300071716309 2 12 L 4 12 C 4 16.41799926757812 7.581999778747559 20 12 20 C 16.41799926757812 20 20 16.41799926757812 20 12 C 20 7.582000732421875 16.41799926757812 4 12 4 C 9.25 4 6.823999881744385 5.38700008392334 5.385000228881836 7.5 L 8 7.5 L 8 9.5 L 2 9.5 L 2 3.5 L 4 3.5 L 4 6 C 5.823999881744385 3.569999933242798 8.729000091552734 2 12 2 Z M 13 7 L 13 11.58500003814697 L 16.24300003051758 14.82800006866455 L 14.82800006866455 16.24300003051758 L 11 12.41300010681152 L 11 7 L 13 7 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
