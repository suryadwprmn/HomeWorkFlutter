import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: const Text(
          'Title',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 197,
                color: Colors.grey[300],
                child: Icon(
                  Icons.image,
                  size: 100,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Title',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 4),
              const Text(
                'Published Date',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                  ' Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias necessitatibus molestiae saepe similique, facere sint ducimus cumque aliquid voluptas sit tenetur perferendis inventore quos odit quisquam omnis explicabo corporis minima.'),
              const SizedBox(height: 16),
              const Text(
                  'Porro, soluta. Repellendus labore incidunt deserunt explicabo, rem ducimus soluta maxime enim! Dignissimos optio minima aut eum! Sapiente voluptates, similique doloribus cumque accusantium, ut totam est error libero expedita fugiat placeat ab quidem repudiandae.',
                  maxLines: 4),
              const SizedBox(height: 16),
              const Text(
                'Other Post',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 16),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.grey[300],
                          child: Icon(
                            Icons.image,
                            size: 100,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Title',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'Description of the post',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Today • 23 min',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
