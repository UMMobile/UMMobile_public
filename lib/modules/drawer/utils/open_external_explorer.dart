import 'package:ummobile/statics/widgets/overlays/snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

/// Opens an external browser that points to the [siteUrl]
openExternalExplorer(String siteUrl) async {
  if (await canLaunchUrl(Uri())) {
    await launchUrl(Uri());
  } else {
    snackbarMessage("No se logró abrir el URL", "Ocurrió un error inesperado");
  }
}
