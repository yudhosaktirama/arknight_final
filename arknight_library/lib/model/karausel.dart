class EventPreview {
  String gambar;
  String judul;
  String deskripsi;

  EventPreview(
      {required this.gambar, required this.deskripsi, required this.judul});
}

class FeatureOperator {
  String gambarOperator;
  String deskripsi;
  String iconOperator;
  String rarity;
  String namaOperator;

  FeatureOperator(
      {required this.deskripsi,
      required this.gambarOperator,
      required this.iconOperator,
      required this.namaOperator,
      required this.rarity});
}

class FeatureEnemy {
  String gambar;
  String icon;
  String deskripsi;
  String endurance;
  String Attack;
  String Defense;
  String Resistence;
  String Nama;
  List<String> modeKemunculan;
  List<String> kemunculan;

  FeatureEnemy(
      {required this.Attack,
      required this.Defense,
      required this.Resistence,
      required this.deskripsi,
      required this.endurance,
      required this.gambar,
      required this.icon,
      required this.Nama,
      required this.modeKemunculan,
      required this.kemunculan});
}

class MainMenu {
  String gambar;
  String judul;

  MainMenu({required this.gambar, required this.judul});
}

class OperatorClass {
  String gambarCover;
  String gambarClass;
  String namaClass;

  OperatorClass({
    required this.gambarCover,
    required this.gambarClass,
    required this.namaClass,
  });
}

class OperatorTierlistSelection {
  String tier;
  String deskripsi;
  String gambar;

  OperatorTierlistSelection(
      {required this.deskripsi, required this.gambar, required this.tier});
}
