import 'package:hive/hive.dart';

part 'disease_model.g.dart';

@HiveType(typeId: 0)
class Disease extends HiveObject {
  final String name;
  @HiveField(0)
  late String namaPenyakit;

  @HiveField(1)
  late String possibleCauses;

  @HiveField(2)
  late String possibleSolution;

  @HiveField(3)
  late String imagePath;

  @HiveField(4)
  late DateTime dateTime;

  Disease({required this.name, required this.imagePath}) {
    dateTime = DateTime.now();

    switch (name) {
      case "Pepper Bell Bacterial Spot":
        namaPenyakit = "BrownSpot";
        possibleCauses = "Disebabkan oleh jamur patogen Bipolaris oryzae.";
        possibleSolution =
            "Pemangkasan bagian tanaman yang terinfeksi dapat membantu menghentikan penyebaran spora jamur ke tanaman lain. Gunakan fungisida tertentu dapat membantu mengendalikan pertumbuhan jamur penyebab brownspot.";
        break;

      case "Pepper Bell Healthy":
        namaPenyakit = "";
        possibleCauses = "Crops are okay.";
        possibleSolution = "N/A";
        break;

      case "Potato Early Blight":
        namaPenyakit = "Blast";
        possibleCauses = "Infeksi jamur Magnaporthe oryzae.";
        possibleSolution =
            "Pemangkasan bagian tanaman yang terinfeksi dapat membantu menghentikan penyebaran spora jamur ke tanaman lain. Gunakan fungisida tertentu dapat membantu mengendalikan pertumbuhan jamur penyebab blast.";
        break;

      case "Potato Healthy":
        namaPenyakit = "Padi Sehat";
        possibleCauses = "Padi Sehat.";
        possibleSolution = "Padi Sehat";
        break;

      case "Potato Late Blight":
        namaPenyakit = "Bacterialblight";
        possibleCauses =
            "Disebabkan oleh bakteri Xanthomonas oryzae pv. oryzae.";
        possibleSolution =
            "Atur pola irigasi sedemikian rupa untuk menghindari genangan air yang berlebihan, karena kelebihan air dapat meningkatkan risiko penyakit Bacterial Blight.";
        break;

      case "Tomato Bacterial Spot":
        namaPenyakit = "Brownspot";
        possibleCauses = "Disebabkan oleh jamur patogen Bipolaris oryzae.";
        possibleSolution =
            "Jangan menanam padi secara berurutan di lahan yang sama. Gantilah dengan tanaman lain dalam sistem rotasi tanaman.";
        break;

      case "Tomato Early Blight":
        namaPenyakit = "Bacterialblight";
        possibleCauses =
            "Disebabkan oleh bakteri Xanthomonas oryzae pv. oryzae.";
        possibleSolution =
            "Atur pola irigasi sedemikian rupa untuk menghindari genangan air yang berlebihan, karena kelebihan air dapat meningkatkan risiko penyakit Bacterial Blight.";
        break;

      case "Tomato Healthy":
        namaPenyakit = "Padi Sehat";
        possibleCauses = "Padi Sehat.";
        possibleSolution = "Padi Sehat";
        break;

      case "Tomato Late Blight":
        namaPenyakit = "Bacterialblight";
        possibleCauses =
            "Disebabkan oleh bakteri Xanthomonas oryzae pv. oryzae.";
        possibleSolution =
            "Atur pola irigasi sedemikian rupa untuk menghindari genangan air yang berlebihan, karena kelebihan air dapat meningkatkan risiko penyakit Bacterial Blight";
        break;

      case "Tomato Leaf Mold":
        namaPenyakit = "Blast";
        possibleCauses = "Infeksi jamur Magnaporthe oryzae.";
        possibleSolution =
            "Pemangkasan bagian tanaman yang terinfeksi dapat membantu menghentikan penyebaran spora jamur ke tanaman lain. Gunakan fungisida tertentu dapat membantu mengendalikan pertumbuhan jamur penyebab blast.";
        break;

      case "Tomato Septoria Leaf Spot":
        namaPenyakit = "Brownspot";
        possibleCauses = "Disebabkan oleh jamur patogen Bipolaris oryzae.";
        possibleSolution =
            "Jangan menanam padi secara berurutan di lahan yang sama. Gantilah dengan tanaman lain dalam sistem rotasi tanaman.";
        break;

      case "Tomato Spotted Spider Mites":
        namaPenyakit = "Brownspot";
        possibleCauses = "Disebabkan oleh jamur patogen Bipolaris oryzae.";
        possibleSolution =
            "Jangan menanam padi secara berurutan di lahan yang sama. Gantilah dengan tanaman lain dalam sistem rotasi tanaman.";
        break;

      case "Tomato Target Spot":
        namaPenyakit = "Brownspot";
        possibleCauses = "Disebabkan oleh jamur patogen Bipolaris oryzae.";
        possibleSolution =
            "Jangan menanam padi secara berurutan di lahan yang sama. Gantilah dengan tanaman lain dalam sistem rotasi tanaman.";
        break;

      case "Tomato Mosaic Virus":
        namaPenyakit = "Tungro";
        possibleCauses =
            "Padi diserang serangga wereng coklat (Nilaparvata lugens) yang terinfeksi virus Tungro.";
        possibleSolution =
            "Lakukan pemangkasan dan pembersihan sisa-sisa tanaman setelah panen untuk mengurangi tempat persembunyian wereng. Dan semprotkan insektisida ramah lingkungan secara berkala.";
        break;

      case "Tomato Yellow Leaf Curl Virus":
        namaPenyakit = "Tungro";
        possibleCauses =
            "Padi diserang serangga wereng coklat (Nilaparvata lugens) yang terinfeksi virus Tungro.";
        possibleSolution =
            "Lakukan pemangkasan dan pembersihan sisa-sisa tanaman setelah panen untuk mengurangi tempat persembunyian wereng. Dan semprotkan insektisida ramah lingkungan secara berkala.";
        break;

      default:
        namaPenyakit = "N/A";
        possibleCauses = "N/A";
        possibleSolution = "N/A";
        break;
    }
  }
}
