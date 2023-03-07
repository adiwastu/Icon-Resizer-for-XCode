# Icon-Resizer-for-XCode

ChatGPT prompt is:

>create a command line app on mac that accepts png and outputs multiple resized version. input is 1024x1024, output is 16x16, 32x32, 64x64, 128x128, 256x256, and 512x512, all in png.

and the rest is history. Tested in MacOS. A code so trivial that it is mind boggling how every dev has to rely on online apps to achieve this bull crxp. To use, ```chmod +x icon-resizer.sh``` to make sure necessary permissions are provided. place your source icon on the same folder and run ```./icon-resizer.sh your-icon.png```.

slight changes with this prompt:

>can you modify the script, so that when the png exports, instead of bloating the folder the original file was in, it creates a folder based on the input file name and put the exported file there.
