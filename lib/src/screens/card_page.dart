import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardType1(),
          SizedBox(height: 20.0,),
          _cardType2(),
          
        ],
      ),
    
    );
  }

  Widget _cardType1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.accessible_forward, color: Colors.blue),
            title: Text('Titulo de la increible card'),
            subtitle: Text('Descripción de la increible card, que tiene que ser larga para que se vea bonita y puto el que lo lea equisde'),
            onTap: (){},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                FlatButton(onPressed: (){}, child: Text('Decline')),
                FlatButton(onPressed: (){}, child: Text('Allow')),
            ],
          )
        ],
      ),
      elevation: 30.0,

    );
  }




  Widget _cardType2(){
    var card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://media.istockphoto.com/photos/dead-rats-on-the-street-floor-it-smells-bad-and-nasty-which-brings-picture-id976489972'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('tu puta madre')
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(10, 10)
          )
        ]
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: card,
      ), 
    );

    
  }

}



