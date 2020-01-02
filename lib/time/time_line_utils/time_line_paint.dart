import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';
class MyPainter extends CustomPainter {
  //虚线
  double DottedLineLenght;
  //虚线之间的间距
  double DottedSpacing;
  //圆的大小
  double circleSize;
  Gradient mygradient;
  bool isDash;
  Color LineColor;
  double paintWidth;
  MyPainter(
      {this.circleSize,
        this.mygradient,
        this.isDash = false,
        this.DottedLineLenght = 5.0,
        this.DottedSpacing = 10.0,
        this.LineColor = Colors.redAccent,this.paintWidth=4});

  Paint _paint = Paint()
    ..strokeCap = StrokeCap.square //画笔笔触类型
    ..isAntiAlias = true;//是否启动抗锯齿; //画笔的宽度
  Path _path = new Path();
  @override
  Future paint(Canvas canvas, Size size) {
    final Rect arcRect = Rect.fromLTWH(10, 5, 4, size.height);
    _paint.style = PaintingStyle.stroke; // 画线模式
    _paint.color = this.LineColor;
    _paint.strokeWidth=this.paintWidth;
    _path.moveTo(circleSize, 0); // 移动起点到（20,40）
    _path.lineTo(circleSize, size.height); // 画条斜线
    if (mygradient != null) {
      _paint.shader = mygradient.createShader(arcRect);
    }
    if (isDash) {
      print("dash");
      canvas.drawPath(
        dashPath(_path,
            dashArray: CircularIntervalList<double>(
                <double>[DottedLineLenght, DottedSpacing]),
            dashOffset: DashOffset.absolute(1)),
        _paint,
      );
    } else {
      canvas.drawPath(_path, _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}