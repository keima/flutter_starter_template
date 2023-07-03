part of 'translations.g.dart';

// Path: <root>
class TranslationsJa implements BaseTranslations<AppLocale, TranslationsJa> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, TranslationsJa> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	// Translations
	late final TranslationsGeneralJa general = TranslationsGeneralJa._(_root);
	late final TranslationsPagesJa pages = TranslationsPagesJa._(_root);
}

// Path: general
class TranslationsGeneralJa {
	TranslationsGeneralJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	String get appName => 'フラッタースターターテンプレート';
	String get helloWorld => 'こんにちは世界！';
}

// Path: pages
class TranslationsPagesJa {
	TranslationsPagesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesMainJa main = TranslationsPagesMainJa._(_root);
}

// Path: pages.main
class TranslationsPagesMainJa {
	TranslationsPagesMainJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesMainBottomItemLabelJa bottomItemLabel = TranslationsPagesMainBottomItemLabelJa._(_root);
}

// Path: pages.main.bottomItemLabel
class TranslationsPagesMainBottomItemLabelJa {
	TranslationsPagesMainBottomItemLabelJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	String get home => 'ホーム';
	String get map => 'マップ';
	String get about => '概要';
}
