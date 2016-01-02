#include <ctype.h>

double my_atof(char s[])
{
	int i;
	int sign;
	double val;
	double power;
	i = 0;
	for (i = 0; isspace(s[i]); i++)  /* skip white space */
		;
	sign = (s[i] == '-') ? -1 : 1;
	if (s[i] == '+'|| s[i] == '-')
		i++;
	for (val = 0.0; isdigit(s[i]); i++)
		val = val * 10.0 + (s[i] - '0');
	if (s[i] == '.')
		i++;
	for(power = 1.0; isdigit(s[i]); i++)
	{
		val = val * 10.0 + (s[i] - '0');
		power *= 10.0;
	}
	return sign * val / power;

}
