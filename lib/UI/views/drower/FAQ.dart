import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shelter/const/AppColor.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';



class FAQ_Screen extends StatelessWidget {
PdfViewerController? _pdfViewerController;
  RxBool _loaded = false.obs;

  faq(data) {
    return SfPdfViewer.network(
      'https://firebasestorage.googleapis.com/v0/b/shelter-travels-c245c.appspot.com/o/pdf%2F_islam_pdfsurat_Arabic_Surah-Hud-in-Arabic_11zon.pdf?alt=media&token=1bbbfb6f-b7db-42a7-a2f1-3fd4f73e2ba9',
      onDocumentLoaded: (PdfDocumentLoadedDetails details) {
        _loaded.value = true;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("FAQ",selectionColor: AppColor.black,),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection("FAQ")
            .doc("00002222")
            .snapshots(),
        builder: (context, snapshot) {
          var data = snapshot.data;
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return faq(data);
          }
        },
      ),
    );
  }
}