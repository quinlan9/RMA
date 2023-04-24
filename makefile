CC = mpicc
CFLAGS= -g -Wall -gdwarf-2 
LDFLAGS= -lm


all:rma_fence rma_pscw

rma_fence: rma_fence.o jacobi_2d.o decomp.o 
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)
rma_pscw: rma_pscw.o jacobi_2d.o decomp.o
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)





.PHONY:clean

clean:
	rm -f rma_fence.o rma_pscw.o rma_fence rma_pscw jacobi_2d.o decomp.o 
