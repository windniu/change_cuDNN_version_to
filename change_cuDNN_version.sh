#!/bin/bash
echo "Please just input on parameter, 50 or 51.(FOR cuda 8.0)"
if [ $1 == 50 ]
	then 
	echo "change current cuDNN version to 5.0"
	sudo cp -P cuDNN5.0/cuda/include/cudnn.h /usr/local/cuda/include
	sudo cp -P cuDNN5.0/cuda/lib64/libcudnn* /usr/local/cuda/lib64
	sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
	echo "finished!"
elif [ $1 == 51 ]
	then
	echo "change current cuDNN version to 5.1"
	sudo cp -P cuDNN5.1/cuda/include/cudnn.h /usr/local/cuda/include
	sudo cp -P cuDNN5.1/cuda/lib64/libcudnn* /usr/local/cuda/lib64
	sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
	echo "finished!"
fi


