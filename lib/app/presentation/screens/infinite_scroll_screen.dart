import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  List<int> imagesId = [1, 2, 3, 4, 5];
  ScrollController listViewController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;

  void addFiveImages() {
    final lastId = imagesId.last;
    imagesId.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
  }

  void moveScrollToBottom() {
    if (listViewController.position.pixels + 100 <=
        listViewController.position.maxScrollExtent) return;
    listViewController.animateTo(
      listViewController.position.pixels + 120,
      duration: const Duration(milliseconds: 400),
      curve: Curves.fastOutSlowIn,
    );
  }

  Future loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    addFiveImages();
    isLoading = false;
    if (!isMounted) return;
    setState(() {});
    moveScrollToBottom();
  }

  @override
  void initState() {
    super.initState();
    listViewController.addListener(() {
      if (listViewController.position.pixels + 500 >=
          listViewController.position.maxScrollExtent) {
        loadNextPage();
      }
    });
  }

  Future<void> onRefresh() async {
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 2));
    if (!isMounted) return;
    final lastId = imagesId.last;
    imagesId.clear();
    imagesId.add(lastId + 1);
    addFiveImages();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: ListView.builder(
          controller: listViewController,
          itemCount: imagesId.length,
          itemBuilder: (_, index) {
            return FadeInImage(
              placeholder: const NetworkImage(
                  "https://fastly.picsum.photos/id/26/4209/2769.jpg?hmac=vcInmowFvPCyKGtV7Vfh7zWcA_Z0kStrPDW3ppP0iGI"),
              image: NetworkImage(
                  "https://picsum.photos/id/${imagesId[index]}/600/350"),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    listViewController.dispose();
    isMounted = false;
    super.dispose();
  }
}
