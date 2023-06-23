
.PHONY: init
init:
	fvm flutter pub get
	fvm flutter pub run build_runner build

.PHONY: watch
watch:
	fvm flutter pub run build_runner watch

.PHONY: run
run:
	fvm flutter run

# .PHONY: run-dev
# run-dev:
# 	fvm flutter run --flavor dev --dart-define=FLAVOR=dev

# .PHONY: run-stg
# run-stg:
# 	fvm flutter run --flavor stg --dart-define=FLAVOR=stg

# .PHONY: run-prod
# run-prod:
# 	fvm flutter run --flavor prod --dart-define=FLAVOR=prod

# .PHONY: build-aab-stg
# build-aab-stg:
# 	fvm flutter build appbundle --debug --flavor stg --dart-define=FLAVOR=stg --build-number=${BUILD_NUMBER}

.PHONY: gen-i18n
gen-i18n:
	fvm flutter pub run slang

.PHONY: foobar
foobar:
	@echo "foobar"
