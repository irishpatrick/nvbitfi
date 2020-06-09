TARGET = nbody
NVCC = `which nvcc`
ARCH = 35

all: clean $(TARGET)

$(TARGET):
	$(NVCC) -o nbody -Xptxas -v -arch=sm_$(ARCH) nbody-soa.cu

test:
	./nbody

golden:
	./nbody >golden_stdout.txt 2>golden_stderr.txt

clean:
	rm -f *.o *~ nbody

clobber: clean
	rm -f golden* *_regcount.p stdout* stderr*
