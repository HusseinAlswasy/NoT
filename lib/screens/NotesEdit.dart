import 'package:flutter/material.dart';
import 'package:nat/widgets/appBarview.dart';
import 'package:nat/widgets/customButton.dart';
import 'package:nat/widgets/textField.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              CustomAppBar(
                nameAppBar: 'Edit',
                icon: Icons.edit,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFeild(
                hint: 'Edit Note',
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFeild(
                hint: 'Edit Title',
                maxLine: 5,
              ),
              const SizedBox(
                height: 300,
              ),
              CustomButton(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
