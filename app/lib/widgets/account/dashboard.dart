import 'package:app/config/custom_icons.dart';
import 'package:app/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 10), child: Expanded(child: Column(
      children: [
        Row(
          children: [
            Expanded(child: Container(
              height: 150,
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Palette.primary),
                    foregroundColor: MaterialStateProperty.all(Palette.accent),
                    minimumSize: MaterialStateProperty.all(const Size.fromHeight(0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ))
                ),
                child: Row(
                  children: [
                    const Icon(Icons.data_thresholding_outlined),
                    Text(
                      AppLocalizations.of(context)!.statistics,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Palette.accent),
                    )
                  ],
                ),
              ),
            )),
            Expanded(child: Container(
              height: 150,
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Palette.primary),
                    foregroundColor: MaterialStateProperty.all(Palette.accent),
                    minimumSize: MaterialStateProperty.all(const Size.fromHeight(0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ))
                ),
                child: Row(
                  children: [
                    const Icon(Icons.sports),
                    Text(
                      AppLocalizations.of(context)!.exercises,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Palette.accent),
                    )
                  ],
                ),
              ),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(child: Container(
              height: 150,
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Palette.primary),
                    foregroundColor: MaterialStateProperty.all(Palette.accent),
                    minimumSize: MaterialStateProperty.all(const Size.fromHeight(0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ))
                ),
                child: Row(
                  children: [
                    const Icon(Icons.accessibility_new),
                    Text(
                      AppLocalizations.of(context)!.measurements,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Palette.accent),
                    )
                  ],
                ),
              ),
            )),
            Expanded(child: Container(
              height: 150,
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Palette.primary),
                    foregroundColor: MaterialStateProperty.all(Palette.accent),
                    minimumSize: MaterialStateProperty.all(const Size.fromHeight(0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ))
                ),
                child: Row(
                  children: [
                    const Icon(Icons.calendar_today),
                    Text(
                      AppLocalizations.of(context)!.calendar,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Palette.accent),
                    )
                  ],
                ),
              ),
            )),
          ],
        )
      ],
    ))
    );
  }
}
