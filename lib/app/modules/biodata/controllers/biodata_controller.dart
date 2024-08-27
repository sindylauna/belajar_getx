// ignore_for_file: duplicate_import

import 'package:get/get.dart';
import 'package:rpl_getx/app/data/biodata_model.dart';
import '../../../data/biodata_model.dart';

class BiodataController extends GetxController {
  final nama = ''.obs;
  final jenisKelamin = ''.obs;
  final agama = ''.obs;
  final tanggalLahir = DateTime.now().obs;
  final alamat = ''.obs;
  
  void setNama(String value) => nama.value = value;
  void setJenisKelamin(String? value) {
    if (value != null) jenisKelamin.value = value;
  }

   void setAgama(String? value) {
    if (value != null) agama.value = value;
  }

   void setTanggalLahir(DateTime value) => tanggalLahir.value= value;
   void setAlamat(String value) => alamat.value = value ;

   void submitForm(){
     final formData = BiodataModel(
      nama: nama.value, 
      jenisKelamin: jenisKelamin.value, 
      agama: agama.value, 
      tanggalLahir: tanggalLahir.value, 
      alamat: alamat.value
      );
      Get.toNamed('output',arguments: formData);
   }
  
}
