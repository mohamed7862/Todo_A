import 'package:first_app_in_iti/Core/forms/updateTaskForm.dart';
import 'package:flutter/material.dart';

Future<void> showEditDialog({required BuildContext context, required String taskID}) {
  return showDialog(context: context, builder: (context) => Dialog(
    child: UpdateTaskForm(taskID: taskID),
  ));
}