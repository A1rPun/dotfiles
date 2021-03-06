#!/bin/bash
# https://misc.flogisoft.com/bash/tip_colors_and_formatting
# http://sam.zoy.org/wtfpl/COPYING for more details.

#Backgrounds
for clbg in {40..47} {100..107} 49 ; do
	#Foregrounds
	for clfg in {30..37} {90..97} 39 ; do
		#Formatting
		for attr in 0 1 2 4 5 7 ; do
			#Print the result
			echo -en "\e[${attr};${clbg};${clfg}m ^[${attr};${clbg};${clfg}m \e[0m"
		done
		echo #Newline
	done
done
exit 0
