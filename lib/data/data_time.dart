import 'package:intl/intl.dart';

/*
 * 关于时间工具
 * @作者路很长
 * @路很长的博客地址 https://blog.csdn.net/m0_37667770/article/details/80903890
 * @路很长github  https://github.com/luhenchang/flutter_study
 */
class DateUtils {
  // 工厂模式
  factory DateUtils() => _getInstance();

  static DateUtils get instance => _getInstance();
  static DateUtils _instance;

  DateUtils._internal() {
    // 初始化
  }

  static DateUtils _getInstance() {
    if (_instance == null) {
      _instance = new DateUtils._internal();
    }
    return _instance;
  }

  ///将时间日期格式转化为时间戳
  ///formartDate=2018年12月11日    或者    2019-12-11   或者    2018年11月15 11:14分89
  ///结果是毫秒
  int getMilliseconds({String formartDate = "1970-10-01 00:00:00"}) {
    //年必须大于1970年
    String mYear = formartDate.substring(0, 4);
    if (int.parse(mYear) < 1970) {
      mYear = "1970";
    }
    var result;
    try {
      result = mYear +
          "-" +
          formartDate.substring(5, 7) +
          "-" +
          formartDate.substring(8, 10);
      if (formartDate.toString().length >= 13 &&
          formartDate.substring(10, 13) != null) {
        result += "" + formartDate.substring(10, 13);
      }
      if (formartDate.toString().length >= 17 &&
          formartDate.toString().substring(14, 16) != null) {
        result += ":" + formartDate.substring(14, 16);
      }
      if (formartDate.toString().length >= 19 &&
          formartDate.substring(17, 19) != null) {
        result += ":" + formartDate.substring(17, 19);
      }
      print(result);
      var dateTime = DateTime.parse(result);
      return dateTime.millisecondsSinceEpoch;
    } catch (e) {
      throw e;
    }
  }
  ///格式化时间戳
  ///timeSamp:毫秒值
  ///format:"yyyy年MM月dd hh:mm:ss"  "yyy?MM?dd  hh?MM?dd" "yyyy:MM:dd"......
  ///结果： 2019?08?04  02?08?02
  String getFormartDate(int timeSamp,{format="yyyy年MM月dd hh:mm:ss"}){
    var DateFormart = new DateFormat(format);
    var dateTime = new DateTime.fromMillisecondsSinceEpoch(timeSamp);
    String formartResult = DateFormart.format(dateTime);
    return formartResult;
  }
  ///1.获取从某一天开始到某一天结束的所有的中间日期，例如输入 startTime:2019:07:31  endTime:2019:08:31  就会返回所有的中间天数。
  ///startTime和endTime格式如下都可以
  ///使用:    List<String> mDate=DateUtils.instance.getTimeBettwenStartTimeAndEnd(startTime:"2019-07-11",endTime:"2019-08-29",format:"yyyy年MM月dd");
  ///结果:[2019年07月11, 2019年07月12, 2019年07月13, 2019年07月14, 2019年07月15, 2019年07月16, 2019年07月17, 2019年07月18, 2019年07月19, 2019年07月20, 2019年07月21, 2019年07月22, 2019年07月23, 2019年07月24, 2019年07月25, 2019年07月26, 2019年07月27, 2019年07月28, 2019年07月29, 2019年07月30, 2019年07月31, 2019年08月01, 2019年08月02, 2019年08月03, 2019年08月04, 2019年08月05, 2019年08月06, 2019年08月07, 2019年08月08, 2019年08月09, 2019年08月10, 2019年08月11, 2019年08月12, 2019年08月13, 2019年08月14, 2019年08月15, 2019年08月16, 2019年08月17, 2019年08月18, 2019年08月19, 2019年08月20, 2019年08月21, 2019年08月22, 2019年08月23, 2019年08月24, 2019年08月25, 2019年08月26, 2019年08月27, 2019年08月28, 2019年08月29]
  List<String> getTimeBettwenStartTimeAndEnd({startTime: String, endTime: String, format: String}) {
    var mDateList = List<String>();
    //记录往后每一天的时间搓，用来和最后一天到做对比。这样就能知道什么时候停止了。
    int allTimeEnd = 0;
    //记录当前到个数(相当于天数)
    int currentFlag = 0;
    DateTime startDate = DateTime.parse(startTime);
    DateTime endDate = DateTime.parse(endTime);
    var mothFormatFlag = new DateFormat(format);
    while (endDate.millisecondsSinceEpoch > allTimeEnd) {
      allTimeEnd =
          startDate.millisecondsSinceEpoch + currentFlag * 24 * 60 * 60 * 1000;
      var dateTime = new DateTime.fromMillisecondsSinceEpoch(
          startDate.millisecondsSinceEpoch + currentFlag * 24 * 60 * 60 * 1000);
      String nowMoth = mothFormatFlag.format(dateTime);
      mDateList.add(nowMoth);
      currentFlag++;
    }
    return mDateList;
  }
  ///获取从某一天开始和之后的多少天内的所有你需要格式化样式的时间日期。
  ///tarTime: 开始日期 2012-02-27 13:27:00 或者 "2012-02-27等....
  ///dayNumber：从startTime往后面多少天你需要输出
  ///formart:获取到的日期格式。"yyyy年MM月dd" "yyyy-MM-dd" "yyyy年" "yyyy年MM月" "yyyy年\nMM月dd"  等等
  ///使用：DateUtils.instance.getTimeStartTimeAndEnd(startTime:"2019-07-11",dayNumber:10,format:"yyyy年MM月dd");
  ///结果:[2019年07月11, 2019年07月12, 2019年07月13, 2019年07月14, 2019年07月15, 2019年07月16, 2019年07月17, 2019年07月18, 2019年07月19, 2019年07月20, 2019年07月21]
  List<String> getTimeStartTimeAndEnd({String startTime="1970-01-01",int dayNumber:1,String format="yyyy年MM月dd"}) {
    var mDateList = List<String>();
    //记录往后每一天的时间搓，用来和最后一天到做对比。这样就能知道什么时候停止了。
    //记录当前到个数(相当于天数)
    int currentFlag =0;
    DateTime startDate = DateTime.parse(startTime);
    var mothFormatFlag = new DateFormat(format);
    print(startDate.millisecondsSinceEpoch);
    while (dayNumber >= currentFlag) {
      var dateTime = new DateTime.fromMillisecondsSinceEpoch(
          startDate.millisecondsSinceEpoch + currentFlag * 24 * 60 * 60 * 1000);
      String nowMoth = mothFormatFlag.format(dateTime);
      mDateList.add(nowMoth);
      currentFlag++;
    }
    return mDateList;
  }
  ///获取从某一天时间戳开始和之后的多少天内的所有你需要格式化样式的时间日期。
  ///startTime:输入其实时间的时间戳也可以。例如 1570723200000
  ///dayNumber:所需要后面的几天以内的日期数字 1
  ///format 输入时间格式
  List<TimeDate> getTimeStartTimeAndEndTime(
      {startTime: int, dayNumber: int, format: String}) {
    var mDateList = List<TimeDate>();
    //记录往后每一天的时间搓，用来和最后一天到做对比。这样就能知道什么时候停止了。
    int allTimeEnd = 0;
    //记录当前到个数(相当于天数)
    int currentFlag = 0;
    var mothFormatFlag = new DateFormat(format);
    while (dayNumber >= currentFlag) {
      TimeDate timeDate = new TimeDate();
      var dateTime = new DateTime.fromMillisecondsSinceEpoch(
          startTime + currentFlag * 24 * 60 * 60 * 1000);
      String nowMoth = mothFormatFlag.format(dateTime);
      timeDate.DateTime = nowMoth;
      timeDate.week = dateTime.weekday;
      mDateList.add(timeDate);
      currentFlag++;
    }
    return mDateList;
  }



  ///获取某一个月的最后一天。
  ///我们能提供和知道的条件有:(当天的时间,)
  ///timeSamp:时间戳 单位（毫秒）
  ///format:想要的格式  "yyyy年MM月dd hh:mm:ss"  "yyy?MM?dd  hh?MM?dd" "yyyy:MM:dd"
  getEndMoth(int timeSamp, {format="yyyy年MM月dd hh:mm:ss"}) {
    var dateFormart = new DateFormat(format);
    var dateTime = new DateTime.fromMillisecondsSinceEpoch(timeSamp);
    var DateNextMonthDate = new DateTime(dateTime.year, dateTime.month + 1, 1);
    int nextTimeSamp =
        DateNextMonthDate.millisecondsSinceEpoch - 24 * 60 * 60 * 1000;
    //取得了下一个月1号码时间戳
    var dateTimeeee = new DateTime.fromMillisecondsSinceEpoch(nextTimeSamp);
    String formartResult = dateFormart.format(dateTimeeee);
    return formartResult;
  }

  ///获取某一个月的最后一天。
  ///我们能提供和知道的条件有:(当天的时间,)
  ///timeSamp:时间戳 单位（毫秒）
  ///format:想要的格式  "yyyy年MM月dd hh:mm:ss"  "yyy?MM?dd  hh?MM?dd" "yyyy:MM:dd"
  getEndMothFor({mothFormartTime="1970年01月01", format: String}) {
    DateTime startDate = DateTime.parse(mothFormartTime);
    var dateFormart = new DateFormat(format);
    //DateTime获取年和月
    var dateTime = new DateTime.fromMillisecondsSinceEpoch(
        startDate.millisecondsSinceEpoch);
    //通过DateTime获取当月的下个月第一天。
    var DateNextMonthDate = new DateTime(dateTime.year, dateTime.month + 1, 1);
    //下一个月的第一天时间戳减去一天的时间戳就是当前月的最后一天的时间戳
    int nextTimeSamp =
        DateNextMonthDate.millisecondsSinceEpoch - 24 * 60 * 60 * 1000;
    //取得了下一个月1号码时间戳
    var dateTimeeee = new DateTime.fromMillisecondsSinceEpoch(nextTimeSamp);
    String formartResult = dateFormart.format(dateTimeeee);
    return formartResult;
  }
}

class TimeDate {
  String DateTime;
  int week;
}
