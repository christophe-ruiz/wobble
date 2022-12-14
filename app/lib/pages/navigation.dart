import 'package:app/config/palette.dart';
import 'package:app/config/custom_icons.dart';
import 'package:app/models/wobble.notifier.dart';
import 'package:app/pages/account/account.page.dart';
import 'package:app/pages/training/training.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int pageIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  static const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold
  );

  static const List<Widget> pages = <Widget>[
    TrainingPage(),
    AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => WobbleNotifier())
          ],
          child: Center(
            child: pages.elementAt(pageIndex),
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: const Icon(Icons.sports_rounded),
              label: AppLocalizations.of(context)!.trainingTitle
          ),
          BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: AppLocalizations.of(context)!.accountTitle
          ),
        ],
        currentIndex: pageIndex,
        unselectedItemColor: Palette.grey,
        backgroundColor: Palette.light,
        selectedItemColor: Palette.primary,
        onTap: _onItemTapped,
      ),
    );
  }
}
