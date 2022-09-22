import 'package:bookroom/ui%20widgets/white_box.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdfviewer extends StatefulWidget {
  const pdfviewer({super.key});

  @override
  State<pdfviewer> createState() => _pdfviewerState();
}

class _pdfviewerState extends State<pdfviewer> {
  late PdfViewerController _pdfViewerController;
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 25,
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
              ),
              const Text(
                'Book Name',
                style: TextStyle(
                    color: Color.fromARGB(87, 155, 39, 176),
                    fontWeight: FontWeight.w500,
                    fontSize: 25),
              )
            ],
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 15, 20, 10),
              child: Text(
                'Last Opened - 9:41pm',
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.w300,
                    fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    'Start from beggining',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
                ),
              ),
            ),
          ),
          Expanded(child: white_box(pdf_child(), Colors.purple))
        ],
      ),
    );
  }

  Widget pdf_child() {
    return Scaffold(
      body: Stack(
        children:[ Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.8,
            child: SfPdfViewer.network(
              'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
              controller: _pdfViewerController,
            )),
        ]
      ),
    );
  }
}
