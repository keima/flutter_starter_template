part of 'translations.g.dart';

// Path: <root>
class TranslationsEn extends TranslationsJa {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, TranslationsJa> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final TranslationsEn _root = this; // ignore: unused_field

	// Translations
	@override late final TranslationsGeneralEn general = TranslationsGeneralEn._(_root);
	@override late final TranslationsPagesEn pages = TranslationsPagesEn._(_root);
}

// Path: general
class TranslationsGeneralEn extends TranslationsGeneralJa {
	TranslationsGeneralEn._(TranslationsEn root) : this._root = root, super._(root);

	@override final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get appName => 'Flutter Starter Template';
	@override String get helloWorld => 'Hello, World!';
}

// Path: pages
class TranslationsPagesEn extends TranslationsPagesJa {
	TranslationsPagesEn._(TranslationsEn root) : this._root = root, super._(root);

	@override final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final TranslationsPagesMainEn main = TranslationsPagesMainEn._(_root);
}

// Path: pages.main
class TranslationsPagesMainEn extends TranslationsPagesMainJa {
	TranslationsPagesMainEn._(TranslationsEn root) : this._root = root, super._(root);

	@override final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final TranslationsPagesMainBottomItemLabelEn bottomItemLabel = TranslationsPagesMainBottomItemLabelEn._(_root);
}

// Path: pages.main.bottomItemLabel
class TranslationsPagesMainBottomItemLabelEn extends TranslationsPagesMainBottomItemLabelJa {
	TranslationsPagesMainBottomItemLabelEn._(TranslationsEn root) : this._root = root, super._(root);

	@override final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get home => 'Home';
	@override String get map => 'Map';
	@override String get about => 'About';
}
