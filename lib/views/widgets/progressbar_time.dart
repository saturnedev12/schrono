part of widgets;

class ProgressBarTime extends StatelessWidget {
  const ProgressBarTime({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      onAnimationEnd: () {},
      linearGradient:
          LinearGradient(colors: [Colors.red, Colors.orange, Colors.yellow]),
      radius: 150.0,
      lineWidth: 10.0,
      percent: 0.8,
      animation: true,

      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Definir un minuteur pour:',
            style: kTextStyle(context),
          ),
          Text(
            "04:50",
            style: kTextStyle(context).copyWith(fontSize: 50),
          ),
          TextButton.icon(
            onPressed: null,
            label: Text(
              "12:50",
              style: kTextStyle(context),
            ),
            icon: Icon(
              CupertinoIcons.bell,
              color:
                  (MediaQuery.of(context).platformBrightness == Brightness.dark)
                      ? CupertinoColors.white
                      : CupertinoColors.black,
            ),
          ),
          Container(
            //color: Colors.red,
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmallButton(
                  icon: CupertinoIcons.minus,
                  onPressed: () {},
                ),
                SmallButton(
                  icon: CupertinoIcons.add,
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),

      backgroundColor: CupertinoColors.systemFill,
      // progressColor: Colors.blue,
      circularStrokeCap: CircularStrokeCap.round,
    );
  }
}
