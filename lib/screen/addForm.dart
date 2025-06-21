// Step 13: TextFormField for input
// Step 14: DropdownButton for job selection
import 'package:flutter/material.dart';
import 'package:learn_flutter_67_2/models/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}
class _AddFormState extends State<AddForm>{
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
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Age",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<Job>(
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
                  // Handle job selection
                },
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () {}, 
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
    );
  }
}