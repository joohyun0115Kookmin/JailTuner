set font "arial,12" 
set border 3 front lt black linewidth 0.500 dashtype solid
set boxwidth 0.80 absolute
set style fill   pattern 1 border lt -1
#set style fill  solid 1.00 border lt -1
set grid nopolar
set grid noxtics nomxtics ytics nomytics noztics nomztics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   lt 0 linewidth 0.600,  lt 0 linewidth 0.600
set key above horizontal Left reverse enhanced autotitle columnhead box lt black linewidth 2.000 dashtype solid font "arial,18" 
set style histogram columnstacked title textcolor lt 1 
set datafile missing '-'
set style data histograms
set xtics border in scale 1,0.5 nomirror norotate font "arial,18" autojustify
#set xtics rotate by -45
set xtics  norangelimit
set xtics   ()
set ytics border in scale 0,0 mirror norotate  autojustify font "arial,18"
set ylabel "CPU utilization"  font "arial,14"
set ztics border in scale 0,0 nomirror norotate  autojustify
set cbtics border in scale 0,0 mirror norotate  autojustify
set rtics axis in scale 0,0 nomirror norotate  autojustify
set paxis 1 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 1 tics autofreq  rangelimit
set paxis 2 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 2 tics autofreq  rangelimit
set paxis 3 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 3 tics autofreq  rangelimit
set paxis 4 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 4 tics autofreq  rangelimit
set paxis 5 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 5 tics autofreq  rangelimit
set paxis 6 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 6 tics autofreq  rangelimit
set paxis 7 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 7 tics autofreq  rangelimit
#set yrange [ 0.00 : * ] noreverse nowriteback
x = 0.0
i = 20

set yrange [0:100] 
set format y '%2.0f%%

set output 'nb_cpuutils.eps'
set term eps
plot './data/nb_cpuutils.data' using 2 ti col, '' using 3 ti col, '' \
		using 4 ti col, '' using 5 ti col, '' using 6:key(1) ti col

