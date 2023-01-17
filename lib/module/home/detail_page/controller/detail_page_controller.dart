import 'package:cozy/core.dart';
import 'package:flutter/material.dart';

class DetailPageController extends State<DetailPageView>
    implements MvcController {
  static late DetailPageController instance;
  late DetailPageView view;

  refresh() => setState(() {});

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
