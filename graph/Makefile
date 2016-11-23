# Copyright (C) 2009-2012 Derek Bruening <iye@alum.mit.edu>
# http://www.burningcutlery.com/derek/bargraph/
# http://code.google.com/p/bargraphgen/

OUTDIR := ./

BARGRAPH := ./bargraph.pl

SIZE := 700

SRCS := SPECjbb2013.gnuplot \

OBJS := $(patsubst %.gnuplot,$(OUTDIR)/%.eps,$(SRCS))

all: $(OBJS)

$(OUTDIR)/%.eps: %.gnuplot $(BARGRAPH)
	$(BARGRAPH) -eps $< > $@

clean:
	-rm $(OBJS)
