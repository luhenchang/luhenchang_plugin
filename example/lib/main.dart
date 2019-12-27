import 'package:flutter/material.dart';
import 'package:luhenchang_plugin/data/data_time.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ListView(
          children: <Widget>[
            Text("获取时间戳",style:TextStyle(fontWeight:FontWeight.bold,fontSize:25),textAlign:TextAlign.center,),
            Padding(child:Text("说明时间格式要求 年>1970年，且符合常规时间格式化规则即可",style:TextStyle(fontWeight:FontWeight.bold,fontSize:15),textAlign:TextAlign.left,),padding:EdgeInsets.symmetric(horizontal:20),),
            Text("   \n\n   输入:2019-02-11 11月12日01"+"   \n   结果:"+DateUtils.instance.getMilliseconds(formartDate:"2019-02-11 11月12日01").toString()),
            Text("   \n\n   输入:2019-02-11 11月12日12"+"   \n   结果:"+DateUtils.instance.getMilliseconds(formartDate:"2019-02-11 11月12日12").toString()),
            Text("   \n\n   输入:2019-02-11 11-12-12"+"   \n   结果:"+DateUtils.instance.getMilliseconds(formartDate:"2019-02-11 11-12-12").toString()),
            Text("   \n\n   输入:2011年01月12 11n12b12"+"   \n   结果:"+DateUtils.instance.getMilliseconds(formartDate:"2011年01月12 11n12b12").toString()),


            Text("格式化时间戳:",style:TextStyle(fontWeight:FontWeight.bold,fontSize:25),textAlign:TextAlign.center,),
            Text("   \n\n   输入:2019年12月27 11:12:12对应的时间戳  \n   需求格式比较花哨：yyyy🥀mm🈷️dd ss🐱MM⏱mm"+   " \n   结果:"+DateUtils.instance.getFormartDate(DateUtils.instance.getMilliseconds(formartDate:"2019年12月27 11:12:12"),format:"yyyy🥀mm🈷️dd ss🐱MM⏱mm").toString()),
            Text(DateUtils.instance.getTimeStartTimeAndEnd(startTime:"2019-10-11").toString()),
          ],
        ),
      ),
    );
  }
}
