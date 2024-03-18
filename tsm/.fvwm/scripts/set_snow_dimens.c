// set_snow_dimens.c by Luke L 5.27.23
// Used by my fvwm config to calculate and set the dimensions of some of its windows
// This requires that you have xrandr installed. Xrandr is used to get the screen dimensions.

#include <stdio.h>
#include <stdlib.h>

void die(const char *str)
{
	fprintf(stderr, "set_snow_dimens.c: error: %s\n", str);
	exit(1);
}

int main(void)
{
	// Internal variables (used only by this program)
	// All dimension values are specified in pixels
	const int iTitleHeight = 20;
	const int iBorderWidth = 5;

	// Constant snow theme dimensions
	const int iLeftClusterWidth = 116;
	const int iTopClusterHeight = 75;
	const int iSidePanelY = 644;
	const int iDefaultSnowPanelWidth = 1378;

	// Terminal emulator dimensions
	const int iTermBorderWidth = 2;
	const int iTermBorderSize = iTermBorderWidth * 2;
	const int iTermCharWidth = 8;
	const int iTermCharHeight = 17;

	// Double the size of the border width
	int iBorderSize = iBorderWidth * 2;

	// Pixels available for XPenguins to walk around in at the top of the snow space
#if 0
	int iPenguinSpace = 34;
#else
	int iPenguinSpace = 0;
#endif

	// Get the X screen dimensions by reading xrandr's output
	int iScreenWidth, iScreenHeight;

	FILE *fp = popen("xrandr", "r");
	if (fp == NULL)
		die("could not open xrandr pipe");

	// Used to ignore numbers when scanning xrandr output
	int iIgnore;

	if (fscanf(
		fp,
		"Screen %d: minimum %d x %d, current %d x %d",
		&iIgnore,
		&iIgnore,
		&iIgnore,
		&iScreenWidth,
		&iScreenHeight
	) != 5)
		die("error reading xrandr output");
	
	if (pclose(fp) == -1)
		die("could not close xrandr pipe");

	// Fvwm style variables
	int BorderWidth = iBorderWidth;
	int HandleWidth = iBorderWidth;

	// Title height
	// This is not set the same way as the normal fvwm style variables
	int fvwmTitleHeight = iTitleHeight;

	// Snow theme variables
	int snowSpaceLeft = iLeftClusterWidth + iBorderSize;
	int snowSpaceTop = iTopClusterHeight + iBorderSize + iPenguinSpace;
	int snowSpaceWidth = iScreenWidth - iBorderSize - snowSpaceLeft;
	int snowSpaceHeight = iScreenHeight - iBorderSize - iTitleHeight - snowSpaceTop;

	int snowSpaceWidthHalf = (iScreenWidth - snowSpaceLeft) / 2 - iBorderSize;
	int snowSpaceHeightHalf = (iScreenHeight - snowSpaceTop) / 2 - iBorderSize - iTitleHeight;
	int snowSpaceCenterX = snowSpaceLeft + (iScreenWidth - snowSpaceLeft) / 2;
	int snowSpaceCenterY = snowSpaceTop + (iScreenHeight - snowSpaceTop) / 2;

	int snowSidePanelY = iSidePanelY;
	int snowSidePanelHeight = iScreenHeight - iSidePanelY - iBorderSize;

	int snowSnowPanelWidth = iDefaultSnowPanelWidth;
	int snowSnowPanelHeight = iTopClusterHeight;

	int snowTopSpaceWidth = iScreenWidth - snowSpaceLeft - snowSnowPanelWidth - iBorderSize * 2;
	int snowTopSpaceHeight = iTopClusterHeight - iTitleHeight;

	int iSnowTopSpaceLeftoverWidth = (snowTopSpaceWidth - iTermBorderSize) % iTermCharWidth;
	snowSnowPanelWidth += iSnowTopSpaceLeftoverWidth;

	int snowTopSpaceX = snowSpaceLeft + snowSnowPanelWidth + iBorderSize;

	// Output commands for Fvwm to read
#define	PRINT_NAME_AND_VAL(variableName)	printf(#variableName " %d\n", variableName)
#define	STYLE_SET(styleVariableName)		printf("Style * ");PRINT_NAME_AND_VAL(styleVariableName)
#define INFOSTORE_ADD(infoStoreVariableName)	printf("InfoStoreAdd ");PRINT_NAME_AND_VAL(infoStoreVariableName)
	printf("TitleStyle Height %d\n", fvwmTitleHeight);
	STYLE_SET(BorderWidth);
	STYLE_SET(HandleWidth);
	INFOSTORE_ADD(snowSpaceLeft);
	INFOSTORE_ADD(snowSpaceTop);
	INFOSTORE_ADD(snowSpaceWidth);
	INFOSTORE_ADD(snowSpaceHeight);
	INFOSTORE_ADD(snowSpaceWidthHalf);
	INFOSTORE_ADD(snowSpaceHeightHalf);
	INFOSTORE_ADD(snowSpaceCenterX);
	INFOSTORE_ADD(snowSpaceCenterY);
	INFOSTORE_ADD(snowSidePanelY);
	INFOSTORE_ADD(snowSidePanelHeight);
	INFOSTORE_ADD(snowSnowPanelWidth);
	INFOSTORE_ADD(snowSnowPanelHeight);
	INFOSTORE_ADD(snowTopSpaceWidth);
	INFOSTORE_ADD(snowTopSpaceHeight);
	INFOSTORE_ADD(snowTopSpaceX);
	return 0;
}
