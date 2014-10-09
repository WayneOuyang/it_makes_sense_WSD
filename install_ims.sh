#!/bin/bash

this_folder=$(pwd)

# This will download and install IMS to your local machine
if [ -d 'ims' ]; 
then 
  rm -rf ims;
fi

# For the main package
wget http://www.comp.nus.edu.sg/~nlp/sw/IMS_v0.9.2.1.tar.gz
tar xvzf IMS_v0.9.2.1.tar.gz
rm IMS_v0.9.2.1.tar.gz

# For the library
cd ims/
chmod +x testPlain.bash
wget http://www.comp.nus.edu.sg/~nlp/sw/lib.tar.gz
tar xvzf lib.tar.gz
rm lib.tar.gz

# For the models
wget http://www.comp.nus.edu.sg/~nlp/sw/models.tar.gz
tar xvzf models.tar.gz
rm models.tar.gz

# For the path
cd ..
echo '# Automatically generated by the install_ims.sh script' > path_to_ims.py
echo PATH_TO_IMS = "'"$this_folder/ims"'" >> path_to_ims.py



