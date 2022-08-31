import 'package:flutter/material.dart';
import '../../../../core/base/state/base_state.dart';
import '../../../../core/base/view/base_view.dart';
import '../../../../core/extension/string_extansion.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/notifier/theme_notifier.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';
import '../../../../core/init/lang/language_manager.dart';
import '../view_model/test_view_model.dart';

class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);
  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  late TestViewModel viewModel = TestViewModel();
  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModel: TestViewModel(),
        onModelReady: (model) {
          final viewModel = model;
        },
        onPageBuilder: (context, model) => scaffoldBody);
  }

  Widget get scaffoldBody => Scaffold(
      floatingActionButton: fabIncrement,
      appBar: _appBar(context),
      body: textNumber);

  AppBar _appBar(BuildContext context) => AppBar(
      leading: _changeLanguageIconButton(context),
      centerTitle: true,
      actions: [_changeTheme],
      title: Text(LocaleKeys.welcome.locale));

  Widget get _changeTheme => IconButton(
      onPressed: () {
        context.read<ThemeNotifier>().changeTheme();
      },
      icon: const Icon(Icons.dark_mode));

  IconButton _changeLanguageIconButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.language),
      onPressed: () => context.setLocale(LanguageManager.instance.trLocale),
    );
  }

  Widget get fabIncrement => FloatingActionButton(
      onPressed: () => viewModel.increment(), child: const Icon(Icons.add));

  Widget get textNumber => Center(
      child: Observer(builder: (context) => Text(viewModel.value.toString())));
}
