import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nat/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:nat/cubits/add_note_cubit/add_note_state.dart';
import 'package:nat/widgets/addNoteForm.dart';
import 'package:nat/widgets/customButton.dart';
import 'package:nat/widgets/textField.dart';

class AddModalBottomSheet extends StatelessWidget {
  const AddModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailuer) {
              print('Failed ${state.error}');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              child: AddNoteForm(),
              inAsyncCall: state is AddNoteLoading ? true : false,
            );
          },
        ),
      ),
    );
  }
}
