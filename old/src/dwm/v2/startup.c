void luke_startup(void)
{
	char buf[100];
	sprintf(buf, "xsetroot -solid \"%s\"", col_bg);
	system(buf);
	system("xrdb /home/luke/.config/xres/snow");
	system("killall slstatus");
	system("/home/luke/src/slstatus/slstatus &");
}
