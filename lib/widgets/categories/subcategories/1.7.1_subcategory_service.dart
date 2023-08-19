import 'package:flutter/material.dart';

import '../../1.0_sarafan_main_screen.dart';

// Фрейм 1.7.1

class SubcategorySaloons extends StatelessWidget {
  const SubcategorySaloons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // Функция заголовка
          titleTextStyle: const TextStyle(
            color: Color.fromRGBO(16, 35, 100, 1),
            fontWeight: FontWeight.w600,
            fontSize: 18,
            fontFamily: 'Futura',
          ),
          elevation: 0,
          centerTitle: true,
          title: const Text('Subcategory'),
          backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
          iconTheme: const IconThemeData(
            color: Color.fromRGBO(108, 130, 209, 1),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
                Icons.arrow_back_outlined), // Кнопка-иконка вернуться назад
          )),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: const SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 16),
                _SelectSaloon(),
                SizedBox(height: 20),
                _DropdownSelectCity(),
                SizedBox(height: 10),
                _DropdownSelectSaloon(),
                SizedBox(height: 15),
                _SaloonMapTxt(),
                SizedBox(height: 15),
                _SaloonMapFake(),
                SizedBox(height: 100),
                _ButtonLastStep4(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SelectSaloon extends StatelessWidget {
  const _SelectSaloon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Выберите салон',
      style: TextStyle(
        fontFamily: 'Futura',
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Color.fromRGBO(123, 133, 167, 1),
      ),
    );
  }
}

class _DropdownSelectCity extends StatefulWidget {
  const _DropdownSelectCity({Key? key}) : super(key: key);

  @override
  _DropdownSelectCityState createState() => _DropdownSelectCityState();
}

class _DropdownSelectCityState extends State<_DropdownSelectCity> {
  String dropdownCity = 'NewYork';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromRGBO(230, 235, 255, 1),
      ),
      child: DropdownButtonFormField(
        hint: const Text('Выберите город'),
        items: <String>['NewYork', 'Moscow', 'Rome', 'Madrid']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(fontSize: 14),
            ),
          );
        }).toList(),
        borderRadius: BorderRadius.circular(15),
        dropdownColor: const Color.fromRGBO(186, 200, 249, 1),
        value: dropdownCity,
        onChanged: (String? newValue) {
          setState(() {
            dropdownCity = newValue!;
          });
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          filled: true,
          fillColor: const Color.fromRGBO(230, 235, 255, 1),
          hintStyle: const TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(186, 200, 249, 1),
            fontFamily: 'Futura',
          ),
          hintText: 'Выберите салон',
          contentPadding: const EdgeInsets.only(
              left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}

class _DropdownSelectSaloon extends StatefulWidget {
  const _DropdownSelectSaloon({Key? key}) : super(key: key);

  @override
  _DropdownSelectSaloonState createState() => _DropdownSelectSaloonState();
}

String dropdownSaloon = 'Bohemia';

class _DropdownSelectSaloonState extends State<_DropdownSelectSaloon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromRGBO(230, 235, 255, 1),
      ),
      child: DropdownButtonFormField(
        hint: const Text('Выьерите салон'),
        items: <String>['Bohemia', 'Lilly', 'Preferance', 'BeautyVox']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(fontSize: 14),
            ),
          );
        }).toList(),
        borderRadius: BorderRadius.circular(15),
        dropdownColor: const Color.fromRGBO(186, 200, 249, 1),
        value: dropdownSaloon,
        onChanged: (String? newValue) {
          setState(() {
            dropdownSaloon = newValue!;
          });
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          filled: true,
          fillColor: const Color.fromRGBO(230, 235, 255, 1),
          hintStyle: const TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(186, 200, 249, 1),
            fontFamily: 'Futura',
          ),
          hintText: 'Выберите салон',
          contentPadding: const EdgeInsets.only(
              left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}

class _SaloonMapTxt extends StatelessWidget {
  const _SaloonMapTxt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Салон на карте',
      style: TextStyle(
        fontFamily: 'Futura',
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Color.fromRGBO(123, 133, 167, 1),
      ),
    );
  }
}

// ЗАТЫЧКА! Прикрутить карту с мака
class _SaloonMapFake extends StatelessWidget {
  const _SaloonMapFake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Image.asset('assets/images/map_plug.png'));
  }
}

class _ButtonLastStep4 extends StatelessWidget {
  const _ButtonLastStep4({Key? key}) : super(key: key);

  get elevation => null;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(0),
        fixedSize: const MaterialStatePropertyAll(
          Size(355, 48),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          Color.fromRGBO(186, 200, 249, 1),
        ),
        textStyle: const MaterialStatePropertyAll(
          TextStyle(fontSize: 16),
        ),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
      ),
      child: const Text(
          style: TextStyle(
            fontFamily: 'Futura',
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(16, 35, 100, 1),
          ),
          'Следующий шаг'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const SarafanMainScreen(), // Переход в главное меню
          ),
        );
      },
    );
  }
}
