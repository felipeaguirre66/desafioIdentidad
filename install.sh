sudo apt-get -y install tesseract-ocr;
wget https://github.com/tesseract-ocr/tessdata_best/raw/main/spa.traineddata;
sudo mv spa.traineddata /usr/share/tesseract-ocr/4.00/tessdata/;
sudo apt-get -y install swig4.0;

mkdir input_data;
mkdir out_data;

cd src;
git clone https://github.com/bakwc/JamSpell.git;

cd JamSpell;
python3 setup.py build_ext;
python3 setup.py build_py;
python3 setup.py install;
