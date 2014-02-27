
echo "installing cmake and dependencies" 
sudo apt-get -y install build-essential cmake cmake-qt-gui pkg-config libpng12-0 libpng12-dev libpng++-dev libpng3 libpnglite-dev zlib1g-dbg zlib1g zlib1g-dev pngtools libtiff4-dev libtiff4 libtiffxx0c2 libtiff-tools

echo "installing openCV dependencies"
udo apt-get -y install libjpeg8 libjpeg8-dev libjpeg8-dbg libjpeg-progs ffmpeg libavcodec-dev libavcodec53 libavformat53 libavformat-dev libgstreamer0.10-0-dbg libgstreamer0.10-0 libgstreamer0.10-dev libxine1-ffmpeg libxine-dev libxine1-bin libunicap2 libunicap2-dev libdc1394-22-dev libdc1394-22 libdc1394-utils swig libv4l-0 libv4l-dev python-numpy libpython2.6 python-dev python2.6-dev libgtk2.0-dev pkg-config

echo "getting openCV 2.3.1 ..."
wget http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.3.1/OpenCV-2.3.1a.tar.bz2

echo "unpacking OpenCV.tar.bz2"
tar -xvjpf OpenCV-2.3.1a.tar.bz2
rm OpenCV-2.3.1a.tar.bz2
cd OpenCV-2.3.1/
mkdir build
cd build

echo "setting cmake build configuration to include python."
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_PYTHON_SUPPORT=ON -D BUILD_EXAMPLES=ON ..

echo "building openCV"
make
sudo make install

echo "add the following line to the end of the file that is about to open: /usr/local/lib"
sudo nano /etc/ld.so.conf.d/opencv.conf

echo "add the following line to the end of the file that is about to open: PKG_CONFIG_PATH$ PKG_CONFIG_PATH:/usr/local/lib/pkgconfig export PKG_CONFIG_PATH"
sudo nano /etc/bash.bashrc

