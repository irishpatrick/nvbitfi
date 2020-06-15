TARGET = nbody-modified
NVCC = /usr/local/cuda/bin/nvcc
ARCH = 35

all: clean $(TARGET)

$(TARGET):
	$(NVCC) -o nbody-modified -Xptxas -v -arch=sm_$(ARCH) nbody-orig.cu

test:
	./nbody-modified

golden:
	./nbody-modified >golden_stdout.txt 2>golden_stderr.txt

clean:
	rm -f *.o *~ nbody-modified

clobber: clean
	rm -f golden* *_regcount.p stdout* stderr*
