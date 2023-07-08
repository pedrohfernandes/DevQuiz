import 'package:devquiz/challenge/widgets/answer/answer_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              title,
              style: AppTextStyles.heading,
            ),
            SizedBox(
              height: 24,
            ),
            AnswerWidget(
              isRight: true,
              isSelected: true,
              title:
                  "Testando um texto aleatório enquanto eu digito sem olhar pro teclado",
            ),
            AnswerWidget(
              isRight: false,
              isSelected: true,
              title:
                  "Testando um texto aleatório enquanto eu digito sem olhar pro teclado",
            ),
            AnswerWidget(
              title:
                  "Testando um texto aleatório enquanto eu digito sem olhar pro teclado",
            ),
            AnswerWidget(
              title:
                  "Testando um texto aleatório enquanto eu digito sem olhar pro teclado",
            ),
            AnswerWidget(
              title:
                  "Testando um texto aleatório enquanto eu digito sem olhar pro teclado",
            ),
          ],
        ),
      ),
    );
  }
}
