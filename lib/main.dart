// Core Flutter imports
import 'package:flutter/material.dart';

// Localization and URL handling
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

// Firebase authentication imports
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';

// Backend configuration and theme management
import 'backend/firebase/firebase_config.dart';
import '/flutter_flow/flutter_flow_theme.dart';

// Utility imports
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'index.dart';

/**
 * Main entry point of the application
 * Initializes Firebase, theme, and localizations before running the app
 */
void main() async {
  // Ensure Flutter widgets are initialized
  WidgetsFlutterBinding.ensureInitialized();
  
  // Configure URL strategy for web
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();

  // Initialize Firebase services
  await initFirebase();

  // Initialize theme system
  await FlutterFlowTheme.initialize();

  // Initialize localization system
  await FFLocalizations.initialize();

  // Start the app
  runApp(const MyApp());
}

/**
 * Main application widget that manages the app's state
 * Provides access to global app state through the of() method
 */
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  /// Returns the current app state from any widget in the tree
  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

/**
 * State management for the main app widget
 * Handles authentication, routing, and theme management
 */
class _MyAppState extends State<MyApp> {
  /// Current language setting for the app
  Locale? _locale = FFLocalizations.getStoredLocale();

  /// Current theme mode (light/dark)
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  /// Notifier for app state changes
  late AppStateNotifier _appStateNotifier;
  
  /// Router for app navigation
  late GoRouter _router;

  /// Stream for user authentication state
  late Stream<BaseAuthUser> userStream;

  /// Subscription to authenticated user stream
  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();

    // Initialize app state notifier
    _appStateNotifier = AppStateNotifier.instance;
    
    // Create router with app state
    _router = createRouter(_appStateNotifier);
    
    // Listen to user authentication changes
    userStream = kisanMitraFirebaseUserStream()
      ..listen((user) {
        _appStateNotifier.update(user);
      });
    
    // Listen to JWT token changes
    jwtTokenStream.listen((_) {});
    
    // Hide splash screen after initialization
    Future.delayed(
      Duration(milliseconds: isWeb ? 0 : 1000),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  void setLocale(String language) {
    safeSetState(() => _locale = createLocale(language));
    FFLocalizations.storeLocale(language);
  }

  void setThemeMode(ThemeMode mode) => safeSetState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'KisanMitra',
      localizationsDelegates: const [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FallbackMaterialLocalizationDelegate(),
        FallbackCupertinoLocalizationDelegate(),
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('en'),
        Locale('hi'),
        Locale('mr'),
        Locale('kn'),
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key, this.initialPage, this.page});

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'HomePage';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'HomePage': const HomePageWidget(),
      'FertilizeSelect': const FertilizeSelectWidget(),
      'PesticidePage': const PesticidePageWidget(),
      'WeedicidePage': const WeedicidePageWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => safeSetState(() {
          _currentPage = null;
          _currentPageName = tabs.keys.toList()[i];
        }),
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        selectedItemColor: FlutterFlowTheme.of(context).primary,
        unselectedItemColor: FlutterFlowTheme.of(context).secondaryText,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home,
              size: 40.0,
            ),
            label: FFLocalizations.of(context).getText(
              'xryv2f09' /* Home */,
            ),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.eco,
              size: 40.0,
            ),
            label: FFLocalizations.of(context).getText(
              'i0tj9yga' /* Fertilizers */,
            ),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.pest_control,
              size: 40.0,
            ),
            label: FFLocalizations.of(context).getText(
              '4skjeawt' /* Pesticides */,
            ),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.ac_unit,
              size: 40.0,
            ),
            label: FFLocalizations.of(context).getText(
              '4mzr6l7m' /* Weedicide */,
            ),
            tooltip: '',
          )
        ],
      ),
    );
  }
}
