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
	fvm flutter run --dart-define-from-file=env.dev.json

.PHONY: run-stg
run-stg:
	fvm flutter run --dart-define-from-file=env.stg.json

.PHONY: run-prod
run-prod:
	fvm flutter run --dart-define-from-file=env.prod.json

.PHONY: build-apk-dev
build-apk-dev:
	fvm flutter build apk --debug --dart-define-from-file=env.dev.json --build-number=${BUILD_NUMBER}

# .PHONY: build-aab
# build-aab:
# 	fvm flutter build appbundle --release --dart-define-from-file=env.prod.json --build-number=${BUILD_NUMBER}

.PHONY: gen-i18n
gen-i18n:
	fvm dart run slang

.PHONY: dart-define-init
dart-define-init:
	fvm dart run dart_define generate --no-json --json_path=env.dev.json

# ↓ makefile検証用

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
