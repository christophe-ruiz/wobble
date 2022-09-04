import 'package:app/models/wobble.notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/account/account.panel.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        AccountPanel()
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<WobbleNotifier>().setAccount("63025b068d7229afe048b2b0");
  }
}
