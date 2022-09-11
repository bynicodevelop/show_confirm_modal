import 'package:flutter/material.dart';

class ConfirmDialogComponent extends StatelessWidget {
  final String? title;
  final String? content;
  final String? cancelText;
  final String? confirmText;
  final Function()? onCancel;
  final Function()? onConfirm;

  const ConfirmDialogComponent({
    Key? key,
    required this.title,
    required this.content,
    required this.cancelText,
    required this.confirmText,
    required this.onCancel,
    required this.onConfirm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title ?? "Confirm"),
      content: Text(content ?? "Are you sure?"),
      actions: [
        TextButton(
          onPressed: onCancel,
          child: Text(cancelText ?? "Cancel"),
        ),
        TextButton(
          onPressed: onConfirm,
          child: Text(confirmText ?? "Confirm"),
        ),
      ],
    );
  }
}
