import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_const.dart';

class LocationCard extends StatelessWidget {
  final String img;
  final void Function()? onPressed;

  const LocationCard({super.key, required this.img, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: onPressed,
        child: Card(
          elevation: 3,
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //     border: Border.all(width: 0.3, color: AppColors.grey)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3.1,
                  child: AspectRatio(
                    aspectRatio: 1.2,
                    child: Image.asset(
                      img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Anna Nagar',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                              fontSize: 17,
                              color: AppColors.black),
                        ),
                        Text(
                          AppConst.lorem3,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.grey2),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Wrap(
                              spacing: 7,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 17,
                                ),
                                Text(
                                  'London, UK',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black,
                                    fontStyle: FontStyle.italic,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
