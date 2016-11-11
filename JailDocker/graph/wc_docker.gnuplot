call "common.gnuplot"

set zeroaxis
set yrange [0:]
set xlabel "cores" font "arial,20"
set ylabel "Throughput(jobs/min)" font "arial,20"
set ytics format " %.0s%c" font "arial,20"
set xtics  font "arial,20"
set title font "arial,20"
set term eps
set output 'wc_docker.eps'
set key at graph 1,0.55
#set linetype 1 lw 12 lc rgb '#ff0000'
set font  "arial,20"


plot \
"./data/wc_default.data" every :::0::0 with lp title "word count PS GC",\
"./data/wc_default_g1.data" every :::0::0 with lp title "word count G1 GC",\
"./data/wc_15.data" every :::0::0 with lp title "word count per-socket", \
"./data/wc_30.data" every :::0::0 with lp title "word count partition"
