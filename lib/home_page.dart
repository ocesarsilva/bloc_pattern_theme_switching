import 'package:bloc_pattern_theme_switching/theme_switcher_bloc.dart';
import 'package:bloc_pattern_theme_switching/theme_switcher_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<ThemeSwitcherBloc, ThemeData>(
            builder: (context, state) {
          return CupertinoSwitch(
            value: state == ThemeData.dark(),
            onChanged: (bool val) {
              context.read<ThemeSwitcherBloc>().add(ThemeSwitching());
            },
          );
        }),
      ),
    );
  }
}
