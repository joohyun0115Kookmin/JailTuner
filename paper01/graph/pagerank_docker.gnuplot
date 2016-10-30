call "common.gnuplot"

set zeroaxis
set yrange [0:]
set xlabel "cores" font "arial,20"
set ylabel "Throughput(jobs/min)" font "arial,20"
set ytics format " %.0s%c" font "arial,20"
set xtics  font "arial,20"
set title font "arial,20"
set term eps
set output 'pagerank_docker.eps'
set key at graph 1,0.55
set font  "arial,20"


plot \
"./data/pagerank_default.data" every :::0::0 with lp title "page rank", \
"./data/pagerank_8.data" every :::0::0 with lp title "page rank per lock", \
"./data/pagerank_15.data" every :::0::0 with lp title "page rank per socket"
