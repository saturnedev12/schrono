part of widgets;

class SmallButton extends StatelessWidget {
  const SmallButton({super.key, this.onPressed, required this.icon});
  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ElevatedButton(
        child: Icon(
          icon,
          size: 10,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
