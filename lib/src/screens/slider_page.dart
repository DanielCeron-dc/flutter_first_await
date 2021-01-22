import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100;
  bool _blockSlider = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            _createSlider(),
            _createCheckBox(),
            _createSwitch(),
            Expanded(child: _createImage()),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() => Slider(
        value: _sliderValue,
        min: 1,
        max: 400,
        divisions: 4,
        activeColor: Colors.black26,
        label: 'Rat',
        onChanged: _blockSlider
            ? null
            : (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
      );

  Widget _createCheckBox() {
    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _blockSlider,
        onChanged: (value) {
          setState(() {
            _blockSlider = value;
          });
        });
  }

  Widget _createSwitch() {
    return SwitchListTile(
        value: _blockSlider,
        title: Text('Bloquear Slider'),
        onChanged: (value) {
          setState(() {
            _blockSlider = value;
          });
        });
  }

  Widget _createImage() => FadeInImage(
      width: _sliderValue,
      placeholder: AssetImage('assets/jar-loading.gif'),
      image: NetworkImage(
          "https://e00-elmundo.uecdn.es/elmundo/imagenes/2007/08/06/1186391983_0.jpg"));
}
