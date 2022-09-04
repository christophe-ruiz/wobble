import 'package:app/config/palette.dart';
import 'package:app/pages/navigation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = true;

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/Noto_Sans/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wobble',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
          primaryColor: Palette.primary,
          textTheme: GoogleFonts.notoSansTextTheme(Theme.of(context).textTheme).copyWith(
            bodySmall: GoogleFonts.notoSans(
                fontSize: 10,
                color: Palette.grey,
                fontWeight: FontWeight.normal
            ),
            displaySmall: GoogleFonts.notoSans(
              fontSize: 24,
              color: Palette.black,
              fontWeight: FontWeight.bold,
            ),
            titleLarge: GoogleFonts.notoSans(
              fontSize: 45,
              color: Palette.black,
              fontWeight: FontWeight.bold
            ),
            titleSmall: GoogleFonts.notoSans(
              fontSize: 16,
              color: Palette.primary,
              fontWeight: FontWeight.bold
            ),
            bodyMedium: GoogleFonts.notoSans(
              fontSize: 14,
              color: Palette.black,
              fontWeight: FontWeight.normal
            ),
            labelSmall: GoogleFonts.notoSans(
              fontSize: 16,
              color: Palette.black,
              fontWeight: FontWeight.bold
            )
          )
      ),
      home: const Navigation(),
    );
  }
}
