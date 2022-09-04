import 'package:app/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:app/config/server.config.dart';

import '../../models/wobble.notifier.dart';

class AccountInformation extends StatelessWidget {
  const AccountInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "${Server.endpoint}accounts/${context.watch<WobbleNotifier>().account?.id}/avi",
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                )
            ),
            Positioned(
                top: -13,
                right: -13,
                child: Image.asset(
                  'assets/img/certified.png',
                  height: 35,
                )
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child:
          Text(
            context.watch<WobbleNotifier>().account?.displayname ?? "Wobbler",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            context.watch<WobbleNotifier>().account?.username ?? "@username",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            context.watch<WobbleNotifier>().account?.bio ?? "Bio",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Palette.lightGrey),
                foregroundColor: MaterialStateProperty.all(Palette.black),
                minimumSize: MaterialStateProperty.all(const Size.fromHeight(0)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ))
            ),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Text(
                    AppLocalizations.of(context)!.editProfile,
                    style: Theme.of(context).textTheme.labelSmall
                )
            )
        )
      ],
    );
  }
}
