import 'package:first_app_in_iti/Core/nanigation/app_router.dart';
import 'package:first_app_in_iti/Core/style/apptheam.dart';
import 'package:first_app_in_iti/Featuers/home/presention/manger/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkspaceApp extends StatelessWidget {
  const WorkspaceApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => HomeCubit())],
      child: MaterialApp.router(
        title: 'Task Flow',
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.appRouter,
        theme: Apptheme.lightTheme,
      ),
    );
  }
}
