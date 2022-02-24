import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

class PaymentScreen extends StatelessWidget {
  final config = PaymentConfig(
    amount: 10000, // Amount should be in paisa
    productIdentity: 'dell-g5-g5510-2021',
    productName: 'Dell G5 G5510 2021',
    productUrl: 'https://www.khalti.com/#/bazaar',
    additionalData: {
      // Not mandatory; can be used for reporting purpose
      'vendor': 'Khalti Bazaar',
    },
  );
  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
      publicKey: 'test_public_key_dc74e0fd57cb46cd93832aee0a507256',
      builder: (context, navKey) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Payment'),
          ),
          body: Center(
            child: ElevatedButton(
              child: Text('Pay'),
              onPressed: () {
                KhaltiScope.of(context).pay(
                  config: config,
                  preferences: [
                    PaymentPreference.connectIPS,
                    PaymentPreference.eBanking,
                    PaymentPreference.sct,
                  ],
                  onSuccess: (successModel) {
                    print('Successful Payment');
                  },
                  onFailure: (failureModel) {
                    print('Failed payment');
                  },
                  onCancel: () {},
                );
              },
            ),
          ),
        );
      },
    );
  }
}
