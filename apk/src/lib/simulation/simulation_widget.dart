import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'simulation_model.dart';
export 'simulation_model.dart';

class SimulationWidget extends StatefulWidget {
  const SimulationWidget({super.key});

  @override
  State<SimulationWidget> createState() => _SimulationWidgetState();
}

class _SimulationWidgetState extends State<SimulationWidget> {
  late SimulationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SimulationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 0.2,
              child: Stack(
                alignment: AlignmentDirectional(0.0, -1.0),
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, -1.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.919,
                      height: 173.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F1F1),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/pngegg.png',
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.109,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.1,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Spaceapp_gris.png',
                                      width: MediaQuery.sizeOf(context).width *
                                          0.1,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.1,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.812,
                            height: MediaQuery.sizeOf(context).height * 0.2,
                            decoration: BoxDecoration(
                              color: Color(0xFFF1F1F1),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4.0),
                                      child: Image.asset(
                                        'assets/images/Logo_thestormers_gris.png',
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.17,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.1,
                                        fit: BoxFit.contain,
                                        alignment: Alignment(0.0, 0.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'Helios Fury',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 40.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.201,
                            height: MediaQuery.sizeOf(context).height * 0.2,
                            decoration: BoxDecoration(
                              color: Color(0xFFF1F1F1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF323A45),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                'home',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            text: 'Home',
                            icon: Icon(
                              Icons.home_outlined,
                              size: 25.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF323A45),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                'glossary',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            text: 'Glossary',
                            icon: Icon(
                              Icons.question_mark,
                              size: 25.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF323A45),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                'history',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            text: 'History',
                            icon: Icon(
                              Icons.history_sharp,
                              size: 25.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF323A45),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                'simulation',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            text: 'Simulation',
                            icon: Icon(
                              Icons.play_arrow,
                              size: 25.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF323A45),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              await launchURL(
                                  'https://microstudio.io/jsebasti/heliosfury/STORM/');
                            },
                            text: 'Game',
                            icon: FaIcon(
                              FontAwesomeIcons.gamepad,
                              size: 25.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF323A45),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 439.0,
              height: 130.0,
              constraints: BoxConstraints(
                minWidth: MediaQuery.sizeOf(context).width * 1.0,
                minHeight: MediaQuery.sizeOf(context).height * 0.05,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        'NOAA Space weather scale',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  Text(
                    '${formatNumber(
                      _model.sliderValue,
                      formatType: FormatType.custom,
                      format: 'G 0',
                      locale: '',
                    )}',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Container(
                    width: 380.0,
                    child: Slider(
                      activeColor: Color(0xFF99231B),
                      inactiveColor: Color(0xFFAEB0B5),
                      min: 1.0,
                      max: 5.0,
                      value: _model.sliderValue ??= 1.0,
                      divisions: 4,
                      onChanged: (newValue) async {
                        newValue = double.parse(newValue.toStringAsFixed(2));
                        safeSetState(() => _model.sliderValue = newValue);
                        safeSetState(() {
                          _model.sliderValue = _model.sliderValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.2,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            decoration: BoxDecoration(
                              color: () {
                                if (_model.sliderValue == 1.0) {
                                  return Color(0xFFF1F1F1);
                                } else if (_model.sliderValue == 2.0) {
                                  return Color(0xFF73FEB6);
                                } else if (_model.sliderValue == 3.0) {
                                  return Color(0xFFFFE99F);
                                } else if (_model.sliderValue == 4.0) {
                                  return Color(0xFFFF9E53);
                                } else if (_model.sliderValue == 5.0) {
                                  return Color(0xFFF97577);
                                } else {
                                  return Color(0xFFF1F1F1);
                                }
                              }(),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/classrum.png',
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 103.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Text(
                                      'At the school',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            decoration: BoxDecoration(
                              color: () {
                                if (_model.sliderValue == 1.0) {
                                  return Color(0xFFF1F1F1);
                                } else if (_model.sliderValue == 2.0) {
                                  return Color(0xFF73FEB6);
                                } else if (_model.sliderValue == 3.0) {
                                  return Color(0xFFFFE99F);
                                } else if (_model.sliderValue == 4.0) {
                                  return Color(0xFFFF9E53);
                                } else if (_model.sliderValue == 5.0) {
                                  return Color(0xFFF97577);
                                } else {
                                  return Color(0xFFF1F1F1);
                                }
                              }(),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().sliderbool =
                                    !(FFAppState().sliderbool ?? true);
                                safeSetState(() {});
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/hom.png',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.9,
                                          height: 103.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 1.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'At home',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            decoration: BoxDecoration(
                              color: () {
                                if (_model.sliderValue == 1.0) {
                                  return Color(0xFFF1F1F1);
                                } else if (_model.sliderValue == 2.0) {
                                  return Color(0xFF73FEB6);
                                } else if (_model.sliderValue == 3.0) {
                                  return Color(0xFFFFE99F);
                                } else if (_model.sliderValue == 4.0) {
                                  return Color(0xFFFF9E53);
                                } else if (_model.sliderValue == 5.0) {
                                  return Color(0xFFF97577);
                                } else {
                                  return Color(0xFFF1F1F1);
                                }
                              }(),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/job.png',
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 103.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Text(
                                      'In the job',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.2,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            decoration: BoxDecoration(
                              color: () {
                                if (_model.sliderValue == 1.0) {
                                  return Color(0xFFF1F1F1);
                                } else if (_model.sliderValue == 2.0) {
                                  return Color(0xFF73FEB6);
                                } else if (_model.sliderValue == 3.0) {
                                  return Color(0xFFFFE99F);
                                } else if (_model.sliderValue == 4.0) {
                                  return Color(0xFFFF9E53);
                                } else if (_model.sliderValue == 5.0) {
                                  return Color(0xFFF97577);
                                } else {
                                  return Color(0xFFF1F1F1);
                                }
                              }(),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/city.png',
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 103.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Text(
                                      'In the city',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            decoration: BoxDecoration(
                              color: () {
                                if (_model.sliderValue == 1.0) {
                                  return Color(0xFFF1F1F1);
                                } else if (_model.sliderValue == 2.0) {
                                  return Color(0xFF73FEB6);
                                } else if (_model.sliderValue == 3.0) {
                                  return Color(0xFFFFE99F);
                                } else if (_model.sliderValue == 4.0) {
                                  return Color(0xFFFF9E53);
                                } else if (_model.sliderValue == 5.0) {
                                  return Color(0xFFF97577);
                                } else {
                                  return Color(0xFFF1F1F1);
                                }
                              }(),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/pais.png',
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 103.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Text(
                                      'In the country',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            decoration: BoxDecoration(
                              color: () {
                                if (_model.sliderValue == 1.0) {
                                  return Color(0xFFF1F1F1);
                                } else if (_model.sliderValue == 2.0) {
                                  return Color(0xFF73FEB6);
                                } else if (_model.sliderValue == 3.0) {
                                  return Color(0xFFFFE99F);
                                } else if (_model.sliderValue == 4.0) {
                                  return Color(0xFFFF9E53);
                                } else if (_model.sliderValue == 5.0) {
                                  return Color(0xFFF97577);
                                } else {
                                  return Color(0xFFF1F1F1);
                                }
                              }(),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/world.png',
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 103.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Text(
                                      'In the world',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if ((_model.sliderValue == 4.0) && FFAppState().sliderbool)
              Container(
                width: 423.0,
                height: 138.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'AT HOME',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w900,
                            ),
                      ),
                      Text(
                        'Frequent outages at several areas of the country.\nInternet and telecommunications are unstable or out of service.\nSatellite-dependent services (GPS, TV, internet) could be offline.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
