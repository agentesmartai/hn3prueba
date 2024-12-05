import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'acuerdos_d_t_l_c_c_model.dart';
export 'acuerdos_d_t_l_c_c_model.dart';

class AcuerdosDTLCCWidget extends StatefulWidget {
  const AcuerdosDTLCCWidget({super.key});

  @override
  State<AcuerdosDTLCCWidget> createState() => _AcuerdosDTLCCWidgetState();
}

class _AcuerdosDTLCCWidgetState extends State<AcuerdosDTLCCWidget> {
  late AcuerdosDTLCCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AcuerdosDTLCCModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'acuerdosDTLCC'});
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
              logFirebaseEvent('ACUERDOS_D_T_L_C_C_arrow_back_rounded_IC');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          actions: const [],
          centerTitle: true,
          elevation: 1.0,
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
                      '<!DOCTYPE html>\n<html lang=\"es\">\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Visualizar y Descargar PDF</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            text-align: center;\n            margin: 20px;\n        }\n        iframe {\n            width: 100%;\n            height: 600px;\n            border: none;\n        }\n        .download-link {\n            margin-top: 10px;\n            display: inline-block;\n            padding: 10px 20px;\n            background-color: #DC473D;\n            color: white;\n            text-decoration: none;\n            border-radius: 5px;\n        }\n        .download-link:hover {\n            background-color: #B23A30;\n        }\n    </style>\n</head>\n<body>\n    \n    <!-- iframe para visualizar el PDF -->\n    <iframe src=\"https://drive.google.com/file/d/1wrpLM4p24x4hxcBddix4osZLD_Y9EyKO/preview\"></iframe>\n    \n    <!-- Enlace para descargar el PDF -->\n    <a class=\"download-link\" href=\"https://drive.google.com/uc?export=download&id=1wrpLM4p24x4hxcBddix4osZLD_Y9EyKO\" download>\n        Descargar PDF\n    </a>\n\n</body>\n</html>\n',
                  height: 713.0,
                  verticalScroll: false,
                  horizontalScroll: false,
                  html: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
