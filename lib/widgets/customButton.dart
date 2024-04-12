import 'package:flutter/material.dart';
import 'package:responsiveapp/utils/appstyles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.label,
      required this.bgColor,
      required this.txtColor});
  final String label;
  final Color bgColor;
  final Color txtColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(bgColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(12.0), // Change the radius here
                ),
              ),
            ),
            child: Center(
              child: FittedBox(
                child: Text(
                  label,
                  style: AppStyles.styleSemiBold18(context)
                      .copyWith(color: txtColor),
                ),
              ),
            )),
      ),
    );
  }
}
