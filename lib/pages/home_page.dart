import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size for responsive design
    final screenSize = MediaQuery.of(context).size;
    
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.primary.withOpacity(0.1),
              Theme.of(context).colorScheme.surface,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo with container decoration
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/qevoo.png',
                      width: screenSize.width * 0.3, // Responsive width
                      height: screenSize.width * 0.3, // Responsive height
                      fit: BoxFit.contain,
                    ),
                  ),
                  
                  const SizedBox(height: 60),
                  
                  // Responsive buttons layout
                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (screenSize.width > 800) {
                        // Desktop layout - horizontal buttons
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildButton(
                              context,
                              'Privacy Policy',
                              '/privacy-policy',
                              Icons.privacy_tip_outlined,
                            ),
                            const SizedBox(width: 20),
                            _buildButton(
                              context,
                              'Driver Terms',
                              '/driver-terms',
                              Icons.drive_eta_outlined,
                            ),
                            const SizedBox(width: 20),
                            _buildButton(
                              context,
                              'Passenger Terms',
                              '/passenger-terms',
                              Icons.people_outline,
                            ),
                          ],
                        );
                      } else {
                        // Mobile layout - vertical buttons
                        return Column(
                          children: [
                            _buildButton(
                              context,
                              'Privacy Policy',
                              '/privacy-policy',
                              Icons.privacy_tip_outlined,
                            ),
                            const SizedBox(height: 16),
                            _buildButton(
                              context,
                              'Driver Terms',
                              '/driver-terms',
                              Icons.drive_eta_outlined,
                            ),
                            const SizedBox(height: 16),
                            _buildButton(
                              context,
                              'Passenger Terms',
                              '/passenger-terms',
                              Icons.people_outline,
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String title, String route, IconData icon) {
    return Container(
      width: 200,
      height: 80,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          backgroundColor: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          elevation: 0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 24),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}