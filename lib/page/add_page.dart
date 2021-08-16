import 'package:flutter/material.dart';
import 'package:movies_application/widget/add_button_widget.dart';

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Add a Movie Card';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          backgroundColor: Colors.black,
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.movie),
              hintText: 'Enter Movie Name',
              labelText: 'Movie Name',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.cast),
              hintText: 'Enter the Director Name',
              labelText: 'Director',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.photo),
              hintText: 'Provide Url for the Movie Poster',
              labelText: 'Poster',
            ),
          ),
          AddMovieCardWidget(),
        ],
      ),
    );
  }
}
