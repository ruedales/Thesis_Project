**[TITLE]**

**Author:** [Antonio Rueda]

**Introduction**

This project takes one symbolic controller generated by Scots v0.2 (.scs + .bdd) and generates the necessary files to be burnt onto a myRIO FPGA from National Instruments.

**Third party software**
The open source libraries that has been used along with this project are in the ext folder.

The next ones don't require building and installation:

1. SCOTSv2.0 (https://gitlab.lrz.de/matthias/SCOTSv0.2) - tool to generate symbolic controllers
2. SCOTS2C (https://github.com/ivan-zapreev/SCOTS2C) - tool to determinize controllers


The next one require building and installation:

3. CUDDv3.0.0 (http://vlsi.colorado.edu/~fabio/) - the Binary Decision Diagrams (BDD) management library

This project was tested on Ubuntu and the CUDD library can be compiled as (extracted from https://github.com/ivan-zapreev/SCOTS2C):

```
export CUDDPATH=/usr/local
cd ./ext/cudd-3.0.0
sudo chmod +x configure
./configure --enable-shared --enable-obj \
--enable-dddmp --prefix=${CUDDPATH}
make
sudo make install
```

-  Make sure that the `./ext/cudd-3.0.0/util/util.h` and `./ext/cudd-3.0.0/config.h` have been copied into `${CUDDPATH}/include` by running

```
find ${CUDDPATH}/include -name "util.h"
find ${CUDDPATH}/include -name "config.h"
```

-  If one of the header files was not copied then use an appropriate command

```
sudo cp ./ext/cudd-3.0.0/util/util.h ${CUDDPATH}/include
sudo cp ./ext/cudd-3.0.0/config.h ${CUDDPATH}/include
```

4. ABC (https://people.eecs.berkeley.edu/~alanmi/abc/) - tool to convert .blif files to verilog language

The instructions for building and installing abc are:

```
cd ./ext/abc-master
make ABC_USE_NO_READLINE=1
```
Check the REAMDE file inside the abc-master folder if the installation fails.

**Building the software**

```
mkdir build
cd build
cmake ..
make
```

**Running the examples**
Inside the folder examples of the project, we have 6 scripts (The scripts can be modified to include or remove any example):

1. *0-build.sh* - This script will build the examples from Scots inside the models folder

2. *1-run.sh* - It will generate the .scs and .bdd files

3. *2-determinize.sh* - It will determinize the controller, saving the files in the blgdet folder

4. *3-generate_blif.sh* - It will convert the previous files to .blif format, saving the files into blif_file

5. *4-verilog_and_wrapper.sh* - It will create the .vhd file necessary for myRIO FPGA. The generated files will be located in FPGA_files

The last 2 files were created to check another aproach, in this case, the controller will be not modified

6. *5-generate_blif_whole.sh* - It will convert the previous files to .blif format, saving the files into blif_file_whole

7. *6-verilog_and_wrapper_whole.sh* - It will create the .vhd file necessary for myRIO FPGA. The generated files will be located in FPGA_files_whole

The examples can be run with the following commands:
```
chmod +x 0-build.sh 
./0-build.sh
```

**Tutorial**
Check the tutorial for a more detailed overview of the whole process and for the next steps to simulate the controlled closed-loop.
