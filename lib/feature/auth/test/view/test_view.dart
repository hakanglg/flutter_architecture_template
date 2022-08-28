import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/core/base/state/base_state.dart';
import 'package:flutter_architecture_template/core/base/view/base_view.dart';

class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);
  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: "",
      
      onPageBuilder: (context, model) => Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: const Center(
          child: Text('Test'),
        ),
      ),
    );
  }
}
