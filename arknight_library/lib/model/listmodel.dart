import 'package:arknight_library/model/karausel.dart';

class ListItem {
  List<MainMenu> cobamain = [
    MainMenu(
        gambar: "https://cdn-icons-png.flaticon.com/512/1603/1603847.png",
        judul: "Tier List"),
    MainMenu(
        gambar: "https://cdn-icons-png.flaticon.com/512/1603/1603847.png",
        judul: "Operator List"),
    MainMenu(
        gambar: "https://cdn-icons-png.flaticon.com/512/1603/1603847.png",
        judul: "SpotLight"),
    MainMenu(
        gambar: "https://cdn-icons-png.flaticon.com/512/1603/1603847.png",
        judul: "Farming Guide"),
    MainMenu(
        gambar: "https://cdn-icons-png.flaticon.com/512/1603/1603847.png",
        judul: "CN Event"),
    MainMenu(
        gambar: "https://cdn-icons-png.flaticon.com/512/1603/1603847.png",
        judul: "RI Base Skill")
  ];

  List<OperatorClass> operatorClass = [
    OperatorClass(
        gambarCover:
            "https://otakuusamagazine.com/wp-content/uploads/2021/05/arknights-ep8-4.jpg",
        gambarClass:
            'https://raw.githubusercontent.com/Aceship/Arknight-Images/main/classes/class_guard.png',
        namaClass: "Guard"),
    OperatorClass(
        gambarCover:
            "https://gamebrott.com/wp-content/uploads/2023/05/Arknights-Tier-List-7.jpg",
        gambarClass:
            'https://raw.githubusercontent.com/Aceship/Arknight-Images/main/classes/class_medic.png',
        namaClass: "Medic"),
    OperatorClass(
        gambarCover:
            "https://gamerwk.sgp1.cdn.digitaloceanspaces.com/2023/05/Texas-Alter-Global.jpg",
        gambarClass:
            'https://raw.githubusercontent.com/Aceship/Arknight-Images/main/classes/class_specialist.png',
        namaClass: "Specialist"),
    OperatorClass(
        gambarCover: "https://images7.alphacoders.com/108/1080104.jpg",
        gambarClass:
            'https://raw.githubusercontent.com/Aceship/Arknight-Images/main/classes/class_defender.png',
        namaClass: "Defender"),
    OperatorClass(
        gambarCover: "https://images7.alphacoders.com/119/1191874.png",
        gambarClass:
            'https://raw.githubusercontent.com/Aceship/Arknight-Images/main/classes/class_sniper.png',
        namaClass: "Sniper"),
    OperatorClass(
        gambarCover:
            "https://static.zerochan.net/Gnosis.%28Arknights%29.full.3871151.jpg",
        gambarClass:
            'https://raw.githubusercontent.com/Aceship/Arknight-Images/main/classes/class_supporter.png',
        namaClass: "Supporter"),
    OperatorClass(
        gambarCover: "https://images3.alphacoders.com/113/1139476.jpg",
        gambarClass:
            'https://static.wikia.nocookie.net/mrfz/images/e/e6/Caster.png/revision/latest/zoom-crop/width/500/height/500?cb=20210821062333',
        namaClass: "Caster"),
    OperatorClass(
        gambarCover: "https://images7.alphacoders.com/113/1136846.jpg",
        gambarClass:
            'https://raw.githubusercontent.com/Aceship/Arknight-Images/main/classes/class_vanguard.png',
        namaClass: "Vanguard")
  ];

  List<OperatorTierlistSelection> operatorTierListSelection = [
    OperatorTierlistSelection(
        deskripsi:
            "These are the best operators in Arknights in the current meta. They are overpowered and pretty much good at clearing any content. You should invest in these characters as soon as possible.",
        gambar:
            "https://image.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/429b6b9b-c1b3-4e54-74d1-dc51e5c23100/width=1200/429b6b9b-c1b3-4e54-74d1-dc51e5c23100.jpeg",
        tier: "0"),
    OperatorTierlistSelection(
        deskripsi:
            "These are also excellent Arknights characters. While not as powerful as the S-tier ones, they are still able to clear most content easily.",
        gambar: "https://images.alphacoders.com/128/1289111.jpg",
        tier: "1"),
    OperatorTierlistSelection(
        deskripsi:
            "Not great, not bad also. Play with them only if you don’t have anything else to substitute within your team.",
        gambar:
            "https://i.pinimg.com/736x/c2/7d/3e/c27d3e5ee644f6900d6f87e5fbf47a76.jpg",
        tier: "2"),
    OperatorTierlistSelection(
        deskripsi:
            "Not really worth investing in these Arknights heroes, unless you literally have nothing else, and even then you should save your resources for other characters.",
        gambar: "https://images.alphacoders.com/128/1287199.jpg",
        tier: "3"),
  ];

  List<MaterialSelection> materialselection = [
    MaterialSelection(
        deskripsi: "Material Tier 1 ini sangat mudah untuk didapatkan",
        gambar: [
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/30.png",
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/29.png",
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/28.png",
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/27.png"
        ],
        tier: "Tier 1"),
    MaterialSelection(
        deskripsi: "Material Tier 2 ini masih tergolong mudah untuk didapatkan",
        gambar: [
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/24.png",
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/23.png",
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/22.png",
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/21.png"
        ],
        tier: "Tier 2"),
    MaterialSelection(
        deskripsi:
            "Material Tier 3 ini sudah tergolong susah untuk didapatkan melalui stage kecuali pada stage event atau stage atas",
        gambar: [
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/63.png",
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/31.png",
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/61.png",
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/34.png"
        ],
        tier: "Tier 3"),
    MaterialSelection(
        deskripsi:
            "Material Tier 4 ini hampir mustahil untuk didapatkan melalui stage biasa,craft menjadi solusi untuk mendapatkan material ini mudah",
        gambar: [
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/64.png",
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/62.png",
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/7.png",
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/6.png"
        ],
        tier: "Tier 4"),
    MaterialSelection(
        deskripsi:
            "Material Tier 5 ini hanya bisa didapatkan melalui craft saja",
        gambar: [
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/0.png",
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/1.png",
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/2.png",
          "https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/65.png"
        ],
        tier: "Tier 5")
  ];
}
