import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

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
        title: const Text('Privacy Policy'),
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
              'Qevoo Privacy Policy',
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
              'DISCLAIMER:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'THIS PRIVACY POLICY IS INTENDED TO PROVIDE CLEAR AND TRANSPARENT INFORMATION ABOUT HOW QEVOO COLLECTS, USES, AND PROTECTS YOUR DATA. BY USING THE QEVOO APP, YOU ACKNOWLEDGE THAT YOU HAVE READ, UNDERSTOOD, AND AGREE TO THE TERMS OUTLINED IN THIS POLICY. WHILE WE STRIVE TO PROTECT YOUR INFORMATION, PLEASE BE AWARE THAT NO DATA TRANSMISSION OR STORAGE SYSTEM CAN GUARANTEE 100% SECURITY.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'At Qevoo, we respect and are committed to protecting your privacy. This Privacy Policy outlines how we collect, use, and safeguard your personal information when using the Qevoo mobile application (the "Qevoo App"). By using the Qevoo App, you agree to the collection and use of your information as described in this Privacy Policy. If you do not agree, please discontinue use of the app.',
              style: TextStyle(fontSize: 16),
            ),
            _buildSectionTitle('1. Information We Collect'),
            _buildSubSection('Personal Information:', [
              'Passengers: Full name, contact number, email, gender, and profile picture.',
              'Drivers: Full name, contact number, email, gender, car information (type, brand, color, number plate), profile picture, driver\'s license image, and Public Driving Permit (PDP) if applicable.',
            ]),
            _buildSubSection('Location Data:', [
              'Real-time location tracking for both drivers and passengers to facilitate ride connections',
              'Current location for nearby driver matching',
              'Trip route tracking during active rides',
              'Location history for completed trips',
            ]),
            const Text(
              'This location data is crucial for matching drivers with passengers and ensuring efficient navigation. Location tracking stops when you close the app or when it\'s running in the background.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              'Public Driving Permit (PDP): For drivers who have a PDP, Qevoo marks their profile with a blue checkmark indicating they are authorized for public driving with a permit. PDP is optional, but having it may enhance driver visibility and credibility on the platform.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              'Trip and Chat Information: Qevoo records trip details such as starting and ending points and trip duration. Additionally, passengers and drivers can communicate via the in-app chat or call feature. All chats are automatically deleted after 24 hours to protect user privacy and prevent data retention beyond necessary timeframes.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              'Payment Information: For drivers, Qevoo may collect payment-related data, such as bank details or wallet balance, used for purchasing points on the platform. Passengers and drivers manage payments directly between each other.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              'Usage Data: Information on app interactions, such as features used, device type, and performance logs, is collected to help improve the functionality of the Qevoo App.',
              style: TextStyle(fontSize: 16),
            ),
            _buildSectionTitle('2. Data Storage and Security'),
            _buildSubSection('Cloud Storage:', [
              'Industry-standard encryption of stored data',
              'Secure data transmission',
              'Regular security updates and monitoring',
              'Compliance with international data protection standards',
            ]),
            _buildSubSection('Data Sharing and Access:', [
              'Phone Number Sharing: Your phone number is only shared with other users (drivers/passengers) after you explicitly grant permission during the ride arrangement process',
              'Contact Information Protection: All other contact information remains private and is not shared with other users',
              'Access Controls: We maintain strict access controls to ensure your data is only accessible to authorized personnel for necessary operational purposes',
            ]),
            _buildSectionTitle('3. How We Use Your Information'),
            const Text(
              'Qevoo uses the collected information to:',
              style: TextStyle(fontSize: 16),
            ),
            _buildSubSection('', [
              'Provide Services: Your data enables us to connect passengers and drivers, facilitate trips, and ensure efficient communication while the app is actively in use.',
              'Account Management: Your personal information allows us to manage your Qevoo account, including keeping your trip history and ensuring compliance with platform rules.',
            ]),
            _buildSubSection('Location-Based Features:', [
              'Real-time driver-passenger matching',
              'Accurate pickup and drop-off coordination',
              'Route optimization and navigation',
              'Safety monitoring during active trips',
              'Service area compliance',
              'Trip history recording',
            ]),
            _buildSectionTitle('4. Information Sharing and Disclosure'),
            const Text(
              'Qevoo does not sell or rent your personal information to third parties. We share only the minimum necessary information to facilitate rides:',
              style: TextStyle(fontSize: 16),
            ),
            _buildSubSection('Phone Number Sharing:', [
              'Your phone number is only shared with other users after you explicitly grant permission',
              'You can revoke this permission at any time through the app settings',
              'Phone numbers are only visible during active ride arrangements',
            ]),
            _buildSubSection('Service Providers:', [
              'We use Firebase Cloud (Google Cloud Platform) for secure data storage',
              'These service providers are bound by strict confidentiality agreements',
              'They can only use your data to provide necessary services to Qevoo',
            ]),
            _buildSectionTitle('5. Data Security'),
            const Text(
              'Qevoo uses industry-standard measures to secure your information, including encryption and secure access protocols. While we strive to protect your data, no method of transmission over the internet or electronic storage is 100% secure. You agree to use the Qevoo App with reasonable awareness of potential security risks.',
              style: TextStyle(fontSize: 16),
            ),
            _buildSectionTitle('6. Your Data Rights'),
            _buildSubSection('', [
              'Access and Update: You can review and update your personal data at any time by logging into your Qevoo account.',
              'Delete Account: If you wish to delete your account and personal data, you may contact us at passengersupport@qevoo.com or driversupport@qevoo.com. We will retain certain data as required for legal purposes or service obligations.',
              'Communication Preferences: You can opt out of receiving promotional messages by following the unsubscribe instructions in those communications.',
            ]),
            _buildSectionTitle('7. Children\'s Privacy'),
            const Text(
              'Qevoo does not knowingly collect or solicit personal data from individuals under 18. If we become aware that we have collected data from a person under 18 without parental consent, we will delete the information as quickly as possible.',
              style: TextStyle(fontSize: 16),
            ),
            _buildSectionTitle('8. Changes to the Privacy Policy'),
            const Text(
              'Qevoo may update this Privacy Policy periodically to reflect changes in our practices, technology, or legal requirements. Any changes will be communicated via in-app notifications or email. Continued use of the Qevoo App indicates acceptance of the updated policy.',
              style: TextStyle(fontSize: 16),
            ),
            _buildSectionTitle('9. Contact Us'),
            const Text(
              'If you have any questions or concerns about this Privacy Policy or how your data is used, please contact: qevooapp@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}