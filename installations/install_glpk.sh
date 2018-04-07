#!/bin/bash

PREVIOUS_PWD=$PWD
mkdir -p $HOME/tmp/glpk
cd $HOME/tmp/glpk

wget http://ftp.gnu.org/gnu/glpk/glpk-4.60.tar.gz
tar xvzf glpk-4.60.tar.gz  
rm glpk-4.60.tar.gz

cd $HOME/tmp/glpk/glpk-4.60/

sudo ./configure
sudo make prefix=/opt/glpk/glpk-4.60 -j8
sudo make prefix=/opt/glpk/glpk-4.60 install

# Do this step manually if necessary
# echo '# glpk 4.60 - a solver for linear programming \
# export LD_LIBRARY_PATH="/opt/glpk/glpk-4.60/lib:${LD_LIBRARY_PATH}" \
# export PATH="/opt/glpk/glpk-4.60/bin:${PATH}"' >> ~/.bashrc

rm -rf $HOME/tmp/glpk
cd $PREVIOUS_PWD
