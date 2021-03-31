import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            '瀬戸弘司',
          ),
          actions: [
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {
                  //TODO
                },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {
                  //TODO
                },
              ),
            )
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                        'https://yt3.ggpht.com/ytc/AAUvwnjvnWiPd18Dh0VqLh1Jhx-7VIImKbq_eLrYG3xQXw=s176-c-k-c0x00ffffff-no-rj',
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                        const Text(
                          '瀬戸弘司',
                        ),
                        FlatButton(
                          child: Row(
                            children: [
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text('登録する'),
                            ],
                          ),
                          onPressed: () {
                            //TODO
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                        //TODO；画面遷移
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoDetailPage(),
                          ),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                        'https://i.ytimg.com/vi/joUmKgcBhkI/maxresdefault.jpg',
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '瀬戸弘司の動画${index}',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 75,
                                child: Text(
                                  '317万回再生',
                                  style: TextStyle(
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                              Text(
                                '1ヶ月前',
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
