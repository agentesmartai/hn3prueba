import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'llamadaurgente_model.dart';
export 'llamadaurgente_model.dart';

class LlamadaurgenteWidget extends StatefulWidget {
  const LlamadaurgenteWidget({super.key});

  @override
  State<LlamadaurgenteWidget> createState() => _LlamadaurgenteWidgetState();
}

class _LlamadaurgenteWidgetState extends State<LlamadaurgenteWidget>
    with TickerProviderStateMixin {
  late LlamadaurgenteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LlamadaurgenteModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'LLAMADAURGENTE'});
    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            hz: 10,
            offset: const Offset(0.0, 0.0),
            rotation: 0.087,
          ),
        ],
      ),
    });

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
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-0.1, -0.93),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/logo_sistema_130-01.png',
                              width: 383.0,
                              height: 226.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.4),
                          child: Text(
                            'LLAMADA URGENTE',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'PLUTO SANS',
                                  color: const Color(0xFF636264),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'LLAMADAURGENTE_PAGE_Icon_80neceye_ON_TAP');
                              // llamar ya
                              logFirebaseEvent('Icon_llamarya');
                              await launchURL('tel:130');
                            },
                            child: const Icon(
                              Icons.circle,
                              color: Color(0xFF5A5C60),
                              size: 200.0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'LLAMADAURGENTE_PAGE_Icon_fjb9qjx2_ON_TAP');
                              logFirebaseEvent('Icon_launch_u_r_l');
                              await launchURL('tel:130');
                            },
                            child: const Icon(
                              Icons.call_sharp,
                              color: Color(0xFFF50707),
                              size: 110.0,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['iconOnPageLoadAnimation']!),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(-0.01, -0.3),
                          child: Icon(
                            Icons.arrow_downward_rounded,
                            color: Color(0xFF636363),
                            size: 24.0,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.03, 0.42),
                          child: Text(
                            'PRESIONA EL ICONO PARA REALIZAR LA \nLLAMADA DIRECTA',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'PLUTO SANS',
                                  color: const Color(0xFF636264),
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(-0.96, -1.02),
                child: FlutterFlowIconButton(
                  borderRadius: 100.0,
                  icon: const Icon(
                    Icons.arrow_circle_left_sharp,
                    color: Color(0xFFE31B1E),
                    size: 50.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent(
                        'LLAMADAURGENTE_arrow_circle_left_sharp_I');
                    logFirebaseEvent('IconButton_navigate_to');

                    context.pushNamed('Menuprincipal');
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
