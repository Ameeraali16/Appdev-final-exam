import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:q1/dataModel.dart';

part 'managment_event.dart';
part 'managment_state.dart';

class ManagmentBloc extends Bloc<ManagmentEvent, ManagmentState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  
  ManagmentBloc() : super(dataInitial()) {
    on<LoadData>((event, emit) async{
     emit(dataLoading());
     try {
      final QuerySnapshot snapshot = await _firestore
      .collection('Juice')
      .get();

      final data = snapshot.docs
      .map((doc) => DataModel.fromFirestore(doc)).toList();

      emit(dataLoaded(data));
     } catch (e){
      emit(dataError(e.toString()));
     }
    });
  }
}
