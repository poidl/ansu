###
###		 DJ subroutine library gamma.a
###
FC=gfortran

SOURCES = atg.f \
	  depth-ns.f \
	  depth-scv.f \
	  derthe.f \
	  eosall.f \
	  eos8d.f \
	  e-solve.f \
	  gamma-errors.f \
	  gamma-n.f \
	  goor.f \
	  gamma-qdr.f \
	  get-lunit.f \
	  goor-solve.f \
	  index.f \
	  neutral-surfaces.f \
	  ocean-test.f \
	  scv-solve.f \
	  sig-vals.f \
	  stp-interp.f \
	  svan.f \
	  theta.f

FSOURCES = read-nc.F


OBJECTS = $(SOURCES:.f=.o) $(FSOURCES:.F=.o)

FFLAGS = -DPWD="'`pwd`'"  -O4 -ffixed-line-length-none 

.KEEP_STATE :
.PRECIOUS :
 

################################################################################
 

gamma.a: gamma.a($(OBJECTS))
	ranlib gamma.a


clean:
	-rm -f *% *.bak
