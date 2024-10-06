import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nat/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:nat/models/note_model.dart';
import 'package:nat/widgets/customButton.dart';
import 'package:nat/widgets/textField.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextFeild(
            onSaved: (value) {
              title = value;
            },
            hint: 'Add Note',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFeild(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'Add Title',
            maxLine: 5,
          ),
          const SizedBox(
            height: 60,
          ),
          CustomButton(
            OnTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var note = NoteModel(
                  title: title!,
                  subtitle: subtitle!,
                  date: DateTime.now().toString(),
                  color: Colors.deepOrange.value,
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(note);
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
