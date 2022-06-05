import 'package:flutter/material.dart';

class DateTimePick extends StatefulWidget {
  const DateTimePick({Key? key}) : super(key: key);

  @override
  State<DateTimePick> createState() => _DateTimePickState();
}

class _DateTimePickState extends State<DateTimePick> {
  DateTime dateTime = DateTime.now();
  TimeOfDay timeOfDay = TimeOfDay.now();
  DateTimeRange dateTimeRange = DateTimeRange(
    start: DateTime(2022, 11, 5),
    end: DateTime(2022, 12, 12),
  );
  @override
  Widget build(BuildContext context) {
    final hours = timeOfDay.hour.toString().padLeft(2, '0');
    final minutes = timeOfDay.minute.toString().padLeft(2, '0');
    final start = dateTimeRange.start;
    final end = dateTimeRange.end;
    final difference = dateTimeRange.duration;
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Time Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // date picker
            Text("${dateTime.year}-${dateTime.month}-${dateTime.day}"),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: dateTime,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100));
                // if click on cancel button then newDate will be null
                if (newDate == null) return;
                // if click on ok button then newDate will be selected date
                setState(() {
                  dateTime = newDate;
                });
              },
              child: Text(
                'Select Date',
              ),
            ),
            // date picker end
            SizedBox(
              height: 10,
            ),
            // time picker
            Text("${hours}:${minutes}"),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? newTime = await showTimePicker(
                    context: context, initialTime: timeOfDay);
                // if click on cancel button then newTime will be null
                if (newTime == null) return;
                // if click on ok button then newTime will be selected time
                setState(() {
                  timeOfDay = newTime;
                });
              },
              child: Text(
                'Select Time',
              ),
            ),
            // time picker end
            SizedBox(
              height: 10,
            ),
            // date and time picker
            Text(
              'Date and Time',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final date = await pickDate();
                    if (date == null) return;
                    setState(() {
                      dateTime = date;
                    });
                  },
                  child: Text(
                      '${dateTime.year}-${dateTime.month}-${dateTime.day} '),
                ),
                SizedBox(
                  width: 12,
                ),
                ElevatedButton(
                  onPressed: () async {
                    final time = await pickTime();
                    if (time == null) return;
                    setState(() {
                      timeOfDay = time;
                    });
                  },
                  child: Text("${hours}:${minutes}"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // date range
            Text(
              'Date Range',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: pickDateRange,
                    child: Text('${start.year}-${start.month}-${start.day}'),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: pickDateRange,
                    child: Text('${end.year}-${end.month}-${end.day}'),
                  ),
                ),
              ],
            ),
            // date range end
            SizedBox(
              height: 10,
            ),
            // difference between to dates
            Text(
              'Difference between two dates: ${difference.inDays} days',
            ),
          ],
        ),
      ),
    );
  }

  // date pic
  Future<DateTime?> pickDate() {
    return showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: DateTime(1900),
        lastDate: DateTime(2030));
  }

  // time pick
  Future<TimeOfDay?> pickTime() {
    return showTimePicker(context: context, initialTime: timeOfDay);
  }

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      initialDateRange: dateTimeRange,
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime(2030),
    );
    if (newDateRange == null) return;
    setState(() {
      dateTimeRange = newDateRange;
    });
  }
}
