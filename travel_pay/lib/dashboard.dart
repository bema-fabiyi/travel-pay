import 'package:flutter/material.dart';
import 'package:travel_pay/app_colors.dart';
import 'package:travel_pay/pay_abroad_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AppBar-like section
              Padding(
                padding:
                    const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.teal[800],
                          child: const Icon(Icons.person, color: Colors.white),
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome back,",
                              style: TextStyle(
                                  color: AppColors.secondaryTextColor,
                                  fontSize: 13),
                            ),
                            Text(
                              "Alex Johnson",
                              style: TextStyle(
                                  color: AppColors.primaryTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // IconButton(
                    //   icon: const Icon(Icons.notifications_none,
                    //       color: Colors.black87),
                    //   onPressed: () {

                    //   },
                    // )
                  ],
                ),
              ),

              // Wallet Card
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "NGN Wallet Balance",
                            style: TextStyle(
                                color: Colors.white.withValues(alpha: 0.8),
                                fontSize: 15),
                          ),
                          Icon(Icons.account_balance_wallet_outlined,
                              color: Colors.white70),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "₦250,000.00",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/flag_stack.png'),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.white.withAlpha(50),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Row(
                              children: [
                                Text("Details",
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 4),
                                Icon(Icons.chevron_right,
                                    color: Colors.white, size: 16),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),

              // Add Money & Pay Abroad buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Expanded(
                      child: _buildActionCard(
                        icon: 'assets/add_money.png',
                        iconColor: const Color(0xFF1B49B0),
                        title: "Add Money",
                        backgroundColor: Colors.white,
                        textColor: AppColors.primaryTextColor,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PayAbroadScreen()),
                          );
                        },
                        child: _buildActionCard(
                          icon: 'assets/globe.png',
                          iconColor: Colors.white,
                          title: "Pay Abroad",
                          backgroundColor: AppColors.primaryColor,
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // Recent Transactions Bottom Sheet look-alike
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Transactions",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1B49B0)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    _buildTransactionItem(
                      icon: Icons.sync,
                      iconBgColor: Colors.orange[50]!,
                      iconColor: Colors.orange,
                      title: "NGN to USD Swap",
                      subtitle: "Today, 10:45 AM",
                      amount: "-₦45,000.00",
                      status: "Completed",
                      statusColor: Colors.green,
                    ),
                    const SizedBox(height: 20),
                    _buildTransactionItem(
                      icon: Icons.account_balance,
                      iconBgColor: Colors.green[50]!,
                      iconColor: Colors.green,
                      title: "Wallet Funding",
                      subtitle: "Yesterday, 04:20 PM",
                      amount: "+₦120,000.00",
                      status: "Completed",
                      statusColor: Colors.green,
                    ),
                    const SizedBox(height: 20),
                    _buildTransactionItem(
                      icon: Icons.account_balance,
                      iconBgColor: Colors.green[50]!,
                      iconColor: Colors.green,
                      title: "Wallet Funding",
                      subtitle: "Yesterday, 04:20 PM",
                      amount: "+₦120,000.00",
                      status: "Completed",
                      statusColor: Colors.green,
                    ),
                    const SizedBox(height: 20),
                    _buildTransactionItem(
                      icon: Icons.credit_card,
                      iconBgColor: Colors.blue[50]!,
                      iconColor: Colors.blue,
                      title: "Virtual Card Issued",
                      subtitle: "24 Oct, 09:12 AM",
                      amount: "-₦2,500.00",
                      status: "Completed",
                      statusColor: Colors.green,
                    ),
                    const SizedBox(height: 20),
                    _buildTransactionItem(
                      icon: Icons.account_balance,
                      iconBgColor: Colors.green[50]!,
                      iconColor: Colors.green,
                      title: "Wallet Funding",
                      subtitle: "Yesterday, 04:20 PM",
                      amount: "+₦120,000.00",
                      status: "Completed",
                      statusColor: Colors.green,
                    ),
                    const SizedBox(height: 20),
                    _buildTransactionItem(
                      icon: Icons.flight_takeoff,
                      iconBgColor: Colors.purple[50]!,
                      iconColor: Colors.purple,
                      title: "Air France Payment",
                      subtitle: "22 Oct, 02:30 PM",
                      amount: "-₦180,000.00",
                      status: "Pending",
                      statusColor: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionCard({
    required String icon,
    required Color iconColor,
    required String title,
    required Color backgroundColor,
    required Color textColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Image.asset(icon),
          const SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionItem({
    required IconData icon,
    required Color iconBgColor,
    required Color iconColor,
    required String title,
    required String subtitle,
    required String amount,
    required String status,
    required Color statusColor,
  }) {
    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: iconBgColor,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: iconColor),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              amount,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(height: 4),
            Text(
              status,
              style: TextStyle(
                  color: statusColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
