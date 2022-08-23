import 'package:airplanes/services/destination_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/destination_model.dart';

part 'destination_state.dart';

class DestinationCubit extends Cubit<DestinationState> {
  DestinationCubit() : super(DestinationInitial());

  void fetchDestinations() async {
    try {
      emit(DestinationLoading());

      List<DestinationModel> destinations =
          await DestinationService().fetchDestinations();

      emit(DestinationSuccess(destinations));
    } catch (e) {
      emit(DestinationFailed(e.toString()));
    }
  }

  void fetchDestinationsBestCategories() async {
    try {
      emit(DestinationLoading());

      List<DestinationModel> destinations =
          await DestinationService().fetchDestinationBestCategories();

      emit(DestinationSuccess(destinations));
    } catch (e) {
      emit(DestinationFailed(e.toString()));
    }
  }

  void fetchDestinationsNewCategories() async {
    try {
      emit(DestinationLoading());

      List<DestinationModel> destination =
          await DestinationService().fetchDestinationNewCategories();

      emit(DestinationSuccess(destination));
    } catch (e) {
      emit(DestinationFailed(e.toString()));
    }
  }
}
