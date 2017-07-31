mkdir build
cd build
rm -rf * && cmake -DCMAKE_BUILD_TYPE= .. && make && mkdir data && ./Demo --defaults-file=../my.cnf
