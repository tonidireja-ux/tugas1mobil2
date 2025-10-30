## Quick context

- This is a small Flutter app. Entry point: `lib/main.dart` which builds a MaterialApp and sets
  `home: const MainScreen()`.
- UI lives under `lib/screen/` (e.g. `main_screen.dart`, `home_screen.dart`). Files use snake_case
  and a mix of `StatelessWidget` / `StatefulWidget` patterns.
- Project uses Dart SDK ^3.9.2 and `flutter_lints` (see `pubspec.yaml` and `analysis_options.yaml`).

## What to change and where (high-value targets)

- UI pages: add/modify screens in `lib/screen/`. `MainScreen` composes `HomeScreen` — follow the
  existing pattern: `Scaffold` → `body: const HomeScreen()`.
- App-wide wiring: `lib/main.dart` controls theme and the initial route. Small changes to the app
  entrypoint belong here.
- Assets: `pubspec.yaml` currently has no `assets:` entries — if you add images/fonts, update
  `pubspec.yaml` and commit the asset files under `assets/` or `assets/<type>/`.

## Build / run / test (concrete commands)

- Install deps: `flutter pub get` (PowerShell: `flutter pub get`).
- Run on Windows (this repo includes `windows/`): `flutter run -d windows`.
- Run on Android: `flutter run -d <device-id>` or use an emulator via Android Studio.
- Build APK: `flutter build apk`.
- Run tests: `flutter test` (there is `test/widget_test.dart`).
- Static analysis: `flutter analyze` and formatting: `dart format .`.

## Project-specific conventions & notes

- File/folder layout: UI code is in `lib/screen/`. Keep screen widgets focused on UI; heavier
  logic should be moved to separate services or helpers if added (create `lib/services/` or
  `lib/widgets/` as needed).
- Language: source code contains comments in Indonesian — keep user-facing comments and
  commit messages consistent with the repo's language when appropriate.
- Material theming: app uses Material 3 via `useMaterial3: true` and `ColorScheme.fromSeed` in
  `lib/main.dart`. Prefer working with `ThemeData.colorScheme` for colors.

## Integration & generated files — what to avoid

- Many platform-generated files live under `build/`, `android/`, `ios/`, `windows/`. Avoid
  editing generated files under `build/` or files under platform plugin registrants unless
  you are adding native integrations.
- Keep `pubspec.yaml` dependencies minimal and consistent with `flutter pub get`.

## Useful file references (examples)

- App entry: `lib/main.dart` — controls theme and initial screen.
- Main composition: `lib/screen/main_screen.dart` — shows how `Scaffold` and `HomeScreen` are used.
- Example UI layout: `lib/screen/home_screen.dart` — simple SafeArea → Column layout used here.
- Lints & analysis: `analysis_options.yaml` and `pubspec.yaml` (contains `flutter_lints`).

## Short contract for AI edits

- Inputs: the file(s) to change and a short goal (e.g., "add top app bar with search to HomeScreen").
- Output: a minimal, lint-passing code change that keeps existing file structure and naming.
- Error modes: if change requires native platform work or new assets, note it and add steps (e.g., update `pubspec.yaml`, include asset files).

## If you need more context

- Run the app locally and inspect `lib/screen/` to see runtime behavior before large UI changes.
- Ask: intended device targets (mobile only vs desktop) and whether Indonesian-language
  comments/messages should be translated.

Please review — I can tighten language, add CI steps, or merge into an existing file if you have
one to preserve. What should I adjust or include next?
