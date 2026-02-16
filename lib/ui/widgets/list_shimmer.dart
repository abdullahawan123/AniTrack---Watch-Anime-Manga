import 'package:flutter/material.dart';
import 'shimmer_loading.dart';

class ListShimmer extends StatelessWidget {
  const ListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              ShimmerLoading.rectangular(height: 150, width: 100),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShimmerLoading.rectangular(height: 20),
                    SizedBox(height: 8),
                    ShimmerLoading.rectangular(height: 15, width: 150),
                    SizedBox(height: 8),
                    ShimmerLoading.rectangular(height: 15, width: 100),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
