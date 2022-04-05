import 'package:flutter/material.dart';
import 'package:pwd_bimh/config/colors.dart';
import 'package:pwd_bimh/config/text_styles.dart';

class AddressForm extends StatelessWidget {
  const AddressForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Establishment ID', style: regularText(14),),
            const SizedBox(height: 8,),
            Container(
              width: 320, height: 40,
              padding: const EdgeInsets.only(left: 12, bottom: 2),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: grey),
              ),
              child: TextField(
                style: regularText(13),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixText: 'PWD-',
                  prefixStyle: regularText(12),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
