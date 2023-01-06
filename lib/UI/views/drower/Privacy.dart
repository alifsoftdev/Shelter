import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Privacy extends StatelessWidget {
  PdfViewerController? _pdfViewerController;
  RxBool _loaded = false.obs;

  showPrivacyPolicy(data) {
    return SfPdfViewer.network(
      'https://firebasestorage.googleapis.com/v0/b/shelter-travels-c245c.appspot.com/o/pdf%2F_islam_pdfsurat_Arabic_Surah-Hud-in-Arabic.pdf?alt=media&token=dbff9ec9-d527-4989-a867-a12601061531',
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
        title: const Text("Privacy"),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection("privacy")
            .doc("00001111")
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
            return showPrivacyPolicy(data);
          }
        },
      ),
    );
  }
}