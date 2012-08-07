#!/bin/sh
rm ./build.zip
rm -r ./build
mkdir ./build
cp -r ./_locales ./build/.
cp -r ./js ./build/.
cp -r ./images ./build/.
cp *.html ./build/.
cp *.json ./build/.
cp *.css ./build/.

rm ./build/js/vp/video-js.css
rm ./build/js/vp/vim.css
rm ./build/js/ap/blue.monday/jplayer.blue.monday.css
rm ./build/js/background.js
rm ./build/js/manager.js
rm ./build/js/media.js
rm ./build/js/options.js
rm ./build/js/donate.js
rm ./build/js/notifi.js
rm ./build/js/jquery.contextmenu.css
rm ./build/js/jquery.contextmenu.js
rm ./build/js/jquery.timers-1.2.js
rm ./build/js/jquery.ui.position.js
rm ./build/js/jquery.tablesorter.js
rm ./build/js/jquery.selectbox.js
rm ./build/js/jquery.selectbox.css
rm ./build/options.css
rm ./build/donate.css
rm ./build/notifi.css
rm ./build/stylesheet.css
rm ./build/media.css

java -jar compiler.jar --js ./js/options.js --js_output_file ./build/js/options.js
java -jar compiler.jar --js ./js/donate.js --js_output_file ./build/js/donate.js
java -jar compiler.jar --js ./js/notifi.js --js_output_file ./build/js/notifi.js
java -jar compiler.jar --js ./js/background.js --js_output_file ./build/js/background.js
java -jar compiler.jar --js ./js/manager.js --js_output_file ./build/js/manager.js
java -jar compiler.jar --js ./js/media.js --js_output_file ./build/js/media.js
java -jar compiler.jar --js ./js/graph.js --js_output_file ./build/js/graph.js
java -jar compiler.jar --js ./js/jquery.timers-1.2.js --js_output_file ./build/js/jquery.timers-1.2.js
java -jar compiler.jar --js ./js/jquery.ui.position.js --js_output_file ./build/js/jquery.ui.position.js
java -jar compiler.jar --js ./js/jquery.contextmenu.js --js_output_file ./build/js/jquery.contextmenu.js
java -jar compiler.jar --js ./js/jquery.tablesorter.js --js_output_file ./build/js/jquery.tablesorter.js
java -jar compiler.jar --js ./js/jquery.selectbox.js --js_output_file ./build/js/jquery.selectbox.js

java -jar yuicompressor-2.4.7.jar ./js/ap/blue.monday/jplayer.blue.monday.css -o ./build/js/ap/blue.monday/jplayer.blue.monday.css
java -jar yuicompressor-2.4.7.jar ./js/vp/video-js.css -o ./build/js/vp/video-js.css
java -jar yuicompressor-2.4.7.jar ./js/vp/vim.css -o ./build/js/vp/vim.css
java -jar yuicompressor-2.4.7.jar ./js/jquery.contextmenu.css -o ./build/js/jquery.contextmenu.css
java -jar yuicompressor-2.4.7.jar ./js/jquery.selectbox.css -o ./build/js/jquery.selectbox.css
java -jar yuicompressor-2.4.7.jar ./stylesheet.css -o ./build/stylesheet.css
java -jar yuicompressor-2.4.7.jar ./media.css -o ./build/media.css
java -jar yuicompressor-2.4.7.jar ./options.css -o ./build/options.css
java -jar yuicompressor-2.4.7.jar ./notifi.css -o ./build/notifi.css
java -jar yuicompressor-2.4.7.jar ./donate.css -o ./build/donate.css

cd ./build/
zip -r ../build.zip ./