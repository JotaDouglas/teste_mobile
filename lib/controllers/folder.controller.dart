import 'package:flutter/material.dart';
import 'package:teste_mobile/models/folder.model.dart';

class FolderController extends ChangeNotifier {
  List<archiveModel> pasta = [
    archiveModel(1, "Sector", []),
    archiveModel(0, "Área 1", []),
    archiveModel(2, "Motor 1", []),
    archiveModel(3, "Sensor 1", []),
    archiveModel(3, "Sensor 2", []),
    archiveModel(2, "Motor 2", []),
    archiveModel(3, "Sensor 1", []),
    archiveModel(3, "Sensor 2", []),
    archiveModel(0, "Área 2", []),
    archiveModel(2, "Motor 1", []),
    archiveModel(3, "Sensor 1", []),
    archiveModel(3, "Sensor 2", [])
  ];
  
}
