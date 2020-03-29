#!/bin/bash

# update these with the appropriate paths on your computer:

IMAGES_DIRECTORY="/Users/tombubul/desktop/__SCREENSHOTS"
NEW_TAB_IMAGES_DIRECTORY="/Users/tombubul/desktop/_newtabimages"

# -------------------------

# start clean
cd $NEW_TAB_IMAGES_DIRECTORY 
rm _images-* 
cd $IMAGES_DIRECTORY 
rm _images-* 

# make & format a new list of images
ls >> _images-ls.txt
sed -i '' -e '$ d' _images-ls.txt 
awk '{ print "\`"$0"\`,"}' _images-ls.txt >> _images-ls-temp.txt 
sed '$s/,$//' _images-ls-temp.txt >> _images-ls-formatted.txt

# copy the list over to the script dir
cp _images-ls-formatted.txt $NEW_TAB_IMAGES_DIRECTORY 
cd $NEW_TAB_IMAGES_DIRECTORY

# delete the old array from js and copy the new one in
sed -e '29,$d' viewer.js >> viewer-TEMP.js 
cat _images-ls-formatted.txt >> viewer-TEMP.js
echo ] >> viewer-TEMP.js 

# cleanup
rm viewer.js # delete 
cp viewer-TEMP.js viewer.js
rm viewer-TEMP.js
echo "images updated :)"