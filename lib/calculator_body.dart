// ignore: unused_import
import 'dart:math';
import 'package:calculator/button_calc.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorBody extends StatefulWidget {
  const CalculatorBody({Key? key}) : super(key: key);

  @override
  State<CalculatorBody> createState() => _CalculatorBodyState();
}

class _CalculatorBodyState extends State<CalculatorBody> {
  String result = "0";
  String expression = "0";
// .interpret()
  addString(value) {
    if (expression == '0') {
      expression = '';
    }
    expression += value;
    setState(() {
      expression;
    });
  }

  removeAll() {
    setState(() {
      expression = '0';
      result = '0';
    });
  }

  removeString() {
    if (expression.isNotEmpty) {
      expression = expression.substring(0, expression.length - 1);
    }
    if (expression == '') {
      expression = '0';
    }
    setState(() {
      expression;
    });
  }

  calculate() {
    var resultexp = expression.interpret();
    setState(() {
      result = resultexp.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topRight,
            child: Text(
              result,
              style: const TextStyle(fontSize: 70),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topRight,
            child: Text(
              expression,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ButtonExtentions(
                  functionOrder: () {
                    removeAll();
                  },
                  name: 'AC',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ButtonExtentions(
                  functionOrder: () {
                    removeString();
                  },
                  name: 'Return',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ButtonExtentions(
                  name: '%',
                  functionOrder: () {
                    addString('%');
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ButtonExtentions(
                  functionOrder: () {
                    addString('/');
                  },
                  name: '/',
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ButtonExtentions(
                  functionOrder: () {
                    addString('7');
                  },
                  name: '7',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ButtonExtentions(
                  name: '8',
                  functionOrder: () {
                    addString('8');
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ButtonExtentions(
                  name: '9',
                  functionOrder: () {
                    addString('9');
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ButtonExtentions(
                  functionOrder: () {
                    addString('*');
                  },
                  name: '*',
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ButtonExtentions(
                  name: '4',
                  functionOrder: () {
                    addString('4');
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ButtonExtentions(
                  name: '5',
                  functionOrder: () {
                    addString('5');
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ButtonExtentions(
                  name: '6',
                  functionOrder: () {
                    addString('6');
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ButtonExtentions(
                  name: '-',
                  functionOrder: () {
                    addString('-');
                  },
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ButtonExtentions(
                  name: '1',
                  functionOrder: () {
                    addString('1');
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ButtonExtentions(
                  name: '2',
                  functionOrder: () {
                    addString('2');
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ButtonExtentions(
                  name: '3',
                  functionOrder: () {
                    addString('3');
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ButtonExtentions(
                  name: '+',
                  functionOrder: () {
                    addString('+');
                  },
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ButtonExtentions(
                  name: '0',
                  functionOrder: () {
                    addString('0');
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ButtonExtentions(
                  name: '.',
                  functionOrder: () {
                    addString('.');
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 2,
                child: ButtonExtentions(
                  name: '=',
                  functionOrder: () {
                    calculate();
                  },
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
