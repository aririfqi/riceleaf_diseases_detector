import 'dart:io';

import 'package:flutter/material.dart';
import 'package:plant_disease_detector/styles/constants.dart';
import 'package:plant_disease_detector/services/disease_provider.dart';
import 'package:plant_disease_detector/src/home_page/models/disease_model.dart';
import 'package:plant_disease_detector/src/suggestions_page/components/plant_image.dart';
import 'package:plant_disease_detector/src/suggestions_page/components/text_property.dart';
import 'package:provider/provider.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({Key? key}) : super(key: key);

  static const routeName = '/suggestions';

  @override
  Widget build(BuildContext context) {
    // Get disease from provider
    final _diseaseService = Provider.of<DiseaseService>(context);

    Disease _disease = _diseaseService.disease;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMain,
        title: const Text('\t\tHasil Deteksi'),
      ),
      body: Padding(
        padding: EdgeInsets.all((0.02 * size.height)),
        child: Column(
          children: [
            Flexible(
                child: Center(
                    child: PlantImage(
              size: size,
              imageFile: File(_disease.imagePath),
            ))),
            Divider(
              thickness: (0.0066 * size.height),
              height: (0.013 * size.height),
            ),
            SizedBox(
              height: size.height * 0.5,
              child: ListView(
                children: [
                  TextProperty(
                    title: 'Nama Penyakit',
                    value: _disease.namaPenyakit,
                    height: size.height,
                  ),
                  TextProperty(
                    title: 'Penyebab',
                    value: _disease.possibleCauses,
                    height: size.height,
                  ),
                  TextProperty(
                    title: 'Solusi',
                    value: _disease.possibleSolution,
                    height: size.height,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
