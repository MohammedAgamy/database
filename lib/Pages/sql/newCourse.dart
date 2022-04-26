import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewCourses extends StatefulWidget {
  const NewCourses({Key? key}) : super(key: key);

  @override
  State<NewCourses> createState() => _NewCoursesState();
}

class _NewCoursesState extends State<NewCourses> {
  String? courseName, content;
  int? houre;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      body: Container(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(hintText: 'Enter Course Name'),
                  onChanged: (val) {
                    setState(() {
                      courseName = val;
                    });
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  maxLines: 8,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(hintText: 'Enter Countent'),
                  onChanged: (val) {
                    setState(() {
                      content = val;
                    });
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Enter Hours',
                      label: Text('Enter Hours'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onChanged: (val) {
                    setState(() {
                      houre = int.parse(val);
                    });
                  },
                ),
                SizedBox(height: 30,),
                SizedBox(
                  width: 200,
                  child: MaterialButton(
                    minWidth: double.infinity,
                      child: Text('Add' , style: TextStyle(color: Colors.white),),
                      color: Colors.blue,
                      onPressed: (){
                    setState(() {

                    });
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
