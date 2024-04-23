import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_with_hive/constants.dart';
import 'package:notes_app_with_hive/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());


  List<NoteModel>? notes;
fetchAllNotes() async {
  try {
    var notesBox =Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    print('lengthhhhhhhhhhhh ${notes!.length}');
  } catch (e) {
    print('Error fetching notes: $e');
  } finally {
    // Make sure to close the box after fetching the notes
  }
}}