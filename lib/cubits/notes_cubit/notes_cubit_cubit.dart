import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_with_hive/constants.dart';
import 'package:notes_app_with_hive/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());




  fetchAllNotes()async{
    try {
      var notesBox = Hive.box(kNotesBox);
      List<NoteModel>? notes=notesBox.values.toList()as List<NoteModel>;

      
      emit(NotesCubitSuccess(notes));
    } on Exception catch (e) {
      emit ( NotesCubitFailure (e.toString()));
    }
  }

  }
