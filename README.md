# Android_App_Translation
This hack lets you translate your android app quite easily for 118n. 


Using powershell, you can export your strings.xml (english or default language) to a csv with the key and the value pair. 
In this case the key and the string tesxt itself. 

After going through this task, you can then upload it to google sheets (free spreadsheet solution). 
Now you can play with some formulas to use google translate to translate your string and then have it export to another strings.xml for each language. 

This is hacky, because it isn't a platform within itself, and some parts may fail. 
I have a small app and couldn't find a platform to accomodate my projects. 

In the powershell script, you'll have to modify the location of the strings.xml file. 
In my case, I didn't use the original strings file , but I would recommend you do, as the file gets changed quite frequently. 

The script also doesn't include any strings that have the attribute translatable=false, but that is easy to modify.





