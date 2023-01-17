import 'package:flutter/material.dart';
import 'package:cozy/state_util.dart';
import '../view/page_not_found_view.dart';

class PageNotFoundController extends State<PageNotFoundView> implements MvcController {
  static late PageNotFoundController instance;
  late PageNotFoundView view;

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