FC := gfortran
FFLAGS := -o

DoCompile: hoge.f90
	${FC} $< $(FFLAGS) a.out -O0
	${FC} $< $(FFLAGS) b.out -O1
	${FC} $< $(FFLAGS) c.out -O2
	${FC} $< $(FFLAGS) d.out -O3

run:
	./a.out > std.log
	./b.out >>std.log
	./c.out >>std.log
	./d.out >>std.log
