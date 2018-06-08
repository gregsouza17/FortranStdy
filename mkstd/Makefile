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


#Make all
all: $(PROGS)

#target : dependency
#<tab> command
$(PROGS): $(OBJS)
	@echo "------------------------------------"
	@echo "Creating count.exe"
	@echo  "------------------------------------"
	$(LINKER) $(PROGS) $(OBJS) $(FCLINKS)

#definition for dependencies

#clean

#$< points to the first file in the dependency chain
#$@ points to the last file in the dependency chain
%.o : %.f90
	@echo "------------------------------------"
	@echo "Compiling $<"
	@echo "------------------------------------"
	$(FC) $(FCFLAGS) $<

clean:
	@echo  "------------------------------------"
	@echo  "Cleaning up .o, ~ and .out"
	@echo  "------------------------------------"
	rm -rf *.o *~ *.out


#Dependencies Chain
call2.o	: call2.f90	two.o	three.o
two.o 		: two.f90	three.o
three.o	: three.f90
