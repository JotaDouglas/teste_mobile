import 'package:flutter/material.dart';
import 'package:teste_mobile/models/folder.model.dart';

class FolderWidgets {
  static acesso(Size screen, archiveModel archive, BuildContext context) {
    if (archive.nivel == 1) {
      return _setor(screen: screen, titleSetor: archive.title);
    }
    if (archive.nivel == 0) {
      return _area(screen: screen, titleArea: archive.title);
    }
    if (archive.nivel == 2) {
      return _conjunto(
          screen: screen, titleConjunto: archive.title);
    }
    if (archive.nivel == 3) {
      return _equipamneto(screen: screen, titleEquipamento: archive.title);
    }
  }

  static _area({required Size screen, required String titleArea}) {
    return Padding(
      padding: EdgeInsets.only(
          left: screen.width * 0.15, bottom: screen.height * 0.01),
      child: Column(
        children: [
          Row(children: [
            const Icon(Icons.folder_outlined),
            SizedBox(
              width: screen.width * 0.03,
            ),
            Text(
              titleArea,
              style: const TextStyle(color: Colors.black, fontSize: 22),
            ),
          ])
        ],
      ),
    );
  }

  static _setor({
    required Size screen,
    required String titleSetor,
  }) {
    return Padding(
      padding: EdgeInsets.only(
          left: screen.width * 0.05, bottom: screen.height * 0.01),
      child: Column(
        children: [
          Row(children: [
            const Icon(Icons.folder_outlined),
            SizedBox(
              width: screen.width * 0.03,
            ),
            Text(
              titleSetor,
              style: const TextStyle(color: Colors.black, fontSize: 22),
            ),
          ]),
        ],
      ),
    );
  }

  static _conjunto({
    required Size screen,
    required String titleConjunto,
  }) {
    return Padding(
      padding: EdgeInsets.only(
          left: screen.width * 0.25, bottom: screen.height * 0.01),
      child: Column(
        children: [
          Row(children: [
            const Icon(Icons.folder_outlined),
            SizedBox(
              width: screen.width * 0.03,
            ),
            Text(
              titleConjunto,
              style: const TextStyle(color: Colors.black, fontSize: 22),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit_outlined,
                  color: Colors.pink,
                ))
          ]),
        ],
      ),
    );
  }

  static _equipamneto({
    required Size screen,
    required String titleEquipamento,
  }) {
    return Padding(
      padding: EdgeInsets.only(
          left: screen.width * 0.35, bottom: screen.height * 0.01),
      child: Column(
        children: [
          Row(children: [
            const Icon(
              Icons.sensors_sharp,
              size: 30,
            ),
            SizedBox(
              width: screen.width * 0.03,
            ),
            Text(
              titleEquipamento,
              style: const TextStyle(color: Colors.black, fontSize: 22),
            ),
          ]),
        ],
      ),
    );
  }
}
