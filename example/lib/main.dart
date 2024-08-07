import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/change_password/presentation/views/form_with_data_builder.dart';
import 'features/change_password/presentation/views/form_with_text_input_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final baseTheme = Theme.of(context);
    return MaterialApp(
      title: 'Flex Form',
      theme: baseTheme.copyWith(
        colorScheme: baseTheme.colorScheme.copyWith(
          primary: const Color(0xFFE7F25A),
          secondary: const Color(0xFFF5ECE9),
          tertiary: const Color(0xFFD0BCFF),
          onPrimary: Theme.of(context).textTheme.labelSmall!.color,
        ),
        inputDecorationTheme: baseTheme.inputDecorationTheme.copyWith(
          fillColor: baseTheme.colorScheme.secondary.withOpacity(0.3),
        ),
        textTheme: GoogleFonts.lexendTextTheme(baseTheme.textTheme),
      ),
      home: const MyHomePage(title: 'Flex Form Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _contentTabController;

  @override
  void initState() {
    _contentTabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final drawerWidth = MediaQuery.of(context).size.width * 1 / 4;

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        toolbarHeight: 100,
        automaticallyImplyLeading: true,
        title: Text(
          widget.title,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      // extendBodyBehindAppBar: true,
      drawer: Drawer(
        width: drawerWidth,
        surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        shadowColor: Theme.of(context).colorScheme.shadow,
        elevation: 10,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Flex Form',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                  Text(
                    'Version: 0.0.1',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'FormInputBuilder',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () => setState(() {
                _contentTabController.animateTo(0);
              }),
            ),
            ListTile(
              title: Text(
                'FormDataBuilder',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () => setState(() {
                _contentTabController.animateTo(1);
              }),
            ),
          ],
        ),
      ),
      drawerDragStartBehavior: DragStartBehavior.start,
      drawerScrimColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
      onDrawerChanged: (bool isOpened) {},
      body: TabBarView(
        controller: _contentTabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          ChangePasswordFormWithTextInputBuilder(),
          ChangePasswordFormWithDataBuilder(),
        ],
      ),
    );
  }
}
