import 'package:flutter/material.dart';
import 'package:paginated_search_bar/paginated_search_bar.dart';
import 'package:endless/endless.dart';
import 'package:flutter_keyboard_size/flutter_keyboard_size.dart';

class ExampleItem {
  final String title;

  ExampleItem({
    required this.title,
  });
}

class ExampleItemPager {
  int pageIndex = 0;
  final int pageSize;

  ExampleItemPager({
    this.pageSize = 20,
  });

  List<ExampleItem> nextBatch() {
    List<ExampleItem> batch = [];

    for (int i = 0; i < pageSize; i++) {
      batch.add(ExampleItem(title: 'Item ${pageIndex * pageSize + i}'));
    }

    pageIndex += 1;

    return batch;
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return KeyboardSizeProvider(
        smallSize: 400.0,
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: 600,
                  child: PaginatedSearchBar<ExampleItem>(
                    maxHeight: 300,
                    hintText: 'Look for gasoline stations',
                    emptyBuilder: (context) {
                      return const Text("I'm an empty state!");
                    },
                    paginationDelegate: EndlessPaginationDelegate(
                      pageSize: 20,
                      maxPages: 3,
                    ),
                    onSearch: ({
                      required pageIndex,
                      required pageSize,
                      required searchQuery,
                    }) async {
                      return Future.delayed(const Duration(milliseconds: 1300),
                          () {
                        // ignore: prefer_typing_uninitialized_variables
                        var pager;
                        if (searchQuery == "empty") {
                          return [];
                        }

                        if (pageIndex == 0) {
                          pager = ExampleItemPager();
                        }

                        return pager.nextBatch();
                      });
                    },
                    itemBuilder: (
                      context, {
                      required item,
                      required index,
                    }) {
                      return Text(item.title);
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
