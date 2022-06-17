import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
      // We hide the appbar in desktop
          ? null
          : AppBar(
        backgroundColor: bgColor,
        // We used builder to obtain context has scaffold
        leading: Builder(
          builder: (context) =>
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
        ),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  // Now this take (2+7=9) so (2/9=0.22)
                  flex: 2,
                  child: SideMenu(),
                ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Our footer
                        ...children
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
