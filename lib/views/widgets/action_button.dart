part of widgets;

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, this.onPressed, required this.label});
  final void Function()? onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(100, 100),
        shape: CircleBorder(
            side: BorderSide(
                color: (onPressed == null)
                    ? CupertinoColors.systemFill
                    : Theme.of(context).primaryColor,
                width: 4,
                strokeAlign: 3)),
        padding: EdgeInsets.zero,
      ),
      child: Text(
        label,
        style: kTextStyle(context),
      ),
    );
  }
}
