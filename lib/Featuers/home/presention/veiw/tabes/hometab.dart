import 'package:first_app_in_iti/Core/share/Function/show_fail_dialog.dart';
import 'package:first_app_in_iti/Core/share/taskitem.dart';
import 'package:first_app_in_iti/Core/style/colormangment.dart';
import 'package:first_app_in_iti/Core/style/textstylemanger.dart';
import 'package:first_app_in_iti/Core/utilis/units.dart';
import 'package:first_app_in_iti/Featuers/home/presention/manger/home_cubit.dart';
import 'package:first_app_in_iti/Featuers/home/presention/manger/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().getTask();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previos, current) =>
          (current is InitialTaskGettingState ||
          current is LoadingTaskGettingState ||
          current is SuccessTaskGettingState ||
          current is FailureTaskGettingState),
      builder: (context, state) {
        if (state is LoadingTaskGettingState) {
          return Center(
            child: CircularProgressIndicator(
              color: ColorManager.BrandPrimaryDefault,
            ),
          );
        }

        if (state is SuccessTaskGettingState) {
          final tasks = state.tasks;

          if (tasks.isEmpty) {
            return Center(
              child: Text(
                'No tasks available',
                style: TextStyleManager.textStyleNeutralGhostR16(context),
              ),
            );
          }

          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Units.getHeight(context: context, value: 20),
            ),
            child: ListView.separated(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Taskitem(tasks: tasks[index]);
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: Units.getWidth(context: context, value: 10),
                );
              },
            ),
          );
        }
        if (state is FailureTaskGettingState) {
          showFailDialog(context: context, failMessage: state.errorMessage);
        }

        return const SizedBox();
      },
    );
  }
}
