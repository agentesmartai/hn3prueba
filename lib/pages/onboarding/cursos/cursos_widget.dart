import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'cursos_model.dart';
export 'cursos_model.dart';

class CursosWidget extends StatefulWidget {
  const CursosWidget({super.key});

  @override
  State<CursosWidget> createState() => _CursosWidgetState();
}

class _CursosWidgetState extends State<CursosWidget> {
  late CursosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CursosModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'CURSOS'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFE7E6E6),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/FONDO_NUEVO_SERICIOS_Mesa_de_trabajo_1.png',
                            width: 371.0,
                            height: 782.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.9,
                        child: Align(
                          alignment: const AlignmentDirectional(-0.87, -0.72),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 40.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: 170.0,
                                height: 237.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'CURSOS_PAGE_Stack_1uu4wl0q_ON_TAP');
                                    logFirebaseEvent('Stack_navigate_to');

                                    context.pushNamed(
                                      'MENUestadisticas',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                        ),
                                      },
                                    );
                                  },
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Lottie.asset(
                                          'assets/jsons/Statistics.json',
                                          width: 145.0,
                                          height: 205.0,
                                          fit: BoxFit.contain,
                                          animate: true,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.8),
                                        child: Text(
                                          'ESTADíSTICAS',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'PLUTO SANS',
                                                color: Colors.black,
                                                fontSize: 15.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
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
                      ),
                      Opacity(
                        opacity: 0.9,
                        child: Align(
                          alignment: const AlignmentDirectional(0.88, -0.72),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 40.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: 170.0,
                                height: 237.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'CURSOS_PAGE_Stack_7nnpkweg_ON_TAP');
                                    logFirebaseEvent('Stack_navigate_to');

                                    context.pushNamed('MENUmarcolegal');
                                  },
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Lottie.asset(
                                          'assets/jsons/Law_Books.json',
                                          width: 180.0,
                                          height: 183.0,
                                          fit: BoxFit.contain,
                                          animate: true,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.8),
                                        child: Text(
                                          'MARCO LEGAL',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'PLUTO SANS',
                                                color: Colors.black,
                                                fontSize: 15.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: false,
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
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, -0.97),
                        child: Text(
                          'DOCUMENTOS DE INTRÉS',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'PLUTO SANS',
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(-0.99, -1.02),
                child: FlutterFlowIconButton(
                  borderRadius: 100.0,
                  icon: const Icon(
                    Icons.arrow_circle_left_sharp,
                    color: Color(0xFFE31B1E),
                    size: 50.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent(
                        'CURSOS_arrow_circle_left_sharp_ICN_ON_TA');
                    logFirebaseEvent('IconButton_navigate_to');

                    context.pushNamed(
                      'Menuprincipal',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                        ),
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
