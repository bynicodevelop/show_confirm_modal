import 'package:flutter/material.dart';
import 'package:show_confirm_modal/components/dialogs/confirm/confirm_dialog_component.dart';

Future<T?> showConfirm<T>({
  required BuildContext context,
  String? title,
  String? content,
  String? cancelText,
  String? confirmText,
  required Function() onCancel,
  required Function() onConfirm,
}) =>
    showDialog(
      context: context,
      builder: (context) => ConfirmDialogComponent(
        title: title,
        content: content,
        cancelText: cancelText,
        confirmText: confirmText,
        onCancel: () {
          onCancel();

          Navigator.pop(context);
        },
        onConfirm: () {
          onConfirm();

          Navigator.pop(context);
        },
      ),
    );
