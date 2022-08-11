import 'dart:html';
import 'src/layout/index.dart';

void main() {
  querySelector('#output')?.children.add(getLayout());
}
