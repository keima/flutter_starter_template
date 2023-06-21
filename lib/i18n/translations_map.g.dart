part of 'translations.g.dart';

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appName': return 'フラッタースターターテンプレート';
			case 'general.helloWorld': return 'こんにちは世界！';
			case 'pages.main.bottomItemLabel.home': return 'ホーム';
			case 'pages.main.bottomItemLabel.menu': return 'メニュー';
			case 'pages.main.bottomItemLabel.about': return 'このアプリについて';
			default: return null;
		}
	}
}

extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appName': return 'Flutter Starter Template';
			case 'general.helloWorld': return 'Hello, World!';
			case 'pages.main.bottomItemLabel.home': return 'Home';
			case 'pages.main.bottomItemLabel.menu': return 'Menu';
			case 'pages.main.bottomItemLabel.about': return 'About';
			default: return null;
		}
	}
}
