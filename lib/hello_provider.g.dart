// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$helloHash() => r'b55171bb5f5432f6c3b81f218310b65655065b18';

/// See also [hello].
@ProviderFor(hello)
final helloProvider = AutoDisposeProvider<String>.internal(
  hello,
  name: r'helloProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$helloHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HelloRef = AutoDisposeProviderRef<String>;
String _$helloAsyncHash() => r'99fa5dd3877a187be6eda8132c162d5e99d3cf19';

/// See also [helloAsync].
@ProviderFor(helloAsync)
final helloAsyncProvider = AutoDisposeFutureProvider<String>.internal(
  helloAsync,
  name: r'helloAsyncProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$helloAsyncHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HelloAsyncRef = AutoDisposeFutureProviderRef<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
