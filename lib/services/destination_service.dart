import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/destination_model.dart';

class DestinationService {
  CollectionReference _destinationRef =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> fetchDestinations() async {
    try {
      QuerySnapshot result = await _destinationRef.get();

      List<DestinationModel> destinations = result.docs.map((e) {
        return DestinationModel.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();

      return destinations;
    } catch (e) {
      throw e;
    }
  }

  Future<List<DestinationModel>> fetchDestinationBestCategories() async {
    try {
      QuerySnapshot destination =
          await _destinationRef.where('category', isEqualTo: 'best').get();

      List<DestinationModel> destinations = destination.docs.map((e) {
        return DestinationModel.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();
      return destinations;
    } catch (e) {
      throw e;
    }
  }

  Future<List<DestinationModel>> fetchDestinationNewCategories() async {
    try {
      QuerySnapshot destination =
          await _destinationRef.where('category', isEqualTo: 'new').get();

      List<DestinationModel> destinations = destination.docs.map((e) {
        return DestinationModel.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();
      return destinations;
    } catch (e) {
      throw e;
    }
  }
}
