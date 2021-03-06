DragonZone-WebExplorer
======================

![ScreenShot](http://i.imgur.com/GYMHIqv.png)


This project uses Spring Framework, Spring Security, JSF 2.1 + PrimeFaces 5.
It allows you, depending on your role, to view all the directory and files
on all your hard drive.

The project has been tested using Tomcat and Jetty plugins that is in the pom. 
I have created the batch files to run them once your Maven is setup properly.
I think you will enjoy the new UI and all the powerful features it has. 
Good luck and have fun!

There are 3 types of accounts, Admin, Contributor, and User. 
Admin have full access to view all the drives or network drives on the server.
Contributor have access to only certain folder that is configured in the webexplorer.properties file. 
They can also, upload, download, add, delete and rename files and folder for the particular folders they can view.
User can only view and download folder and files that is configured in the webexplorer.properties file.

This app is useful for users who wants to have full access to all the files on their machine 
and wants to allow certain folders for other users to view.
It is also particularly useful for users who have lots of MP3s files on their machine 
and would like to play them directly instead of downloading them.
Currently, in order to stream MP3 files, PrimeFaces uses QuickTime as it's plugin player.
Hopefully, once HTML5 is more widely used, PrimeFaces will start switching to them.
It has search capabilities, which is quite fast. But the MP3 Meta Search is still kinda slow.
