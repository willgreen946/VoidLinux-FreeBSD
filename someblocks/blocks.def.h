//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
        {"[ FreeBSD 13.1]", 				0,		1},
        {"[  ", "echo $(apm -l)%]",    		60,             1},
        {"[ ", "date '+%a %b %d %I:%M]'",              60,             1},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
