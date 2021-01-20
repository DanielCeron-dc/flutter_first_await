import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

//! Sexo anal
class _InputPageState extends State<InputPage> {
  String _name = "";
  String _email = "";
  String _password = "";

  TextEditingController _dateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Inputs')),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            _createInput(),
            Divider(height: 20),
            _createEmail(),
            Divider(height: 20),
            _createPassword(),
            Divider(height: 20),
            _createDate(context),
            Divider(height: 20),
            _createInfo(),
          ],
        ));
  }

  Widget _createDate(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _dateController,
      
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        hintText: 'Ingrese la fecha',
        labelText: 'Fecha...',
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.calendar_view_day),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _showDateDialog(context);
      },
    );
  }

  void _showDateDialog(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        firstDate: DateTime(2019),
        initialDate: DateTime.now(),
        lastDate: DateTime(3000),
        locale: Locale('es', 'ES'), 
        );

    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString();
       // _dateController.text = _date;
      });
    }
  }

  Widget _createInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        counter: Text('# Letras ${_name.length}'),
        hintText: 'Escriba Aqui. No sea estúpido',
        helperText: 'Ayuda',
        labelText: 'Escriba...',
        suffixIcon: Icon(Icons.youtube_searched_for),
        icon: Icon(Icons.nightlight_round),
      ),
      onChanged: (value) {
        setState(() {
          _name = value;
        });
      },
    );
  }

  Widget _createEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        labelText: 'Email...',
        hintText: 'Email. No sea estúpido',
        suffixIcon: Icon(Icons.email),
        icon: Icon(Icons.email_outlined),
      ),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _createPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        labelText: 'Password...',
        hintText: 'Password. No sea estúpido',
        suffixIcon: Icon(Icons.lock_open_rounded),
        icon: Icon(Icons.lock_outlined),
      ),
      onChanged: (value) {
        setState(() {
          _password = value;
        });
      },
    );
  }

  Widget _createInfo() {
    return ListTile(
      title: Text('El texto es: '),
      subtitle: Text("Name = " +
          _name +
          " E-mail = " +
          _email +
          " Password = " +
          _password +
          "Fecha = " +
          _dateController.text),
    );
  }
}
