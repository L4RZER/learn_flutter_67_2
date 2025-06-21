// Step 13: TextFormField for input
// Step 14: DropdownButton for job selection

// Step 15: from state management
// Step 16: submit button
import 'package:flutter/material.dart';
import 'package:learn_flutter_67_2/models/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}
class _AddFormState extends State<AddForm>{
// Step 15: from state management
// Step 16: submit button
final _formKey = GlobalKey<FormState>();
String _name = '';
int _age = 20;
Job _job = Job.Manager; // Default job



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Person",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Add Person"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            // Step 15: from state management
            // Step 16: submit button
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                },
                onSaved: (value) {
                  _name = value ?? '';
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Age",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age';
                  }
                },
                onSaved: (value) {
                  _age = int.parse(value.toString())
                  ; // Default age to 20 if parsing fails
                },
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<Job>(
                value: _job,
                decoration: const InputDecoration(
                  labelText: "Job",
                  border: OutlineInputBorder(),
                ),
                items: Job.values.map((job) {
                  return DropdownMenuItem<Job>(
                    value: job,
                    child: Text(job.title),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _job = value!; // Default to Manager if null
                  });
                  // Handle job selection
                },
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () {
                  _formKey.currentState?.validate();
                  _formKey.currentState?.save();
                  personList.add(
                    Person(name: _name, age: _age, job: _job));
                    print(personList);
                    _formKey.currentState?.reset(
                      ); // Reset the form after submission
                }, 
              style: FilledButton.styleFrom(backgroundColor: Colors.blueAccent),
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              ),
            ],
          ),
      ),
      ),
    ),
    );
  }
}