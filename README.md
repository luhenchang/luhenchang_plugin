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