import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'chat_a_i_model.dart';
export 'chat_a_i_model.dart';

class ChatAIWidget extends StatefulWidget {
  const ChatAIWidget({super.key});

  @override
  State<ChatAIWidget> createState() => _ChatAIWidgetState();
}

class _ChatAIWidgetState extends State<ChatAIWidget> {
  late ChatAIModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatAIModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'ChatAI'});
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
        backgroundColor: const Color(0xFF6EC8D7),
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
              logFirebaseEvent('CHAT_A_I_arrow_back_rounded_ICN_ON_TAP');
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
          title: Text(
            'CHAT BOT',
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
        body: SafeArea(
          top: true,
          child: Container(
            width: 423.0,
            height: 813.0,
            decoration: const BoxDecoration(
              color: Color(0xFF6EC8D7),
            ),
            child: const Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FlutterFlowWebView(
                content: 'https://agentesmartai.github.io/chabai/',
                bypass: false,
                height: 756.0,
                verticalScroll: false,
                horizontalScroll: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
