// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_trivia_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NumberTrivia)
final numberTriviaProvider = NumberTriviaProvider._();

final class NumberTriviaProvider
    extends $AsyncNotifierProvider<NumberTrivia, NumberTriviaModel> {
  NumberTriviaProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'numberTriviaProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$numberTriviaHash();

  @$internal
  @override
  NumberTrivia create() => NumberTrivia();
}

String _$numberTriviaHash() => r'f49c915be0158440d3ddf8c78d743c832edf9b6f';

abstract class _$NumberTrivia extends $AsyncNotifier<NumberTriviaModel> {
  FutureOr<NumberTriviaModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<NumberTriviaModel>, NumberTriviaModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<NumberTriviaModel>, NumberTriviaModel>,
              AsyncValue<NumberTriviaModel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
