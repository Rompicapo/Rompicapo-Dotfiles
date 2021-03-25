//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    {"AUR ", "paru -Qu | wc -l ",      300,             0},
    {"📦 ", "pacman -Qu | wc -l ",      300,             0},
    {"GPU ", "nvidia-smi | awk 'NR==10 {print$3,$2}'",      30,             0},
	{"RAM ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},
    {"CPU ", "sensors | awk '/^Package/{print $4}'",      30,             0},
    {"", "date '+%b %d (%a) %I:%M%p'",  5,  0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
