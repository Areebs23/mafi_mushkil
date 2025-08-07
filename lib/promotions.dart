import 'package:flutter/material.dart';

class PromotionsScreen extends StatefulWidget {
  const PromotionsScreen({super.key});

  @override
  State<PromotionsScreen> createState() => _PromotionsScreenState();
}

class _PromotionsScreenState extends State<PromotionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'Promotions',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            PromotionCard(
              title: 'EID FITR 2023',
              status: 'Expired',
              discount: '2%',
              maxDiscount: 'USD 100',
              dates: null,
              isActive: false,
            ),
            PromotionCard(
              title: 'EID AZHA 2023',
              status: 'Active',
              discount: '5%',
              maxDiscount: null,
              dates: '15 Jan - 30 Feb',
              isActive: true,
            ),
          ],
        ),
      ),
    );
  }
}

class PromotionCard extends StatefulWidget {
  final String title;
  final String status;
  final String discount;
  final String? maxDiscount;
  final String? dates;
  final bool isActive;

  const PromotionCard({
    super.key,
    required this.title,
    required this.status,
    required this.discount,
    this.maxDiscount,
    this.dates,
    required this.isActive,
  });

  @override
  State<PromotionCard> createState() => _PromotionCardState();
}

class _PromotionCardState extends State<PromotionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Get ${widget.discount} discount on all orders on this Eid',
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                ),
                if (widget.maxDiscount != null)
                  Text(
                    '(Max discount = ${widget.maxDiscount})',
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  ),
                if (widget.dates != null)
                  Text(
                    widget.dates!,
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              border: Border.all(color: widget.isActive ? Colors.green : Colors.red),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              widget.status,
              style: TextStyle(color: widget.isActive ? Colors.green : Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
