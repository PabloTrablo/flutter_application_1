import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../1.5_main_online_entry.dart';

// 1.6.9 Нажали "Оставить отзыв" после записи на слуги
class GetFeedback extends StatelessWidget {
  const GetFeedback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          // Функция заголовка
          titleTextStyle: const TextStyle(
            color: Color.fromRGBO(16, 35, 100, 1),
            fontWeight: FontWeight.w500,
            fontSize: 18,
            fontFamily: 'Futura',
          ),
          elevation: 1,
          centerTitle: true,
          // Заголовок зависит от выбранной категории
          title: const Text(
            'Оставить отзыв',
            style: TextStyle(
              fontFamily: 'Futura',
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(16, 35, 100, 1),
            ),
          ),
          backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
          iconTheme: const IconThemeData(
            color: Color.fromRGBO(108, 130, 209, 1),
          ),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
              child: Column(children: [
            const SizedBox(height: 16),
            const CircleAvatar(
              radius: 50,
              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
              backgroundImage: AssetImage('assets/icons/client_face_test.png'),
            ),
            const SizedBox(height: 16),
            const Text('Master *****, Saloon ****',
                style: TextStyle(
                    color: Color.fromRGBO(16, 35, 100, 1),
                    fontSize: 18,
                    fontFamily: 'Futura',
                    fontWeight: FontWeight.w500)),
            const SizedBox(height: 26),
            const Text('Как вам работа мастера?',
                style: TextStyle(
                    color: Color.fromRGBO(123, 133, 167, 1),
                    fontSize: 18,
                    fontFamily: 'Futura',
                    fontWeight: FontWeight.w500)),
            const SizedBox(height: 16),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            const SizedBox(height: 16),
            Container(
              width: 355,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(230, 235, 255, 1),
              ),
              child: const TextField(
                maxLines: null,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(123, 133, 167, 1),
                    fontFamily: 'Futura',
                  ),
                  hintText: 'Ваш отзыв',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(
                      left: 16, top: 13.5, right: 16, bottom: 13.5),
                ),
              ),
            ),
            const SizedBox(height: 200),
            ElevatedButton(
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
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
              ),
              child: const Text(
                  style: TextStyle(
                    fontFamily: 'Futura',
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(16, 35, 100, 1),
                  ),
                  'Сохранить'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const MainFrameCategory(), // Переход к следующему этапу регистрации
                  ),
                );
              },
            ),
          ])),
        ));
  }
}
