import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/cutom_button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> key = GlobalKey();

  // ---
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  // ---

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 35),
          CustomTextField(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 25),
          CustomTextField(
            hintText: 'Note',
            maxLines: 6,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(height: 45),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                text: 'Add',
                onTap: () {
                  if (key.currentState!.validate()) {
                    key.currentState!.save();

                    NoteModel noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date:
                          '${DateTime.now().day} - ${DateTime.now().month} - ${DateTime.now().year}',
                      color: Colors.amber.value,
                    );

                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(height: 55),
        ],
      ),
    );
  }
}
