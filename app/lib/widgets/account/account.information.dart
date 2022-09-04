import 'package:app/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../models/wobble.notifier.dart';

class AccountInformation extends StatelessWidget {
  const AccountInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              "http://localhost:4124/accounts/63025b068d7229afe048b2b0/avi",
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            )
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child:
          Text(
            context.watch<WobbleNotifier>().account?.displayname ?? "Utilisateur",
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

  old (BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.person),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(context.watch<WobbleNotifier>().account?.username ?? "user"),
                  ),
                ]
            )
        ),
        OutlinedButton(
            onPressed: null,
            child: Text(AppLocalizations.of(context)!.editProfile)
        )
      ],
    );
  }
}
