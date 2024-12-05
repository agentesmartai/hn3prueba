import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'quejas_model.dart';
export 'quejas_model.dart';

class QuejasWidget extends StatefulWidget {
  const QuejasWidget({super.key});

  @override
  State<QuejasWidget> createState() => _QuejasWidgetState();
}

class _QuejasWidgetState extends State<QuejasWidget> {
  late QuejasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuejasModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'QUEJAS'});
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFF68C5D7),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              logFirebaseEvent('QUEJAS_arrow_back_rounded_ICN_ON_TAP');
              logFirebaseEvent('IconButton_navigate_to');

              context.pushNamed('Servicios');
            },
          ),
          title: Text(
            'QUEJAS',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'PLUTO SANS',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w300,
                  useGoogleFonts: false,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: const SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowWebView(
                  content:
                      'https://portal-dev.linea130.gob.hn/todos-los-servicios/queja/',
                  bypass: false,
                  height: 752.0,
                  verticalScroll: true,
                  horizontalScroll: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
