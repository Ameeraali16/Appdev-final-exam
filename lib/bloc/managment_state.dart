part of 'managment_bloc.dart';

@immutable
sealed class ManagmentState {}

 class dataInitial extends ManagmentState {}

 class dataLoading extends ManagmentState {}

 class dataLoaded extends ManagmentState{
  final List<DataModel> data;

  dataLoaded(this.data);
 }

 class dataError extends ManagmentState{
  final String message;
  dataError(this.message);
 }


