import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialog.dart';

Future<void> showCannotShareEmptyNoteDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: 'Sharing',
    content: "Can't share an empty note.",
    optionsBuilder: () => {
      'Okay': null,
    },
  ).then((value) => value ?? false);
}
