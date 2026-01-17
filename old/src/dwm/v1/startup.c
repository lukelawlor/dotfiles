void cata_startup(void)
{
	char buf[100];
	sprintf(buf, "xsetroot -solid \"%s\"", col_gray1);
	system(buf);
	system("xrdb /home/cata/.config/xres/dwmg");
	system("killall slstatus");
	system("/home/cata/src/slstatus/slstatus &");
}
