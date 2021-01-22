import 'package:flutter/material.dart';

import 'dart:async';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ScrollController _scrollController = new ScrollController();
  List<int> _imagePositions = new List();
  int _lastPosition = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _add10();

    _scrollController.addListener(() {
      double position = _scrollController.position.pixels;
      double max = _scrollController.position.maxScrollExtent;
      if (position == max) {
        _fethData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lists'),
        ),
        body: Stack(
          children: [
            _createList(),
            _createLoading(),
          ],
        ));
  }

  Widget _createList() {
    return RefreshIndicator(
      onRefresh: reloadPage,
      child: ListView.builder(
        itemCount: _imagePositions.length,
        controller: _scrollController,
        itemBuilder: (BuildContext context, int index) {
          final _selectedImage = _imagePositions[index];
          return Container(
            padding: EdgeInsets.only(bottom: 10),
            child: FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://picsum.photos/500/300/?image${_selectedImage}'),
            ),
          );
        },
      ),
    );
  }

  Future<Null> reloadPage() async {
    new Timer(Duration(seconds: 2), () {
      _imagePositions.clear();
      _lastPosition++;
      _add10();
    });

    return Future.delayed(Duration(seconds: 2));
  }

  void _add10() {
    for (var i = 0; i < 10; i++) {
      _lastPosition += 10;
      _imagePositions.add(_lastPosition);
    }
    setState(() {});
  }

  Future<Null> _fethData() async {
    _isLoading = true;
    setState(() {});
    return new Timer(Duration(seconds: 2), requestHTTP);
  }

  void requestHTTP() {
    _isLoading = false;

    _scrollController.animateTo(_scrollController.position.pixels + 100,
        duration: Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
    _add10();
  }
  

  Widget _createLoading() {
    return _isLoading ? Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [CircularProgressIndicator()],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(height: 15.0)
            ],
          )
        : Container();
  }
  
}
