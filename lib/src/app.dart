
import 'package:clean_pro_admin/src/view/routes/approutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// MyApp is the root widget of the application.
/// It sets up the MaterialApp with localization, theming, and routing.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Unique ID for the widget's RestorationScope
      restorationScopeId: 'app',
      
      // Set up the app's localization delegates
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // Define the list of supported locales
      supportedLocales: const [
        Locale('en', ''), // English
      ],
      
      // Generate the app's title dynamically based on the current locale
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,
      
      // Set the light theme for the app
      theme: ThemeData(),
      // Set the dark theme for the app
      darkTheme: ThemeData.dark(),

      // Set up the route generation for the app
      onGenerateRoute: AppRoutes.routes,
    );
  }
}
