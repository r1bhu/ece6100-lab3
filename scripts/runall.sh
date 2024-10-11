
######################################################################################
# This scripts runs all four traces
# You will need to first compile your code in ../src before launching this script
# the results are stored in the ../results/ folder 
######################################################################################



########## ---------------  B.1 ---------------- ################

echo "Testing B1 on bzip2..."
../src/sim -pipewidth 1 -schedpolicy 0 -loadlatency 1 ../traces/bzip2.ptr.gz > ../results/B1.bzip2.res
echo "Testing B1 on gcc..."
../src/sim -pipewidth 1 -schedpolicy 0 -loadlatency 1 ../traces/gcc.ptr.gz > ../results/B1.gcc.res
echo "Testing B1 on libq..."
../src/sim -pipewidth 1 -schedpolicy 0 -loadlatency 1 ../traces/libq.ptr.gz > ../results/B1.libq.res
echo "Testing B1 on mcf..."
../src/sim -pipewidth 1 -schedpolicy 0 -loadlatency 1 ../traces/mcf.ptr.gz > ../results/B1.mcf.res

########## ---------------  B.2 ---------------- ################

echo "Testing B2 on bzip2..."
../src/sim -pipewidth 1 -schedpolicy 1 -loadlatency 1 ../traces/bzip2.ptr.gz > ../results/B2.bzip2.res
echo "Testing B2 on gcc..."
../src/sim -pipewidth 1 -schedpolicy 1 -loadlatency 1 ../traces/gcc.ptr.gz > ../results/B2.gcc.res
echo "Testing B2 on libq..."
../src/sim -pipewidth 1 -schedpolicy 1 -loadlatency 1 ../traces/libq.ptr.gz > ../results/B2.libq.res
echo "Testing B2 on mcf..."
../src/sim -pipewidth 1 -schedpolicy 1 -loadlatency 1 ../traces/mcf.ptr.gz > ../results/B2.mcf.res


########## ---------------  B.3 ---------------- ################

echo "Testing B3 on bzip2..."
../src/sim -pipewidth 1 -schedpolicy 0 -loadlatency 4 ../traces/bzip2.ptr.gz > ../results/B3.bzip2.res
echo "Testing B3 on gcc..."
../src/sim -pipewidth 1 -schedpolicy 0 -loadlatency 4 ../traces/gcc.ptr.gz > ../results/B3.gcc.res
echo "Testing B3 on libq..."
../src/sim -pipewidth 1 -schedpolicy 0 -loadlatency 4 ../traces/libq.ptr.gz > ../results/B3.libq.res
echo "Testing B3 on mcf..."
../src/sim -pipewidth 1 -schedpolicy 0 -loadlatency 4 ../traces/mcf.ptr.gz > ../results/B3.mcf.res

########## ---------------  B.4 ---------------- ################

echo "Testing B4 on bzip2..."
../src/sim -pipewidth 1 -schedpolicy 1 -loadlatency 4 ../traces/bzip2.ptr.gz > ../results/B4.bzip2.res
echo "Testing B4 on gcc..."
../src/sim -pipewidth 1 -schedpolicy 1 -loadlatency 4 ../traces/gcc.ptr.gz > ../results/B4.gcc.res
echo "Testing B4 on libq..."
../src/sim -pipewidth 1 -schedpolicy 1 -loadlatency 4 ../traces/libq.ptr.gz > ../results/B4.libq.res
echo "Testing B4 on mcf..."
../src/sim -pipewidth 1 -schedpolicy 1 -loadlatency 4 ../traces/mcf.ptr.gz > ../results/B4.mcf.res



########## ---------------  C.1 ---------------- ################

echo "Testing C1 on bzip2..."
../src/sim -pipewidth 2 -schedpolicy 0 -loadlatency 1 ../traces/bzip2.ptr.gz > ../results/C1.bzip2.res
echo "Testing C1 on gcc..."
../src/sim -pipewidth 2 -schedpolicy 0 -loadlatency 1 ../traces/gcc.ptr.gz > ../results/C1.gcc.res
echo "Testing C1 on libq..."
../src/sim -pipewidth 2 -schedpolicy 0 -loadlatency 1 ../traces/libq.ptr.gz > ../results/C1.libq.res
echo "Testing C1 on mcf..."
../src/sim -pipewidth 2 -schedpolicy 0 -loadlatency 1 ../traces/mcf.ptr.gz > ../results/C1.mcf.res

########## ---------------  C.2 ---------------- ################

echo "Testing C2 on bzip2..."
../src/sim -pipewidth 2 -schedpolicy 1 -loadlatency 1 ../traces/bzip2.ptr.gz > ../results/C2.bzip2.res
echo "Testing C2 on gcc..."
../src/sim -pipewidth 2 -schedpolicy 1 -loadlatency 1 ../traces/gcc.ptr.gz > ../results/C2.gcc.res
echo "Testing C2 on libq..."
../src/sim -pipewidth 2 -schedpolicy 1 -loadlatency 1 ../traces/libq.ptr.gz > ../results/C2.libq.res
echo "Testing C2 on mcf..."
../src/sim -pipewidth 2 -schedpolicy 1 -loadlatency 1 ../traces/mcf.ptr.gz > ../results/C2.mcf.res


########## ---------------  C.3 ---------------- ################

echo "Testing C3 on bzip2..."
../src/sim -pipewidth 2 -schedpolicy 0 -loadlatency 4 ../traces/bzip2.ptr.gz > ../results/C3.bzip2.res
echo "Testing C3 on gcc..."
../src/sim -pipewidth 2 -schedpolicy 0 -loadlatency 4 ../traces/gcc.ptr.gz > ../results/C3.gcc.res
echo "Testing C3 on libq..."
../src/sim -pipewidth 2 -schedpolicy 0 -loadlatency 4 ../traces/libq.ptr.gz > ../results/C3.libq.res
echo "Testing C3 on mcf..."
../src/sim -pipewidth 2 -schedpolicy 0 -loadlatency 4 ../traces/mcf.ptr.gz > ../results/C3.mcf.res

########## ---------------  C.4 ---------------- ################

echo "Testing C4 on bzip2..."
../src/sim -pipewidth 2 -schedpolicy 1 -loadlatency 4 ../traces/bzip2.ptr.gz > ../results/C4.bzip2.res
echo "Testing C4 on gcc..."
../src/sim -pipewidth 2 -schedpolicy 1 -loadlatency 4 ../traces/gcc.ptr.gz > ../results/C4.gcc.res
echo "Testing C4 on libq..."
../src/sim -pipewidth 2 -schedpolicy 1 -loadlatency 4 ../traces/libq.ptr.gz > ../results/C4.libq.res
echo "Testing C4 on mcf..."
../src/sim -pipewidth 2 -schedpolicy 1 -loadlatency 4 ../traces/mcf.ptr.gz > ../results/C4.mcf.res



########## ---------------  GenReport ---------------- ################

grep LAB3_CPI ../results/B?.*.res > report.txt
grep LAB3_CPI ../results/C?.*.res >> report.txt


######### ------- Goodbye -------- ##################

echo "Done. Check report.txt, and .res files in ../results";

