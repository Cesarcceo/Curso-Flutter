import 'package:flutter/material.dart';
import 'package:primer_proyecto/theme/app_theme.dart';

class TarjetaPersona2 extends StatelessWidget {
  const TarjetaPersona2({super.key, required this.imageUrl, this.name});

  final String imageUrl;
  final String? name;
  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10,
        shadowColor: AppTheme.primary.withOpacity(0.3),
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder: const AssetImage('assets/jar-loading.gif'),
              height: 230,
              fit: BoxFit.cover,
              width: double.infinity,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (name != null)
              Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(name!),
              )
          ],
        ));
  }
}
