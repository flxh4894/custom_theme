import 'package:custom_theme/core/custom_theme.dart';
import 'package:custom_theme/style/base_color/primary_color.dart';
import 'package:custom_theme/style/color_pallete.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final savedThemeMode = await CustomTheme.getThemeMode();
  runApp(MyApp(themeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  const MyApp({
    required this.themeMode,
    super.key,
  });

  final ThemeMode themeMode;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CustomTheme(
      initThemeMode: themeMode,
      builder: (light, dark, mode) => MaterialApp(
        theme: light,
        darkTheme: dark,
        title: 'Flutter Demo',
        themeMode: mode,
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter(BuildContext context) {
    CustomTheme.of(context).toggleThemeMode();
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(CustomTheme.of(context).getThemeMode()),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                alignment: Alignment.center,
                color: CustomTheme.of(context)
                    .colorTokens
                    .buttonTokens
                    .activePrimary
                    .container,
                child: Text(
                  "Button/Active/Primary",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: CustomTheme.of(context)
                          .colorTokens
                          .buttonTokens
                          .activePrimary
                          .elements),
                ),
              ),
              Container(
                width: 150,
                height: 150,
                alignment: Alignment.center,
                color: CustomTheme.of(context)
                    .colorTokens
                    .buttonTokens
                    .activeSecondary
                    .container,
                child: Text(
                  "Button/Active/Secondary",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: CustomTheme.of(context)
                          .colorTokens
                          .buttonTokens
                          .activeSecondary
                          .elements),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                color: CustomTheme.of(context)
                    .colorTokens
                    .buttonTokens
                    .activeGhost
                    .elements,
                child: const Text(
                  "Button/Active/Ghost",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                color: CustomTheme.of(context)
                    .colorTokens
                    .buttonTokens
                    .activeDisabled
                    .container,
                child: Text(
                  "Button/Disabled",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: CustomTheme.of(context)
                        .colorTokens
                        .buttonTokens
                        .activeDisabled
                        .elements,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "ElevatedButton",
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _incrementCounter(context),
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
