import 'dart:html';
import 'package:biginteger_js/biginteger_js.dart';

void main() {
  print(MakeBigInt.fromNum());
  print(MakeBigInt.fromNum(50));
  final BigInteger b = MakeBigInt
      .fromString('75643564363473453456342378564387956906736546456235345');
  print(b);
  final BigInteger b2 = MakeBigInt.fromAnother(b);
  print(b2);
  print(MakeBigInt
      .fromRadixArray([0x11, 0x22, 0x33, 0x44], 256, false)
      .toJSNumber()
      .toInt()
      .toRadixString(16));
  print(MakeBigInt
      .fromBytes([0x11, 0x22, 0x33, 0x44], false)
      .toJSNumber()
      .toInt()
      .toRadixString(16));
  print(MakeBigInt.fromBytes([128], true).toJSNumber().toInt());
  final BigInteger b3 = MakeBigInt.fromNum(50);
  print(b3.add(5));
  print(b3);

  print(MakeBigInt.gcd(75, 15));

  print(MakeBigInt.zero);
  print(MakeBigInt.one);
}
