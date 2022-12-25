#!/bin/bash -e

##################################################################################
# This bash script builds and installs ICSC after update, runs ICSCS examples    #
##################################################################################

test -z $ICSC_HOME && { echo "ICSC_HOME is not configured"; exit 1; }
echo "Using ICSC_HOME = $ICSC_HOME"

export CWD_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo $CWD_DIR
export CMAKE_PREFIX_PATH=$ICSC_HOME:$CMAKE_PREFIX_PATH
export GCC_INSTALL_PREFIX="$(realpath "$(dirname $(which g++))"/..)"

# ################################################################################
# Build and install ISCC
cd $CWD_DIR
(
    mkdir build_icsc_rel -p && cd build_icsc_rel
    cmake ../ -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$ICSC_HOME -DCMAKE_CXX_STANDARD=17
    make -j12
    make install

    cd ..

    mkdir build_icsc_dbg -p && cd build_icsc_dbg
    cmake ../ -DCMAKE_BUILD_TYPE=Debug   -DCMAKE_INSTALL_PREFIX=$ICSC_HOME -DCMAKE_CXX_STANDARD=17 -DCMAKE_DEBUG_POSTFIX=d
    make -j12
    make install

    cp $CWD_DIR/cmake/CMakeLists.top $ICSC_HOME/CMakeLists.txt
)

echo "*** ISCC Build and Installation Complete! ***"


# ################################################################################
# Build and run examples
echo "*** Building Examples ***"
cd $ICSC_HOME
(
    source setenv.sh
    mkdir build -p && cd build
    cmake ../                          # prepare Makefiles
    cd designs/examples                # run examples only
    ctest -j12                         # compile and run Verilog generation
                                       # use "-jN" key to run in "N" processes
)
