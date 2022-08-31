import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'core/constants/app/app_constants.dart';
import 'core/init/lang/language_manager.dart';
import 'core/init/navigation/navigation_service.dart';
import 'core/init/notifier/theme_notifier.dart';
import 'feature/auth/test/view/test_view.dart';
import 'package:provider/provider.dart';

import 'core/init/navigation/navigation_route.dart';
import 'core/init/notifier/provider_init.dart';

void main() => runApp(MultiProvider(
      providers: ProviderInit.instance.providers,
      child: EasyLocalization(
          supportedLocales: LanguageManager.instance.supportedLocales,
          startLocale: LanguageManager.instance.startLocale,
          path: ApplicationConstants.LANG_ASSETS_PATH,
          child: const MyApp()),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: ApplicationConstants.APP_NAME,
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        theme: context.read<ThemeNotifier>().currentTheme,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: NavigationRoute.instance.generateRoute,
        navigatorKey: NavigationService.instance.navigatorKey,
        home: const TestView());
  }
}
