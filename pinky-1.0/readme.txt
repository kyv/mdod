== ABOUT ==

Pinky by YelloSoft
http://yellosoft.us/index.php?id=86

Pinky is a tiny HTTP server. It can be run on any Windows, Linux, and Mac computer.

License: GPLv3. Pinky is free as in free beer.

== MAJOR FUNCTIONALITY ==

Once Pinky is started, its HTTP web services will run on http://localhost:2323/.

Copy files and folders into the public/ directory, where they become instantly available on the server.

Pinky can be run from a USB drive or installed on a computer.

== USER OPERATION ==

Requirements
 - A web browser

Browse and download files as with any other website.

== SERVER OPERATION ==

Requirements
 - Windows: XP/Vista
 - Mac OS X: 10.4+
 - Linux: Kernel 2.6.24+

Use the provided AllInOneRuby binaries or your system's Ruby installation.

Run the start script for your operating system, or run pinky.rb directly.

== QUICK START ==

Run the start script for your operating system.

Windows: start_windows.bat
Mac:     start_mac.command
Linux:   start_linux.sh

Close the console or press Control+C to stop the server.

== FULL INSTALLATION ==

Pinky runs much faster on a hard drive, especially with a normal Ruby installation.

1. Install Ruby 1.8.6 or later. <http://www.ruby-lang.org/en/downloads/>
2. Copy Pinky onto the hard drive.
3. Open a console (Command Prompt, Terminal.app, or Unix shell).
4. Enter: ruby /path/to/pinky/pinky.rb.

Don't forget to replace /path/to/pinky/ with the actual folder path to the Pinky files.

== CONFIGURATION (pinky.rb) ==

Feel free to modify Pinky to suit your needs--Hurray for the GPL license!

Use your built-in text editor to modify the configuration.

Windows: Notepad
Mac: TextEdit
Linux: vi

Or download a portable editor of your choice and include it alongside Pinky. <http://delicious.com/tag/text+editor>

PINKY_DIR

    The location of the Pinky server and related files.

    Default: Whichever directory pinky.rb is called from.

ADDRESS

    The IP or hostname of the server.

    Default: localhost

PORT

    The TCP port of the server.

    Default: 2323

WEB_MOUNT

    The URL path from the server its files. A mount of "/" results in files accessible through http://host:port/someprogram.zip, while a mount of "/binaries/stable/" results in files accessible through http://host:port/binaries/stable/someprogram.zip.

    Default: /

WEB_ROOT:
    The location of server configuration files.

    Default: ./htdocs

WEB_PUBLIC:

    The location of the files to be served.

    Default: ./public

SHOW_DIRECTORY_INDEX

    /!\ To increase security, disable this option. /!\

    If enabled, allows users to view a listing of directories.

    Default: true

== CREDITS ==

AllInOneRuby <http://www.erikveen.dds.nl/allinoneruby/>
WEBrick      <http://www.webrick.org>
Pinky logo   <http://bionetz2jade.blogspot.com>
ASCII Art    <http://www.fortunecity.com/tinpan/ringo/888>
Wavs         <http://pinkyandthebrain.sparkg.com>