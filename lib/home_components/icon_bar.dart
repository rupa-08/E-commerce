import 'package:flutter/material.dart';

class i_bar extends StatefulWidget {
  const i_bar({Key? key}) : super(key: key);

  @override
  _i_barState createState() => _i_barState();
}

class _i_barState extends State<i_bar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 12,
              ),
              Card(
                color: Colors.grey.withOpacity(0.1),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(150),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.widgets_outlined,
                    size: 30.0,
                    color: Colors.deepOrange.withOpacity(0.8),
                  ),
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Card(
                color: Colors.grey.withOpacity(0.1),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(150),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bolt,
                    size: 30.0,
                    color: Colors.deepOrange.withOpacity(0.8),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Card(
                color: Colors.grey.withOpacity(0.1),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(150),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.record_voice_over_outlined,
                    size: 30.0,
                    color: Colors.deepOrange.withOpacity(0.8),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Card(
                color: Colors.grey.withOpacity(0.1),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(150),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.redeem,
                    size: 30.0,
                    color: Colors.deepOrange.withOpacity(0.8),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Card(
                color: Colors.grey.withOpacity(0.1),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(150),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.feed,
                    size: 30.0,
                    color: Colors.deepOrange.withOpacity(0.8),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 4,
              ),
              Text("Categories"),
              SizedBox(
                width: 18,
              ),
              Text("Flash Sales"),
              SizedBox(
                width: 8,
              ),
              Text("Campaigns"),
              SizedBox(
                width: 16,
              ),
              Text("Daily Gift"),
              SizedBox(
                width: 26,
              ),
              Text("Order"),
              //
              //h_prod(),
            ],
          ),
        ],
      ),
    );
  }
}
