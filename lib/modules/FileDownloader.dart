import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';

class FileDownloader extends StatefulWidget {
  @override
  State<FileDownloader> createState() => _FileDownloaderState();
}

class _FileDownloaderState extends State<FileDownloader> {
  Future<ListResult>? futureFiles =
      FirebaseStorage.instance.ref('/files').list();

  Map<int, double> downloadProgress = {};

  var vis = false;

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<ListResult>(
          future: futureFiles,
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              final files = snapshot.data!.items;

              return ListView.builder(
                itemCount: files.length,
                itemBuilder: (context, index) {
                  final file = files[index];
                  double? progress = downloadProgress[index];
                  return ListTile(
                    // title: Text(
                    //   'Time Table',
                    //   style: TextStyle(
                    //     fontSize: 20,
                    //   ),
                    // ),
                    subtitle: progress != null
                        ? LinearProgressIndicator(
                            value: progress,
                            backgroundColor: Colors.black26,
                          )
                        : null,
                    title: TextButton(
                        onPressed: () {
                          download(index, file);
                        },
                        child: Text('Download Full Time Table')),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text("Errors...."),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
        ),
      ),
    );
  }

  Future download(int index, Reference ref) async {
    final url = await ref.getDownloadURL();
    final tempDir = await getTemporaryDirectory();
    final path = '${tempDir.path}/${ref.name}';
    await Dio().download(url, path, onReceiveProgress: (received, total) {
      double progress = received / total;

      setState(() {
        downloadProgress[index] = progress;
      });
    });
    await GallerySaver.saveImage(path, toDcim: true);

    // final dir = await getApplicationDocumentsDirectory();

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Download & saved to Gallery')));
  }
}
