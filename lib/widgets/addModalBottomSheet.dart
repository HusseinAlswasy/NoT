import 'package:flutter/material.dart';
import 'package:nat/widgets/customButton.dart';
import 'package:nat/widgets/textField.dart';

class AddModalBottomSheet extends StatelessWidget {
  const AddModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            CustomTextFeild(
              hint: 'Add Note',
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFeild(
              hint: 'Add Title',
              maxLine: 5,
            ),
            const SizedBox(
              height: 60,
            ),
            const CustomButton(),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
