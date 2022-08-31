import 'package:flutter_architecture_template/core/init/navigation/navigation_service.dart';

import 'theme_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ProviderInit {
  static ProviderInit? _instance;
  static ProviderInit get instance {
    _instance ??= ProviderInit._init();
    return _instance!;
  }

  ProviderInit._init();

  List<SingleChildWidget> get providers => [
        ChangeNotifierProvider<ThemeNotifier>(
          create: (context) => ThemeNotifier(),
        ),
        Provider.value(value: NavigationService.instance)
      ];
}
