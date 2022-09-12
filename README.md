# show_confirm_modal

Allows to display a simple confirmation modal with callback

## Installation

Run this command in your terminal:

```bash
flutter pub add show_confirm_modal
```

## Usage

```dart
import 'package:show_confirm_modal/show_confirm_modal.dart';

/// Minimal example
showConfirm(
    context: context,
    onCancel: () => print("Cancel"),
    onConfirm: () => print("Confirm"),
);

/// With custom title and message
showConfirm(
    context: context,
    title: Text("Title"),
    message: Text("Message"),
    onCancel: () => print("Cancel"),
    onConfirm: () => print("Confirm"),
);

/// Full example with custom buttons
showConfirm(
    context: context,
    title: Text("Title"),
    message: Text("Message"),
    cancel: Text("Cancel"),
    confirm: Text("Confirm"),
    onCancel: () => print("Cancel"),
    onConfirm: () => print("Confirm"),
);
```

