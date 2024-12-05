import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'ubicaciones_model.dart';
export 'ubicaciones_model.dart';

class UbicacionesWidget extends StatefulWidget {
  const UbicacionesWidget({super.key});

  @override
  State<UbicacionesWidget> createState() => _UbicacionesWidgetState();
}

class _UbicacionesWidgetState extends State<UbicacionesWidget> {
  late UbicacionesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UbicacionesModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Ubicaciones'});
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
        backgroundColor: const Color(0xFFE7E7E7),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(-0.06, -0.99),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/fondo_nuevo_ubucaciones_Mesa_de_trabajo_1.png',
                    width: 387.0,
                    height: 796.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Opacity(
                opacity: 0.8,
                child: Align(
                  alignment: const AlignmentDirectional(0.0, -0.65),
                  child: Container(
                    width: 341.0,
                    height: 229.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'UBICACIONES_LottieAnimation_zn8erl7o_ON_');
                              logFirebaseEvent('LottieAnimation_launch_u_r_l');
                              await launchURL(
                                  'https://www.google.com/maps/place/Secretar%C3%ADa+de+Transparencia+y+Lucha+Contra+la+Corrupci%C3%B3n+de+Honduras/@14.0715132,-87.203532,16z/data=!4m6!3m5!1s0x8f6fbd7f96e26c43:0x24834457597ec14e!8m2!3d14.0709701!4d-87.2037109!16s%2Fg%2F11ngjjydf_?entry=ttu&g_ep=EgoyMDI0MDkxMS4wIKXMDSoASAFQAw%3D%3D');
                            },
                            child: Lottie.asset(
                              'assets/jsons/IIwYhg0vDJ.json',
                              width: 349.0,
                              height: 242.0,
                              fit: BoxFit.contain,
                              animate: true,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.8),
                          child: Text(
                            ' TEGUCIGALPA',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'PLUTO SANS',
                                  color: Colors.black,
                                  fontSize: 16.0,
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
              Align(
                alignment: const AlignmentDirectional(-0.86, -1.02),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 100.0,
                  buttonSize: 68.0,
                  icon: const Icon(
                    Icons.arrow_circle_left_sharp,
                    color: Color(0xFFE31B1E),
                    size: 50.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent(
                        'UBICACIONES_arrow_circle_left_sharp_ICN_');
                    logFirebaseEvent('IconButton_navigate_to');

                    context.pushNamed('Menuprincipal');
                  },
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, -0.97),
                child: Text(
                  'UBICACIÓN',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'PLUTO SANS',
                        color: Colors.black,
                        fontSize: 19.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.3),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Text(
                    'TAMBIÉN PUEDES VISITAR NUESTRAS OFICINAS PARA PRESENTAR TUS DENUNCIAS, QUEJAS O SUGERENCIAS. NOS ENCONTRAMOS EN EL CENTRO CÍVICO GUBERNAMENTAL CONTIGUO A CHIMINIKE, BULEVAR FUERZAS ARMADAS, CA-6, TEGUCIGALPA. PARA NOSOTROS SERÁ UN GUSTO ATENDERTE”',
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFF2A2A2A),
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
