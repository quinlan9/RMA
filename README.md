First,load MPI module on chuck: module load cports openmpi  
then compile with command:  make  
if you want to run rma_fence.c, plz input the command: mpirun -np ./rma_fence 31  
if you want to run rma_pscw.c, plz input the command: mpirun -np ./rma_pscw 31  
then you will get the outcome file from these two c file,namely"grid_outcomes_fence" and "grid_outcomes_pscw"  
and then you can see it mathes the outcome of non-RMA version.
