import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/core/base/state/base_state.dart';
import 'package:flutter_architecture_template/core/base/view/base_view.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

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

  Widget get scaffoldBody =>
      Scaffold(floatingActionButton: fabIncrement, body: textNumber);

  Widget get fabIncrement => FloatingActionButton(
      onPressed: () => viewModel.increment(), child: const Icon(Icons.add));

  Widget get textNumber => Center(
      child: Observer(builder: (context) => Text(viewModel.value.toString())));
}
