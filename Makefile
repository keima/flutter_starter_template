BUILD_NUMBER?=1

.PHONY: init
init: dart-define-init force-build
	fvm flutter pub get

.PHONY: build
build:
	fvm dart run build_runner build

.PHONY: force-build
force-build:
	fvm dart run build_runner build --delete-conflicting-outputs

.PHONY: watch
watch:
	fvm dart run build_runner watch

.PHONY: run-dev
run-dev:
	fvm flutter run --flavor dev --dart-define-from-file=env.dev.json

.PHONY: run-stg
run-stg:
	fvm flutter run --flavor stg --dart-define-from-file=env.stg.json

.PHONY: run-prod
run-prod:
	fvm flutter run --flavor prod --dart-define-from-file=env.prod.json

# .PHONY: build-aab
# build-aab:
# 	fvm flutter build appbundle --debug --flavor prod --dart-define-from-file=env.prod.json --build-number=${BUILD_NUMBER}

.PHONY: gen-i18n
gen-i18n:
	fvm dart run slang

.PHONY: dart-define-init
dart-define-init:
	fvm flutter pub run dart_define generate --no-json

.PHONY: foobar
foobar: foo bar baz
	@echo "> foobar"

.PHONY: foo
foo:
	@echo "> foo"

.PHONY: bar
bar:
	@echo "> bar"

.PHONY: baz
baz:
	@echo "> ${USER}"
