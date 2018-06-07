#initial variables
#Fortran Compiler
FC = gfortran

#Compiler flags
FCFLAGS = -c

#Linker flags
LINKER = $(FC) -o

#Link flags
FCLINKS = -g

#object files
OBJS = call2.o two.o three.o

#program name
PROGS = count.out

#target : dependency
#<tab> command
$(PROGS): $(OBJS)
	$(LINKER) $(PROGS) $(OBJS) $(FCLINKS)

#definition for dependencies
call2.o: call2.f90 two.o three.o
	$(FC) $(FCFLAGS) call2.f90

two.o : two.f90 three.o
	$(FC) $(FCFLAGS) two.f90

three.o : three.f90
	$(FC) $(FCFLAGS) three.f90

#clean
clean:
	rm -rf *.o *~ *.out
