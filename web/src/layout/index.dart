import 'dart:html';

import '../components/header.dart';

DivElement getLayout() {
  DivElement commonMainBox = DivElement();
  commonMainBox.className = 'common-app-wrapper';
  commonMainBox.append(getHeader());
  return commonMainBox;
}
