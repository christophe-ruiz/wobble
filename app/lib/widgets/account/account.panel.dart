import 'package:app/config/palette.dart';
import 'package:app/widgets/account/account.information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../models/wobble.notifier.dart';

class AccountPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 6,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row( children: [
        Expanded(child: Padding (
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column( children: [
            const AccountInformation(),
            Row( children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: IntrinsicHeight(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.workouts,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              Text(
                                context.watch<WobbleNotifier>().workoutHistory?.length.toString() ?? "0",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ]
                        ),
                        divider(),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  AppLocalizations.of(context)!.followers,
                                  style: Theme.of(context).textTheme.bodySmall
                              ),
                              Text(
                                context.watch<WobbleNotifier>().account?.followers.length.toString() ?? "0",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ]
                        ),
                        divider(),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  AppLocalizations.of(context)!.following_plural,
                                  style: Theme.of(context).textTheme.bodySmall
                              ),
                              Text(
                                context.watch<WobbleNotifier>().account?.following.length.toString() ?? "0",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ]
                        ),
                      ]
                  ),
                ),
              ))
            ]),
          ]),
        ))
      ]),
    );
  }

  const AccountPanel({Key? key}) : super(key: key);

  divider() {
    return VerticalDivider(
      width: 1,
      thickness: 1,
      indent: 3,
      endIndent: 3,
      color: Palette.lightGrey,
    );
  }
}
