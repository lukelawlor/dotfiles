// Outdated
// xrr.c by Luke L 4.22.23
// x read xrandr
// This program returns the screen width and height in X11
// The output of xrandr should be piped into this program
// When this program is run with no arguments, the screen width is output
// Else, the screen height is output
#include <stdio.h>
int main(int argc, char **argv)
{
	int ignore, width, height;
	scanf(
		"Screen 0: minimum %d x %d, current %d x %d",
		&ignore,
		&ignore,
		&width,
		&height
	);
	if (argc == 1)
		printf("%d", width);
	else
		printf("%d", height);
	return 0;
}
