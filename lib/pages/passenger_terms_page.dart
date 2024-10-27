import 'package:flutter/material.dart';

class PassengerTermsPage extends StatelessWidget {
  const PassengerTermsPage({super.key});

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
        title: const Text('Passenger Terms and Conditions'),
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
              'Qevoo Terms and Conditions for Passengers',
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
              'THESE TERMS AND CONDITIONS OUTLINE THE RULES, RESPONSIBILITIES, AND EXPECTATIONS FOR PASSENGERS USING THE QEVOO PLATFORM. PLEASE READ THESE TERMS CAREFULLY AS THEY CONSTITUTE A LEGALLY BINDING AGREEMENT BETWEEN YOU AND QEVOO. WHILE WE STRIVE TO MAINTAIN A SAFE AND EFFICIENT PLATFORM, PASSENGERS USE THE SERVICE AT THEIR OWN DISCRETION AND RESPONSIBILITY.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'By accessing or using the Qevoo platform, you agree to the following terms and conditions, which form a contractual agreement between you and Qevoo. If you do not agree to these Terms, please discontinue your use of the platform immediately.',
              style: TextStyle(fontSize: 16),
            ),
            _buildSectionTitle('1. Contractual Relationship'),
            const Text(
              'These Terms govern the access and use of the Qevoo platform by passengers. By using the platform, you agree to these Terms, creating a contractual relationship between you and Qevoo. Qevoo may modify these Terms at any time, and continued use of the platform constitutes acceptance of any such changes.',
              style: TextStyle(fontSize: 16),
            ),
            _buildSectionTitle('2. The Services for Passengers'),
            _buildSubSection('Platform Purpose:', [
              'Qevoo facilitates connections between passengers and independent drivers for long-distance rides across Namibia',
              'Drivers are independent contractors, not Qevoo employees',
              'Qevoo does not provide transportation services directly',
            ]),
            _buildSubSection('Platform Operation:', [
              'All user data is securely stored in Firebase Cloud',
              'Location tracking only occurs when the app is actively running',
              'Contact information sharing requires explicit permission',
            ]),
            _buildSubSection('Driver Information:', [
              'Drivers are charged points for loading seats',
              'One point equals N\$7',
              'Points are purchased via EFT or wallet money',
            ]),
            _buildSectionTitle('3. Data Privacy and Security'),
            _buildSubSection('Data Collection:', [
              'Location data collected only when app is actively running',
              'No background location tracking',
              'Personal information stored securely in Firebase Cloud',
            ]),
            _buildSubSection('Contact Information:', [
              'Phone numbers shared only with explicit permission',
              'Users can control their contact sharing preferences',
              'Option to revoke contact sharing permissions',
            ]),
            _buildSubSection('Data Protection:', [
              'Industry-standard security measures',
              'Secure data transmission',
              'Limited data sharing between users',
            ]),
            _buildSectionTitle('4. Booking and Payment'),
            _buildSubSection('Platform Access:', [
              'Free app download and usage',
              'No subscription fees',
              'No hidden charges',
            ]),
            _buildSubSection('Booking Process:', [
              'Search and book rides directly with drivers',
              'Clear display of ride costs before confirmation',
              'Direct communication with drivers through the app',
            ]),
            _buildSubSection('Payment System:', [
              'Direct payment to drivers',
              'No processing fees from Qevoo',
              'Payment methods agreed upon with drivers',
              'Recommended to discuss payment terms before trip',
            ]),
            _buildSectionTitle('5. Cancellations and No-Shows'),
            _buildSubSection('Cancellation Policy:', [
              '15-minute cancellation window after booking',
              'No cancellations allowed after window closes',
              'Account review for repeated cancellations',
            ]),
            _buildSubSection('No-Show Consequences:', [
              'May result in account warnings',
              'Possible temporary suspension',
              'Repeated incidents may lead to permanent termination',
            ]),
            _buildSectionTitle('6. Passenger Conduct'),
            _buildSubSection('Expected Behavior:', [
              'Punctual arrival at pickup location',
              'Respectful communication with drivers',
              'Compliance with safety instructions',
              'Proper care of vehicle',
            ]),
            _buildSubSection('Prohibited Actions:', [
              'Abusive or discriminatory behavior',
              'Illegal activities',
              'Damage to vehicle or property',
              'Harassment of drivers or other passengers',
            ]),
            _buildSectionTitle('7. Safety and Security'),
            _buildSubSection('Platform Safety:', [
              'Driver verification system',
              'Real-time location sharing during active trips',
              'Emergency contact features',
              'Incident reporting system',
            ]),
            _buildSubSection('Personal Safety Guidelines:', [
              'Verify driver details before trip',
              'Share trip details with trusted contacts',
              'Report suspicious behavior',
              'Follow safety recommendations',
            ]),
            _buildSectionTitle('8. Lost Property'),
            _buildSubSection('Passenger Responsibilities:', [
              'Maintain control of personal belongings',
              'Check vehicle before departing',
              'Report lost items promptly',
            ]),
            _buildSubSection('Recovery Process:', [
              'Contact driver through app',
              'Support team assistance available',
              'Coordination for item return',
            ]),
            _buildSectionTitle('9. Dispute Resolution and Feedback'),
            _buildSubSection('Resolution Process:', [
              'Direct communication with drivers',
              'Platform mediation if needed',
              'Support team assistance',
              'Feedback system for service improvement',
            ]),
            _buildSubSection('Reporting Issues:', [
              'In-app reporting features',
              '24-hour support response',
              'Fair review system',
            ]),
            _buildSectionTitle('10. Limitation of Liability'),
            _buildSubSection('Platform Responsibility:', [
              'Facilitates connections only',
              'Not responsible for transportation services',
              'No liability for personal injuries or losses',
              'Commitment to safety standards',
            ]),
            _buildSubSection('Insurance and Coverage:', [
              'Passengers advised to have personal insurance',
              'Driver insurance requirements',
              'Platform security measures',
            ]),
            _buildSectionTitle('11. Governing Law and Dispute Resolution'),
            _buildSubSection('Legal Framework:', [
              'Governed by Namibian law',
              'Mediation as first step',
              'Arbitration if needed',
              'Legal proceedings as last resort',
            ]),
            _buildSectionTitle('12. Contact Information'),
            const Text(
              'For support or inquiries:',
              style: TextStyle(fontSize: 16),
            ),
            _buildSubSection('', [
              'Passenger Support: qevooapp@gmail.com',
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