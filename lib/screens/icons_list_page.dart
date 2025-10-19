import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class IconsListPage extends StatefulWidget {
  const IconsListPage({super.key, required this.title});

  final String title;

  @override
  State<IconsListPage> createState() => _IconsListPageState();
}

class _IconsListPageState extends State<IconsListPage> {
  final List<String> imageUrls = [
    'https://cdn-icons-png.freepik.com/512/8625/8625983.png',
    'https://cdn-icons-png.flaticon.com/512/738/738882.png',
    'https://cdn-icons-png.flaticon.com/512/10384/10384161.png',
    'https://cdn-icons-png.flaticon.com/512/6324/6324346.png',
    'https://cdn-icons-png.flaticon.com/256/9710/9710991.png',
  ];

  final List<String> texts = [
    'Иконка 1: список элементов',
    'Иконка 2: добавление элемента',
    'Иконка 3: ввод стоимости',
    'Иконка 4: ввод даты',
    'Иконка 5: выбор категории',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CachedNetworkImage(
                  imageUrl: imageUrls[index],
                  width: 60,
                  height: 60,
                  placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 40,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    texts[index],
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
