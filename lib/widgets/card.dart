import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: ListView(
        children: [
          _buildCard(),
          SizedBox(
            height: 15,
          ),
          _buildRoundedCard(),
        ],
      ),
    );
  }

  // first Card
  Widget _buildCard() => Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'If life were predictable, It would chese to be life, and I would avoid it.',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Fazley Bin Mahbub',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
  Widget _buildRoundedCard() => Card(
        // shape use for rounded corner
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Howerver it was'),
              SizedBox(
                height: 10,
              ),
              Text('my information')
            ],
          ),
        ),
      );
}
