import 'package:flutter/material.dart';
import 'package:travel_pay/success_screen.dart';

class PayAbroadScreen extends StatefulWidget {
  const PayAbroadScreen({super.key});

  @override
  State<PayAbroadScreen> createState() => _PayAbroadScreenState();
}

class _PayAbroadScreenState extends State<PayAbroadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Pay Abroad",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Colors.black87),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Live Exchange Rate
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFEDF1F9),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blue.shade100),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Color(0xFF1B49B0),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.show_chart,
                          color: Colors.white, size: 20),
                    ),
                    const SizedBox(width: 16),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Live Exchange Rate",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "\$1 USD = ₦1,450.00 NGN",
                          style: TextStyle(
                            color: Color(0xFF1B49B0),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text("Select Foreign Currency",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
              const SizedBox(height: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: 'USD',
                    isExpanded: true,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: const [
                      DropdownMenuItem(
                          value: 'USD',
                          child: Text("USD - United States Dollar")),
                    ],
                    onChanged: (value) {},
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text("Amount to Spend",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
              const SizedBox(height: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFEDF1F9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  children: [
                    Text(
                      "\$",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text("100.00",
                          style: TextStyle(
                              color: Color(0xFF1B49B0),
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Maximum limit: \$5,000 per transaction",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 24),

              // Transaction Summary
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "TRANSACTION SUMMARY",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          letterSpacing: 1),
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Equivalent in NGN",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 15)),
                        Text("₦145,000.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Processing Fee ",
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 15)),
                            Icon(Icons.info_outline,
                                size: 14, color: Colors.grey),
                          ],
                        ),
                        Text("₦500.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Divider(color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total to Debit",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                        Text("₦145,500.00",
                            style: TextStyle(
                                color: Color(0xFF1B49B0),
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Info Box
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF9E6),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.orange.shade200),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.shield_outlined, color: Colors.orange, size: 24),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        "A temporary virtual card will be generated for this transaction. Funds are secure and card expires in 24 hours.",
                        style: TextStyle(
                            color: Colors.brown, fontSize: 13, height: 1.5),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.rocket_launch, color: Colors.white),
                  label: const Text(
                    "Confirm & Generate Card",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1B49B0),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SuccessScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
