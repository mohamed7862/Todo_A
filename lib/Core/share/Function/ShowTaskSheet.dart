import 'package:first_app_in_iti/Core/forms/taskform.dart';
import 'package:first_app_in_iti/Core/style/colormangment.dart';
import 'package:first_app_in_iti/Featuers/home/presention/manger/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// اتأكد من استيراد مسار الـ HomeCubit عندك

Future<void> ShowTaskSheet(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: ColorManager.BrandPrimaryBackground,
    isDismissible: false,
    context: context,
    builder: (_) => BlocProvider.value(
      value: BlocProvider.of<HomeCubit>(context),
      child: TaskForm(),
    ),
  );
}
