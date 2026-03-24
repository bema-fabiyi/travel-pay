import 'package:flutter/material.dart';
import 'package:travel_pay/dashboard.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black87),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const Dashboard()),
              (route) => false,
            );
          },
        ),
        title: const Text(
          "Success",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Color(0xFFEDF1F9),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.check_circle,
                    color: Color(0xFF1B49B0), size: 48),
              ),
              const SizedBox(height: 24),
              const Text(
                "Virtual Card Generated!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Your TravelPay virtual card is ready for use.",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              const SizedBox(height: 32),

              // Card Graphics
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xFF1B49B0),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("TRAVELPAY",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                    letterSpacing: 1)),
                            Text("Debit Card",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Icon(Icons.wifi_tethering, color: Colors.white),
                      ],
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      "••••  ••••  ••••",
                      style: TextStyle(
                          color: Colors.white, fontSize: 24, letterSpacing: 2),
                    ),
                    const Text(
                      "1 2 3 4",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("EXPIRY",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 10)),
                                SizedBox(height: 4),
                                Text("05/27",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(width: 24),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("CVV",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 10)),
                                SizedBox(height: 4),
                                Text("•••",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                          height: 24,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: const BoxDecoration(
                                      color: Colors.redAccent,
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: const BoxDecoration(
                                      color: Colors.amber,
                                      shape: BoxShape.circle),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),

              // Receipt
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Transaction Receipt",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 24),
                    _buildReceiptRow("Transaction ID", "TP-98765"),
                    const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Divider(color: Colors.grey)),
                    // Notice the amount spent here is in Won according to the prototype
                    _buildReceiptRow("Amount Spent", "₩100,000"),
                    const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Divider(color: Colors.grey)),
                    _buildReceiptRow("Exchange Rate", "₩1 = ₦1.12"),
                    const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Divider(color: Colors.grey)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Paid",
                            style: TextStyle(color: Colors.grey, fontSize: 15)),
                        Text("₦112,000",
                            style: TextStyle(
                                color: Color(0xFF1B49B0),
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.copy, color: Colors.white, size: 20),
                  label: const Text(
                    "Copy Card Details",
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
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()),
                      (route) => false,
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFE2E9F6),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Back to Dashboard",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1B49B0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReceiptRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 15)),
        Text(value,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
      ],
    );
  }
}
