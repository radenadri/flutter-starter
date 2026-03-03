# AGENTS.md

Guidance for autonomous coding agents operating in this Flutter repository.
This file is intentionally practical: copy-paste commands, conventions, and repo-specific rules.

## Project Snapshot

- App type: Flutter mobile app (Android + iOS UI variants).
- State management: Riverpod (`flutter_riverpod`, `riverpod_annotation`, generated providers).
- Routing: `go_router` with platform-specific route trees.
- Data modeling: `freezed` + `json_serializable`.
- Testing: Flutter widget tests (`flutter_test`).

## Repository Layout

- App entrypoint: `lib/main.dart`
- Routing config: `lib/config/routes.dart`
- DI/providers: `lib/config/di.dart`, `lib/riverpod/**`
- Models: `lib/models/**`
- Views (Android): `lib/views/android/**`
- Views (iOS): `lib/views/ios/**`
- Tests: `test/**`

## Setup Commands

- Install deps: `flutter pub get`
- Check outdated deps: `flutter pub outdated`
- Generate code once: `dart run build_runner build --delete-conflicting-outputs`
- Generate code in watch mode: `dart run build_runner watch --delete-conflicting-outputs`

## Build / Run Commands

- Run app (default device): `flutter run`
- Run in debug: `flutter run --debug`
- Run in release: `flutter run --release`
- Build Android APK: `flutter build apk`
- Build iOS (macOS only): `flutter build ios`

## Lint / Format / Analyze

- Static analysis: `flutter analyze`
- Format all Dart files: `dart format .`
- Check formatting only: `dart format --set-exit-if-changed .`
- Run custom lint plugin through analyzer: `flutter analyze` (custom_lint plugin is configured in `analysis_options.yaml`)

## Test Commands

- Run all tests: `flutter test`
- Run a single test file: `flutter test test/widget_test.dart`
- Run a single test by name: `flutter test test/widget_test.dart --plain-name "Counter increments smoke test"`
- Coverage run: `flutter test --coverage`

## Generated Code Workflow

- Generated artifacts include: `*.g.dart`, `*.freezed.dart`.
- Do not hand-edit generated files.
- After editing providers/models with annotations, regenerate with build_runner.
- If generation conflicts appear, use `--delete-conflicting-outputs`.

## Platform and UI Structure

- Keep Android widgets under `lib/views/android/**`.
- Keep iOS widgets under `lib/views/ios/**`.
- Route names/paths should stay aligned across both routers when feature parity is expected.
- In `main.dart`, platform branching determines app shell (`MaterialApp.router` vs `CupertinoApp.router`).

## Imports and File Organization

- Prefer package imports: `package:riverpod_counter_app/...` for internal files.
- Group imports by:
  1) Dart SDK imports
  2) Flutter/package imports
  3) project package imports
- Keep import aliases explicit when both platform variants are imported (see `routes.dart` with `as ios` / `as android`).
- One primary responsibility per file (model, provider, view, config).

## Formatting and Style

- Follow Dart formatter output; do not manually align code against formatter behavior.
- Keep widgets and provider logic readable with short methods and extracted helpers.
- Favor trailing commas where formatter expands multi-line widgets cleanly.
- Keep line length and spacing formatter-compliant.

## Types and State

- Use strong typing and explicit model types for async/data boundaries.
- Prefer `final` for immutable locals/fields.
- Use `const` constructors/widgets when possible.
- Riverpod providers should expose clear state contracts (`int`, `AsyncValue<T>`, etc.).
- Freezed models should define required fields unless nullability is intentional.

## Naming Conventions

- Classes/types: `UpperCamelCase` (`NumberTriviaModel`, `CounterView`).
- Variables/fields/methods: `lowerCamelCase` (`inputNumberController`, `getRandomNumberTrivia`).
- Constants: prefer Dart lowerCamelCase constants; existing all-caps constant (`API_URL`) is accepted for legacy consistency.
- File names: `snake_case.dart`.
- Provider files and generated part files must share base names.

## Error Handling Conventions

- Wrap async network calls in `try/catch` and convert failures into consistent provider state/errors.
- Existing pattern returns `Future.error(Map<String, dynamic>)`; keep payload shape stable if touching current flow:
  - `success` (bool)
  - `statusCode` (int, when available)
  - `message` (string)
- In UI, handle `AsyncValue` states (`data`, `loading`, `error`) explicitly.
- Never swallow exceptions silently.

## Riverpod Conventions

- Use `@riverpod` annotations for providers that require code generation.
- Keep provider side effects minimal and intentional.
- In widgets, use:
  - `ref.watch(...)` for reactive reads
  - `ref.read(...)` for one-off actions
  - `ref.listen(...)` for side effects (persistence, navigation, etc.)
- Ensure persisted state updates are synchronized with provider updates where needed.

## Model and Serialization Conventions

- Define DTO/domain models with `freezed` and JSON factory methods.
- Keep `fromJson` signature as `Map<String, dynamic>`.
- When API contracts change, update model + regenerate code in the same change set.

## Agent Execution Rules

- Before finalizing changes, run at least:
  - `dart format .`
  - `flutter analyze`
  - `flutter test` (or targeted test when scope is narrow)
- If you touched providers/models with annotations, also run build_runner.
- Prefer focused changes; avoid broad refactors unless requested.
- Preserve platform-specific UX differences unless task explicitly unifies behavior.

## Cursor / Copilot Rules

- `.cursor/rules/`: not present in this repository at time of writing.
- `.cursorrules`: not present in this repository at time of writing.
- `.github/copilot-instructions.md`: not present in this repository at time of writing.
- If any of these files are added later, treat them as higher-priority agent instructions and update this AGENTS.md.

## Quick Search Shortcuts

- Find providers: `rg -n "@riverpod|Provider" lib/riverpod lib/config`
- Find routes: `rg -n "GoRoute|GoRouter" lib/config lib/views`
- Find generated parts: `rg -n "part '.*\\.g\\.dart'|part '.*\\.freezed\\.dart'" lib`
- Find widget tests: `rg -n "testWidgets\(" test`

## Definition of Done

- Code is formatted and analyzer-clean.
- Tests pass for changed scope (single file test minimum, full suite preferred).
- Generated files are updated when annotations/models changed.
- No manual edits in generated files.
- Changes remain consistent with platform-specific routing and view structure.
