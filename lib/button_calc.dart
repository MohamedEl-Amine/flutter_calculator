// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:calculator/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ButtonExtentions extends StatefulWidget {
  String name;
  Function functionOrder;
  ButtonExtentions({required this.name, required this.functionOrder, Key? key})
      : super(key: key);

  @override
  State<ButtonExtentions> createState() => _ButtonExtentionsState();
}

class _ButtonExtentionsState extends State<ButtonExtentions> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.functionOrder();
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Provider.of<ThemeProvider>(context).themeMode ==
                      ThemeMode.dark
                  ? const Color.fromARGB(255, 138, 137, 137)
                  : const Color.fromARGB(248, 252, 252, 252),
              spreadRadius: 0.01,
              blurRadius: 0.2,
              offset: const Offset(0.1, -2),
            ),
            const BoxShadow(
              color: Color.fromARGB(137, 32, 32, 32),
              spreadRadius: 0.003,
              blurRadius: 4,
              offset: Offset(-1, 2),
            ),
            BoxShadow(
              color: Provider.of<ThemeProvider>(context).themeMode ==
                      ThemeMode.dark
                  ? const Color.fromRGBO(36, 52, 65, 1)
                  : const Color.fromARGB(248, 252, 252, 252),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            widget.name,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
