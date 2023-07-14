import 'package:devquiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String quizTitle;
  final int quizLength;
  final int quizRightAnswers;

  const ResultPage({
    super.key,
    required this.quizTitle,
    required this.quizLength,
    required this.quizRightAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 68),
          child: SafeArea(
            top: true,
            bottom: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.trophy),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Parabéns!",
                      style: AppTextStyles.heading40,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "Você concluiu",
                        style: AppTextStyles.body,
                        children: [
                          TextSpan(
                            text: "\n$quizTitle",
                            style: AppTextStyles.bodyBold,
                          ),
                          TextSpan(
                            text:
                                "\ncom $quizRightAnswers de $quizLength acertos",
                            style: AppTextStyles.body,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: NextButtonWidget.share(
                            label: "Compartilhar",
                            onTap: () {
                              Share.share(
                                  "DevQuiz: Obtive ${((quizRightAnswers * 100) / quizLength).toStringAsPrecision(3)}% de aproveitamento no quiz '$quizTitle'");
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: NextButtonWidget.transparent(
                            label: "Voltar ao início",
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
