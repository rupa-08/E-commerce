import 'package:flutter/material.dart';

class confirm_btn extends StatefulWidget {
  const confirm_btn({Key? key}) : super(key: key);

  @override
  _confirm_btnState createState() => _confirm_btnState();
}

class _confirm_btnState extends State<confirm_btn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Column(
        children: [
          Expanded(
              child:  SizedBox(
                width: 250,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  onPressed: (){},
                  child: const Text("Confirm", style: TextStyle(color: Colors.white,)
                  ),
                  color: Colors.orange,),
              )


          ),
          const SizedBox(height: 20,)
        ],
      ),);
  }
}
