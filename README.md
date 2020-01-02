# luhenchang_plugin

A new Flutter plugin.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.



----------------------------
一. **Depend on it Add this to your package's pubspec.yaml file:**
[我的csdn博客地址](https://blog.csdn.net/m0_37667770/article/details/98072826),

二. 时间工具类的使用

 
      DateUtils.instance.getMilliseconds(formartDate:"2019-02-11 11月12日01")

-------------------------

      1.将时间格式转日期化为时间戳
        ///formartDate=2018年12月11日    或者    2019-12-11   或者    2018年11月15 11:14分89
        ///结果是毫秒
       int getMilliseconds({String formartDate = "1970-10-01 00:00:00"})
----------------
   
   
     2.格式化时间戳 
      ///timeSamp:毫秒值 
      ///format:"yyyy年MM月dd hh:mm:ss" "yyy?MM?dd hh?MM?dd" "yyyy:MM:dd"...... 
      ///结果： 2019?08?04 02?08?02 String getFormartDate(int
      timeSamp,{format="yyyy年MM月dd hh:mm:ss"})
   
---------------   
      3.获取从某一天开始到某一天结束的所有的中间日期，例如输入 startTime:2019:07:31  endTime:2019:08:31  就会返回所有的中间天数。
      ///startTime和endTime格式如下都可以
      ///使用:    List<String> mDate=DateUtils.instance.getTimeBettwenStartTimeAndEnd(startTime:"2019-07-11",endTime:"2019-08-29",format:"yyyy年MM月dd");
      ///结果:[2019年07月11, 2019年07月12, 2019年07月13, 2019年07月14, 2019年07月15, 2019年07月16, 2019年07月17, 2019年07月18, 2019年07月19, 2019年07月20, 2019年07月21, 2019年07月22, 2019年07月23, 2019年07月24, 2019年07月25, 2019年07月26, 2019年07月27, 2019年07月28, 2019年07月29, 2019年07月30, 2019年07月31, 2019年08月01, 2019年08月02, 2019年08月03, 2019年08月04, 2019年08月05, 2019年08月06, 2019年08月07, 2019年08月08, 2019年08月09, 2019年08月10, 2019年08月11, 2019年08月12, 2019年08月13, 2019年08月14, 2019年08月15, 2019年08月16, 2019年08月17, 2019年08月18, 2019年08月19, 2019年08月20, 2019年08月21, 2019年08月22, 2019年08月23, 2019年08月24, 2019年08月25, 2019年08月26, 2019年08月27, 2019年08月28, 2019年08月29]
      List<String> getTimeBettwenStartTimeAndEnd({startTime: String, endTime: String, format: String}) 
        
   
---------------
      4.获取从某一天开始和之后的多少天内的所有你需要格式化样式的时间日期。
      ///tarTime: 开始日期 2012-02-27 13:27:00 或者 "2012-02-27等....
      ///dayNumber：从startTime往后面多少天你需要输出
      ///formart:获取到的日期格式。"yyyy年MM月dd" "yyyy-MM-dd" "yyyy年" "yyyy年MM月" "yyyy年\nMM月dd"  等等
      ///使用：DateUtils.instance.getTimeStartTimeAndEnd(startTime:"2019-07-11",dayNumber:10,format:"yyyy年MM月dd");
      ///结果:[2019年07月11, 2019年07月12, 2019年07月13, 2019年07月14, 2019年07月15, 2019年07月16, 2019年07月17, 2019年07月18, 2019年07月19, 2019年07月20, 2019年07月21]
      List<String> getTimeStartTimeAndEnd({String startTime="1970-01-01",int dayNumber:1,String format="yyyy年MM月dd"})
          
--------------
   
      5.获取从某一天时间戳开始和之后的多少天内的所有你需要格式化样式的时间日期。
      ///startTime:输入其实时间的时间戳也可以。例如 1570723200000
      ///dayNumber:所需要后面的几天以内的日期数字 1
      ///format 输入时间格式
      List<TimeDate> getTimeStartTimeAndEndTime
      
-----------------

      6.获取某一个月的最后一天。
      ///我们能提供和知道的条件有:(当天的时间,)
      ///timeSamp:时间戳 单位（毫秒）
      ///format:想要的格式  "yyyy年MM月dd hh:mm:ss"  "yyy?MM?dd  hh?MM?dd" "yyyy:MM:dd"
      getEndMoth(int timeSamp, {format="yyyy年MM月dd hh:mm:ss"}) 

---------------
      
      7.获取某一个月的最后一天。
      ///我们能提供和知道的条件有:(当天的时间,)
      ///timeSamp:时间戳 单位（毫秒）
      ///format:想要的格式  "yyyy年MM月dd hh:mm:ss"  "yyy?MM?dd  hh?MM?dd" "yyyy:MM:dd"
      getEndMothFor({mothFormartTime="1970年01月01", format: String}) 
      
      
      
### 一,直接上图吧。
[github地址](https://github.com/luhenchang/flutter_time_axis)  
[博客地址](https://juejin.im/post/5d105d9af265da1b6f4380e6#heading-2)   
[视频教学地址](https://member.bilibili.com/v2#/upload-manager/article)  
![](https://user-gold-cdn.xitu.io/2019/6/24/16b87f5b67e6644e?w=2880&h=1636&f=png&s=2132827)

> `1.位置，上图可见,时间轴可以在左边，也可以在中间，当然了可以在任何位置。`  
  `2.时间轴样式，当然了我们时间轴比仅仅限制为一个圆圈是吧,当然了你的部件能写多炫酷，砸门的时间轴也可以,上图（圆里面爱，图片，黄色背景文字，其实都是一长串部件）。`   
  `3.线，我们需要和内容的高度一样，这里估计是很多人的痛点，没法自适应，这里也做到了。线的粗细，颜色，虚线间隔，渐变...当然砸门也实现了`

### 二 ,看一眼吧 如何实现。
    群里很多人都需要一个时间轴，对于时间轴自适应高度难倒了很多人。当然了，我试着搞了搞，搞了两种思路， 
    第一种有点low但是也能实现。我们知道Container是一个部件，它有一个decoration属性里面又一个  
    boder,而且boder可以设置left,top,right,bootom等让其显示。

代码如下：
    
```
 return Scaffold(
      body: ListView.builder(
        itemCount:10,
        itemBuilder:(context,index){
          return   Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin:EdgeInsets.only(left:10),
                height: 200,
                decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(
                          width: 3,
                          color: Colors.deepOrange,
                        ))),
                child:Text("内容"),
              ),
            ],
          );
        },

      ),
    );
```

![](https://user-gold-cdn.xitu.io/2019/6/24/16b882bbf92c5f52?w=632&h=1252&f=png&s=500230)  

当然很low吧。我们可以看到绘制完成时候可以通过border来绘制边来画出线。其实到这里我想简单的时间轴不用我写了吧？
Colum(
  圆圈，
  容器(border),
  圆圈
)  
![](https://user-gold-cdn.xitu.io/2019/6/24/16b88374f5194ce9?w=632&h=1252&f=png&s=377942)

我们看看border源码：

```

  switch (left.style) {
    case BorderStyle.solid:
      paint.color = left.color;
      path.reset();
      path.moveTo(rect.left, rect.bottom);
      path.lineTo(rect.left, rect.top);
      if (left.width == 0.0) {
        paint.style = PaintingStyle.stroke;
      } else {
        paint.style = PaintingStyle.fill;
        path.lineTo(rect.left + left.width, rect.top + top.width);
        path.lineTo(rect.left + left.width, rect.bottom - bottom.width);
        path.lineTo(rect.left, rect.bottom);

      }
      canvas.drawPath(path, paint);
      break;
    case BorderStyle.none:
      break;
  }
```
到这里我们可以发现，可以通过绘制边来进行时间轴的高度自适应，在Flutter里面又一个CustomPaint。因为画布可以知道部件自己的size那么我们就可以通过在canvas上画时间轴了。这样可以达到自适应。

下面关键代码：
通过CustomPaint来绘制时间线。设置绘制的各种样式。更加灵活相比与border
```
class MyPainterLeft extends CustomPainter {
  //虚线
  double DottedLineLenght;
  //虚线之间的间距
  double DottedSpacing;
  double circleSize;
  Gradient mygradient;
  bool isDash;
  Color LineColor;
  double paintWidth;
  MyPainterLeft(
      {this.circleSize,
        this.mygradient,
        this.isDash = false,
        this.DottedLineLenght = 5.0,
        this.DottedSpacing = 10.0,
        this.LineColor = Colors.redAccent,this.paintWidth=4});

  Paint _paint = Paint()
    ..strokeCap = StrokeCap.square //画笔笔触类型
    ..isAntiAlias = true;//是否启动抗锯齿//画笔的宽度
  Path _path = new Path();

  @override
  Future paint(Canvas canvas, Size size) {
    final Rect arcRect = Rect.fromLTWH(10, 5, 4, size.height);
    _paint.style = PaintingStyle.stroke; // 画线模式
    _paint.color = this.LineColor;
    _paint.strokeWidth=this.paintWidth;
    _path.moveTo(size.width, 0); // 移动起点到（20,40）
    _path.lineTo(size.width, size.height); // 画条斜线
    if (mygradient != null) {
      _paint.shader = mygradient.createShader(arcRect);
    }
    if (mygradient != null && isDash) {
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
```

三，使用：  
 
| 属性                 | 属性使用介绍       |  是否必须           |
|----------------------|--------------------|---------------------|
| int index            | 列表的index，用来搞定时间轴部件|   true     |
| double timeAxisSize  | 时间轴部件大小    |             true            |
| double contentLeft | 内容距离时间轴距离      | false       |
| Widget leftWidget | 请展示你的技术时间轴部件      | false       |
| double lineToLeft | 时间轴距屏幕左边距离     | false       |
| Gradient mygradient | 时间轴线是否渐变      | false       |
| bool isDash | 时间轴线是否是虚线 true or false     | false       |
| double DottedLineLenght| 虚线部分线段长度      | false       |
| double DottedSpacing | 虚线间隔      | false       |
| double marginLeft | 时间轴线开始画的起点。      | false       |
| Alignment alignment | 时间轴显示的位置  left|center      | false       |
| Widget centerRightWidget | 如果时间轴在中间，左边内容      | false       |
| Widget cententWight | 如果时间轴在中左边，中间的内容      | false       |
| Widget centerLeftWidget | 如果时间轴在中间，右边内容     | false       |
| double timeAxisLineWidth | 时间轴线的宽度      | false       |





 1.pubspec.yaml里面
   flutter_time_axis:  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;git: https://github.com/luhenchang/flutter_time_axis.git
    
2.实例1:

![](https://user-gold-cdn.xitu.io/2019/6/24/16b8854b03df617e?w=828&h=666&f=png&s=172056)  
![](https://user-gold-cdn.xitu.io/2019/6/24/16b884fb7573664f?w=632&h=1252&f=png&s=116245)

其他的:
![](https://user-gold-cdn.xitu.io/2019/6/24/16b88557b59c82c2?w=632&h=1252&f=png&s=114044)  
![](https://user-gold-cdn.xitu.io/2019/6/24/16b8855a11241c18?w=632&h=1252&f=png&s=109617)

![](https://user-gold-cdn.xitu.io/2019/6/24/16b88560a0f63f39?w=632&h=1252&f=png&s=110027)  
![](https://user-gold-cdn.xitu.io/2019/6/24/16b88564fa4dab81?w=2880&h=1636&f=png&s=2132827)
