# flutter_starter_template

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Using libraries

### Routing (deep linking)

[go_router | Flutter Package](https://pub.dev/packages/go_router)

TODO: Due to lack of StatefulShellRoute support, `go_router_builder` is not activated yet.

- generate type-defined routing file
  - `make build`
- watch file changed and build
  - `make watch`

### immutable class builder

[freezed \| Dart Package](https://pub.dev/packages/freezed)

- generate type-defined routing file
  - `make build`
- watch file changed and build
  - `make watch`

### Localization

[Tienisto/slang: Type\-safe i18n for Flutter](https://github.com/Tienisto/slang)

- generate translations dart files
  - `make gen-i18n` or `make build`
  - `fvm flutter pub run slang`
- analyze missing translation
  - `fvm flutter pub run slang analyze`
  - `fvm flutter pub run slang analyze --full` also checks unused translation

More cli tool subcommand is [here](https://github.com/Tienisto/slang#tools).