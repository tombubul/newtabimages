# newtabimages
Low-maintenance, client-only approach to giving some exposure to giant saved image archives in the browser.

# What is this?
During covid quarantine I decided to do a deep reorganization of my local filesystem; as part of that process I consolidated 10+ years of screenshots and saved images. 

I realized it would be nice to have a way to casually commune with that archive, and the thing I settled on was, "show me five images from in there whenever I open a new tab." So that's what this does.

# Setup
- Put all the images you wish you were seeing more of together in one giant folder.
- Download this repo and put it someplace on your computer.
- Update the first two lines in the bash script file to point at your local dirs.
- Update the first line in the javascript file with your local image dir.
- Run the script.
- Set your browser's new tab page to point at the included html.

# Notes
- I get that I'm assuming basic cli comfort here; if you need help setting this up just ask :)
- I made this for primary use on my 13" 2012 macbook air, where five images no taller than 500px is about right. You can change the number of images selected at the top of the js file. The max image height is the only style defined in the html.
- "Run a bash script from time to time" seemed like a reasonable way to compile images for javascript to select from without requiring a server, but I'd be interested in better (or even just less fragile) suggestions.
- You need an extension(?!?!?!?!?!) to change your new tab url in Chrome. That's: https://chrome.google.com/webstore/detail/change-new-tab/mocklpfdimiadpbgamlgehpgpodggahe

