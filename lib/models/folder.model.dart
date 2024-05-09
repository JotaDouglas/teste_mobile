class archiveModel{
  int nivel;
  String title;
  List<archiveModel> subArchive = [];

  archiveModel(
    this.nivel,
    this.title,
    this.subArchive
  );
}