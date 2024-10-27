import 'package:flutter/material.dart';

class DriverTermsPage extends StatelessWidget {
  const DriverTermsPage({super.key});

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildSubSection(String title, List<String> bullets) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title.isNotEmpty)
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          const SizedBox(height: 8),
          ...bullets.map((bullet) => Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('• ', style: TextStyle(fontSize: 16)),
                    Expanded(
                      child: Text(
                        bullet,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Driver Terms and Conditions'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Qevoo Terms and Conditions for Drivers',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Effective Date: 27 September 2024',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'DISCLAIMER',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'THESE TERMS AND CONDITIONS OUTLINE THE RULES, RESPONSIBILITIES, AND EXPECTATIONS FOR DRIVERS USING THE QEVOO PLATFORM. PLEASE READ THESE TERMS CAREFULLY AS THEY CONSTITUTE A LEGALLY BINDING AGREEMENT BETWEEN YOU AND QEVOO. WHILE WE STRIVE TO MAINTAIN A FAIR AND TRANSPARENT PLATFORM, WE RESERVE THE RIGHT TO MODIFY THESE TERMS AS NEEDED TO IMPROVE OUR SERVICE.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'By accessing or using the Qevoo platform, you agree to the following terms and conditions, which form a contractual agreement between you and Qevoo. If you do not agree to these Terms, please discontinue your use of the platform immediately.',
              style: TextStyle(fontSize: 16),
            ),
            _buildSectionTitle('1. Contractual Relationship'),
            const Text(
              'These Terms govern the access and use of the Qevoo platform by drivers. By using the platform, you agree to these Terms, creating a contractual relationship between you and Qevoo. Qevoo reserves the right to update these Terms at any time, and continued use of the platform constitutes acceptance of any changes.',
              style: TextStyle(fontSize: 16),
            ),
            _buildSectionTitle('2. The Services for Drivers'),
            _buildSubSection('', [
              'Platform Purpose: Qevoo is a platform that connects independent drivers with passengers for long-distance travel across Namibia.',
              'Independent Contractors: Drivers listed on Qevoo are independent contractors, not employees of Qevoo.',
              'Service Facilitation: Qevoo merely facilitates the connection between drivers and passengers and does not provide transportation services directly.',
              'Direct Payments: Payments for services are handled directly between drivers and passengers.',
              'Data Storage: All user data is securely stored in Firebase Cloud, ensuring the protection of your information.',
            ]),
            _buildSectionTitle('3. Driver Point System'),
            const Text(
              'Drivers are required to purchase points in order to load and connect with passengers:',
              style: TextStyle(fontSize: 16),
            ),
            _buildSubSection('Point System Overview:', [
              'Points represent available seats that can be loaded for a trip',
              'Points are deducted based on the number of passengers loaded',
              'Current point cost: N\$7 per point',
            ]),
            _buildSubSection('Payment Methods:', [
              'EFT (Electronic Funds Transfer)',
              'Platform wallet money',
            ]),
            _buildSubSection('Point Policies:', [
              'All purchases are final and non-refundable',
              'Exceptions made only for system errors or Qevoo service disruptions',
              'Points do not expire',
              'Regular balance monitoring recommended',
            ]),
            _buildSectionTitle('4. Driver Responsibilities'),
            _buildSubSection('Documentation Requirements:', [
              'Valid driver\'s license',
              'Current vehicle registration',
              'Updated insurance documentation',
              'Public Driving Permit (PDP) if applicable',
            ]),
            _buildSubSection('Vehicle Standards:', [
              'Well-maintained vehicle meeting safety regulations',
              'Clean and comfortable passenger environment',
              'Regular vehicle maintenance and inspection',
            ]),
            _buildSubSection('Professional Conduct:', [
              'Respectful and courteous passenger treatment',
              'Compliance with traffic laws and safety regulations',
              'Non-discriminatory behavior',
              'Professional communication',
            ]),
            _buildSectionTitle('5. Data Privacy and Communication'),
            _buildSubSection('Location Data:', [
              'Location tracking only occurs when the app is actively running',
              'No background location tracking',
              'Location data used only for ride matching and navigation',
            ]),
            _buildSubSection('Contact Information:', [
              'Phone numbers are only shared after explicit permission from both parties',
              'Users can control their contact sharing preferences',
              'Communication through the app is preferred until ride confirmation',
            ]),
            _buildSectionTitle('6. Payments and Fees'),
            _buildSubSection('Direct Payment System:', [
              'Payments handled directly between passengers and drivers',
              'Qevoo does not process passenger payments',
              'Payment methods to be agreed upon between parties',
            ]),
            _buildSubSection('Payment Guidelines:', [
              'Clear communication of payment expectations before trip',
              'Professional handling of payment transactions',
              'Maintenance of payment records recommended',
            ]),
            _buildSectionTitle('7. Cancellations and Penalties'),
            _buildSubSection('Cancellation Window:', [
              '15-minute grace period after booking confirmation',
              'No cancellations allowed after window closes',
              'Points deducted for confirmed trips',
            ]),
            _buildSubSection('Penalty System:', [
              'No point refunds for late cancellations',
              'Multiple cancellations may result in account review',
              'Possible suspension for repeated violations',
            ]),
            _buildSectionTitle('8. Driver Conduct and Standards'),
            _buildSubSection('Expected Behavior:', [
              'Professional conduct at all times',
              'Safe driving practices',
              'Courteous passenger interaction',
              'Prompt communication',
            ]),
            _buildSubSection('Vehicle Requirements:', [
              'Regular maintenance',
              'Clean interior and exterior',
              'Functioning safety features',
              'Comfortable passenger environment',
            ]),
            _buildSectionTitle('9. Security and Safety'),
            _buildSubSection('Data Security:', [
              'Information stored securely in Firebase Cloud',
              'Limited data sharing between users',
              'Secure payment processing',
              'Privacy protection measures',
            ]),
            _buildSubSection('Personal Safety:', [
              'Right to refuse service for safety concerns',
              'Emergency contact features',
              'Incident reporting system',
              'Safety guidelines provided',
            ]),
            _buildSectionTitle('10. Termination of Services'),
            const Text(
              'Qevoo may suspend or terminate accounts for:',
              style: TextStyle(fontSize: 16),
            ),
            _buildSubSection('', [
              'Terms violations',
              'Insufficient point balance',
              'Passenger complaints',
              'Extended inactivity',
              'Safety concerns',
              'Inappropriate behavior',
            ]),
            _buildSectionTitle('11. Governing Law and Dispute Resolution'),
            const Text(
              'Jurisdiction: Laws of Namibia',
              style: TextStyle(fontSize: 16),
            ),
            _buildSubSection('Resolution Process:', [
              'Initial mediation attempt',
              'Arbitration if needed',
              'Legal proceedings as last resort',
            ]),
            _buildSectionTitle('12. Contact Information'),
            const Text(
              'For support or inquiries:',
              style: TextStyle(fontSize: 16),
            ),
            _buildSubSection('', [
              'Driver Support: qevooapp@gmail.com',
              'Emergency Contact: +264 812123450',
            ]),
            const SizedBox(height: 16),
            const Text(
              'Changes to these Terms will be communicated through the app and via email. Continued use of the platform after changes indicates acceptance of updated Terms.',
              style: TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}