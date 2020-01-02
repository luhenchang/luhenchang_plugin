import 'package:flutter/material.dart';
import 'package:luhenchang_plugin/time/data_time_utils/data_time.dart';
import 'package:luhenchang_plugin/time/time_line_utils/time_line_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<TimeWidgetData> mData = new List();

  @override
  void initState() {
    super.initState();
    Widget widgetOne = Image.asset("img/app05.png");
    mData.add(
      TimeWidgetData("img/app01.png", "1.位置，上图可见,时间轴可以在左边，也可以在中间，当然了可以在任何位置。",
          "2.时间轴样式，当然了我们时间轴比仅仅限制为一个圆圈是吧,当然了你的部件能写多炫酷，砸门的时间轴也可以,上图（圆里面爱，图片，黄色背景文字，其实都是一长串部件）。",
          widgetCenterWidget: Container(
            color: Colors.orange,
            width:500,
            height: 50,
          ),
          starColor: Colors.redAccent,
          endColor: Colors.deepOrangeAccent),
    );
    mData.add(
      TimeWidgetData("img/app02.png", "第二行内容修改", "圆里面爱，图片，黄色背景文字，其实都是一长串部件）。",
          widgetCenterWidget: Image.asset("img/app05.png"),
          starColor: Colors.deepOrangeAccent,
          endColor: Colors.blue),
    );
    mData.add(
      TimeWidgetData("img/app03.png", "在中间，当然了可以在任何位置。",
          "2.时间轴样式，当然了我们时间轴比仅仅限制为一个圆圈是吧,当然了你的部件能写多炫酷，砸门的时间轴也）。",
          widgetCenterWidget:Icon(Icons.accessible,size:40,color:Colors.orange,),
          starColor: Colors.blue,
          endColor: Colors.yellow),
    );
    mData.add(
      TimeWidgetData("img/app04.png", "1.位置，上图可见,时间轴可以在左边，也可以在中间，当然了可以在任何位置。",
          "2.时间轴样式，群里很多人都需要一个时间轴，对于时间轴自适应高度难倒了很多人。当然了，我试着搞了搞，搞了两种思路，第一种有点low但是也能实现。我们知道。",
          widgetCenterWidget:Row(children: <Widget>[
            Image.asset("img/app05.png",width:200,height:100,),
            Container(width:50,height:50,color:Colors.deepOrangeAccent,)
          ],),
          starColor: Colors.yellow,
          endColor: Colors.blue),
    );
    mData.add(
      TimeWidgetData("img/app02.png", "1.位置，上图可见,时间轴可以在左边，也可以在中间，当然了可以在任何位置。",
          "2.时间轴样式，群里很多人都需要一个时间轴，对于时间轴自适应高度难倒了很多人。当然了，我试着搞了搞，搞了两种思路，第一种有点low但是也能实现。我们知道。",
          widgetCenterWidget: Padding(child:Text("时间轴问题",style:TextStyle(color:Colors.deepOrange,fontSize:36),),padding:EdgeInsets.symmetric(vertical:20),),
          starColor: Colors.redAccent,
          endColor: Colors.deepOrangeAccent),
    );
    mData.add(
      TimeWidgetData(
        "img/app01.png",
        "1.位置，上图可见,时间轴可以在左边，也可以在中间，当然了可以在任何位置。",
        "2.时间轴样式，群里很多人都需要一个时间轴，对于时间轴自适应高度难倒了很多人。当然了，我试着搞了搞，搞了两种思路，第一种有点low但是也能实现。我们知道。",
        widgetCenterWidget: widgetOne,
          starColor: Colors.redAccent,
          endColor: Colors.deepOrangeAccent
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Text(
              "获取时间戳",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Padding(
              child: Text(
                "说明时间格式要求 年>1970年，且符合常规时间格式化规则即可",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                textAlign: TextAlign.left,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
            ),
            Text("   \n\n   输入:2019-02-11 11月12日01" +
                "   \n   结果:" +
                DateUtils.instance
                    .getMilliseconds(formartDate: "2019-02-11 11月12日01")
                    .toString()),
            Text("   \n\n   输入:2019-02-11 11月12日12" +
                "   \n   结果:" +
                DateUtils.instance
                    .getMilliseconds(formartDate: "2019-02-11 11月12日12")
                    .toString()),
            Text("   \n\n   输入:2019-02-11 11-12-12" +
                "   \n   结果:" +
                DateUtils.instance
                    .getMilliseconds(formartDate: "2019-02-11 11-12-12")
                    .toString()),
            Text("   \n\n   输入:2011年01月12 11n12b12" +
                "   \n   结果:" +
                DateUtils.instance
                    .getMilliseconds(formartDate: "2011年01月12 11n12b12")
                    .toString()),
            Text(
              "格式化时间戳:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Text(
                "   \n\n   输入:2019年12月27 11:12:12对应的时间戳  \n   需求格式比较花哨：yyyy🥀mm🈷️dd ss🐱MM⏱mm" +
                    " \n   结果:" +
                    DateUtils.instance
                        .getFormartDate(
                            DateUtils.instance.getMilliseconds(
                                formartDate: "2019年12月27 11:12:12"),
                            format: "yyyy🥀mm🈷️dd ss🐱MM⏱mm")
                        .toString()),
            Text(DateUtils.instance
                .getTimeStartTimeAndEnd(startTime: "2019-10-11")
                .toString()),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: mData.length,
                itemBuilder: (context, index) {
                  return PaintCirLineItem(
                    30,
                    index,
                    contentLeft: 50,
                    leftWidget: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(11800),
                        image: DecorationImage(
                            image: AssetImage(mData[index].imgUrl)),
                      ),
                    ),
                    mygradient:
                        new LinearGradient(begin:Alignment.topCenter,end:Alignment.bottomCenter,colors: [mData[index].starColor,mData[index].endColor]),
                    marginLeft: 5,
                    isDash: true,
                    DottedLineLenght: 5,
                    DottedSpacing: 10.0,
                    leftLineColor: Colors.green,
                    alignment: Alignment.centerLeft,
                    centerRightWidget: Text("2019年11月20日"),
                    centerLeftWidget: Text("时间结束"),
                    cententWight: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(mData[index].widgetContend),
                          mData[index].widgetCenterWidget,
                          Text(mData[index].widgetEndString),
                        ],
                      ),
                    ),
                    timeAxisLineWidth:3,
                  );
                })
          ],
        ),
      ),
    );
  }
}

class TimeWidgetData {
  String imgUrl = "img/app01.png";
  String widgetContend = "我们中国人";
  String widgetEndString = "结束了";
  Color starColor;
  Color endColor;
  Widget widgetCenterWidget = Container(
    color: Colors.green,
    width: 20,
    height: 30,
  );

  TimeWidgetData(this.imgUrl, this.widgetContend, this.widgetEndString,
      {this.widgetCenterWidget, this.starColor, this.endColor});
}
