import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/logo_sistema_130-01.png',
                  fit: BoxFit.contain,
                ),
              ),
            )
          : const InicioWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/logo_sistema_130-01.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : const InicioWidget(),
          routes: [
            FFRoute(
              name: 'Menuprincipal',
              path: 'menuprincipal',
              builder: (context, params) => const MenuprincipalWidget(),
            ),
            FFRoute(
              name: 'Servicios',
              path: 'servicios',
              builder: (context, params) => const ServiciosWidget(),
            ),
            FFRoute(
              name: 'LLAMADAURGENTE',
              path: 'Llamadadeemreencia',
              builder: (context, params) => const LlamadaurgenteWidget(),
            ),
            FFRoute(
              name: 'QUEJAS',
              path: 'quejas',
              builder: (context, params) => const QuejasWidget(),
            ),
            FFRoute(
              name: 'sugerencias',
              path: 'sugerencias',
              builder: (context, params) => const SugerenciasWidget(),
            ),
            FFRoute(
              name: 'ChatAI',
              path: 'chatAI',
              builder: (context, params) => const ChatAIWidget(),
            ),
            FFRoute(
              name: 'inicio',
              path: 'inicio',
              builder: (context, params) => const InicioWidget(),
            ),
            FFRoute(
              name: 'Ubicaciones',
              path: 'ubicaciones',
              builder: (context, params) => const UbicacionesWidget(),
            ),
            FFRoute(
              name: 'Denuncia',
              path: 'denuncia',
              builder: (context, params) => const DenunciaWidget(),
            ),
            FFRoute(
              name: 'MENUestadisticas',
              path: 'MENUestadisticas',
              builder: (context, params) => const MENUestadisticasWidget(),
            ),
            FFRoute(
              name: 'CURSOS',
              path: 'CURSOS',
              builder: (context, params) => const CursosWidget(),
            ),
            FFRoute(
              name: 'Documentos1',
              path: 'documentos1',
              builder: (context, params) => const Documentos1Widget(),
            ),
            FFRoute(
              name: 'estadisticas1',
              path: 'estadisticas1',
              builder: (context, params) => const Estadisticas1Widget(),
            ),
            FFRoute(
              name: 'estadisticas2',
              path: 'estadisticas2',
              builder: (context, params) => const Estadisticas2Widget(),
            ),
            FFRoute(
              name: 'MENUmarcolegal',
              path: 'MENUmarcolegal',
              builder: (context, params) => const MENUmarcolegalWidget(),
            ),
            FFRoute(
              name: 'decretoeje1',
              path: 'decretoeje1',
              builder: (context, params) => const Decretoeje1Widget(),
            ),
            FFRoute(
              name: 'submenudecretos',
              path: 'submenudecretos',
              builder: (context, params) => const SubmenudecretosWidget(),
            ),
            FFRoute(
              name: 'decretoeje2',
              path: 'decretoeje2',
              builder: (context, params) => const Decretoeje2Widget(),
            ),
            FFRoute(
              name: 'submenuDOCDEINTERES',
              path: 'submenuDOCDEINTERES',
              builder: (context, params) => const SubmenuDOCDEINTERESWidget(),
            ),
            FFRoute(
              name: 'CNUCC',
              path: 'cnucc',
              builder: (context, params) => const CnuccWidget(),
            ),
            FFRoute(
              name: 'ENTAH2022-2026',
              path: 'ENTAH2022-2026',
              builder: (context, params) => const Entah20222026Widget(),
            ),
            FFRoute(
              name: 'INTIP-LNEABASE2022',
              path: 'intipLneabase2022',
              builder: (context, params) => const IntipLneabase2022Widget(),
            ),
            FFRoute(
              name: 'PAEAH2023-2025',
              path: 'PAEAH2023-2025',
              builder: (context, params) => const Paeah20232025Widget(),
            ),
            FFRoute(
              name: 'SUBMENULEYES',
              path: 'SUBMENULEYES',
              builder: (context, params) => const SubmenuleyesWidget(),
            ),
            FFRoute(
              name: 'Codigodeconducta1',
              path: 'codigodeconducta1',
              builder: (context, params) => const Codigodeconducta1Widget(),
            ),
            FFRoute(
              name: 'Codigopenaldehonduras',
              path: 'codigopenaldehonduras',
              builder: (context, params) => const CodigopenaldehondurasWidget(),
            ),
            FFRoute(
              name: 'Cnstituciondelarepublicadehonduras',
              path: 'cnstituciondelarepublicadehonduras',
              builder: (context, params) =>
                  const CnstituciondelarepublicadehondurasWidget(),
            ),
            FFRoute(
              name: 'Leydeparticipacionciudadana',
              path: 'leydeparticipacionciudadana',
              builder: (context, params) => const LeydeparticipacionciudadanaWidget(),
            ),
            FFRoute(
              name: 'Leydeprodecimientoadministrativo',
              path: 'leydeprodecimientoadministrativo',
              builder: (context, params) =>
                  const LeydeprodecimientoadministrativoWidget(),
            ),
            FFRoute(
              name: 'Leydetransparenciayacceso',
              path: 'leydetransparenciayacceso',
              builder: (context, params) => const LeydetransparenciayaccesoWidget(),
            ),
            FFRoute(
              name: 'Leygeneraldelaadministracionpublica',
              path: 'leygeneraldelaadministracionpublica',
              builder: (context, params) =>
                  const LeygeneraldelaadministracionpublicaWidget(),
            ),
            FFRoute(
              name: 'acuerdosDTLCC',
              path: 'acuerdosDTLCC',
              builder: (context, params) => const AcuerdosDTLCCWidget(),
            ),
            FFRoute(
              name: 'Exriencias',
              path: 'exriencias',
              builder: (context, params) => const ExrienciasWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
