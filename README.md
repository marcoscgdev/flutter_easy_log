# flutter_easy_log  [![Pub](https://img.shields.io/pub/v/flutter_easy_log.svg)](https://pub.dev/packages/flutter_easy_log)

An extremely easy-to-use logging library for Flutter.

## Getting Started

Here is a complete example of its use:

```dart
Log.d('My debug log'); // Debug log
Log.e('My error log'); // Error log
Log.i('My info log'); // Info log
Log.v('My verbose log'); // Verbose log
Log.w('My warning log'); // Warning log
Log.wtf('My WTF log'); // What a terrible failure log
```

![Simple logs](https://raw.githubusercontent.com/marcoscgdev/flutter_easy_log/master/screenshots/simple_logs.png)

You can also use tags to better identify your logs:

```dart
Log.i(tag: 'First button', 'Button clicked!');
```

And, of course, you can log anything you want:

```dart
Log.e(tag: 'Button click', Exception('My exception!'));
```

**As simple as that.**

## Configuration

The configuration affects the plugin globally, so you can add it in the ```main()``` function of your app.

### Show logs only in debug mode

This setting is enabled by default, but can be disabled with the following global parameter:

```dart
Log.debugOnly = false;
```

### Show date in logs

This setting is disabled by default, but can be enabled with the following global parameter:

```dart
Log.showDate = true;
```

![Full logs](https://raw.githubusercontent.com/marcoscgdev/flutter_easy_log/master/screenshots/full_logs.png)