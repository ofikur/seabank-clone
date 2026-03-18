import 'package:flutter/material.dart';

class CustomButtonNav extends StatelessWidget {
  const CustomButtonNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 2,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: _buildNavItem(Icons.home, 'Beranda', true)),
          Expanded(
            child: _buildNavItem(Icons.swap_horiz, 'Bayar/Transfer', false),
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                const Positioned(
                  bottom: 6,
                  child: Text(
                    'QRIS',
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ),
                Positioned(
                  bottom: 22,
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 233, 94, 26),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.qr_code_scanner,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: _buildNavItem(
              Icons.monetization_on_outlined,
              'Deposito',
              false,
            ),
          ),
          Expanded(child: _buildNavItem(Icons.person_outline, 'Saya', false)),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          icon,
          color: isActive
              ? const Color.fromARGB(255, 233, 94, 26)
              : Colors.grey,
          size: 28,
        ),
        const SizedBox(height: 0),
        Text(
          label,
          style: TextStyle(
            fontSize: 10,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            color: isActive
                ? const Color.fromARGB(255, 233, 94, 26)
                : Colors.grey,
          ),
        ),
        const SizedBox(height: 4),
      ],
    );
  }
}
