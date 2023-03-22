import 'package:flutter/material.dart';

import 'main_page/title_bar/title_bar.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State createState() => _AppLayoutState();
}

class _AppLayoutState extends State {
  late ScrollController _controller;
  double _offset = 0;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // main layout
    return
//    SingleChildScrollView(child:
        LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
      final width = constraints.maxWidth;
      final height = constraints.maxHeight;
      final ratio = width / height;
      return Row(
        //     crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //  IntrinsicHeight(
//              child:
          // left side menu
          Container(
            width: 300,
            height: height,
            color: Colors.indigo.withOpacity(0.55),
//          child: const SideMenu(),
            child: Text("side menu"),
          ),
          //Expanded(child:
          Scrollbar(
              thumbVisibility: true, //always show scrollbar
              thickness: 100, //width of scrollbar
              radius: Radius.circular(20), //corner radius of scrollbar
              controller: _controller,
              child: SingleChildScrollView(
                  controller: _controller,
                  child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 120,
                          width: 800,
                          color: Colors.indigo.withOpacity(0.80),
                          child: const TitleBar(),
                          //child: Text("TitleBar "),
                        )
                      ]))),
/*
          // right side content
          Expanded(
//            child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SingleChildScrollView(
                  child: Container(
                height: 120,
                color: Colors.indigo.withOpacity(0.80),
                //child: const TitleBar(),
                child: Text("TitleBar "),
              )),
              Expanded(
                child: Container(
                  color: Colors.deepPurple.withOpacity(0.50),
                  child: const Center(
//                  child: MainChild(),
//                  child: RegistrationPage(),
                    child: Text("RegistrationPage "),
                  ),
                ),
              ),
            ],
          )), */
        ],
      );
    });
  }
}
