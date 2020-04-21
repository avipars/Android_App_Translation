# Android_App_Translation
This hack lets you translate your android app quite easily for 118n. 

## Tools

* Powershell

* Google Sheets


### Powershell Specifics
Using powershell, you can export your strings.xml (english or default language) to a csv with the key and the value pair. 
In this case the key and the string tesxt itself. 

After going through this task, you can then upload it to google sheets (free spreadsheet solution). 
Now you can play with some formulas to use google translate to translate your string and then have it export to another strings.xml for each language. 

This is hacky, because it isn't a platform within itself, and some parts may fail. 
I have a small app and couldn't find a platform to accomodate my projects. 

In the powershell script, you'll have to modify the location of the strings.xml file. 
In my case, I didn't use the original strings file , but I would recommend you do, as the file gets changed quite frequently. 

The script also doesn't include any strings that have the attribute translatable=false, but that is easy to modify.

### Google Sheets Specifics

Here is the google sheets, https://docs.google.com/spreadsheets/d/1m4y2_uzBchGoXwfh3aRUGX0qpa6FLo-BWqUAKvT8EZc/edit?usp=sharing 
You just need to go to File -> Make a copy

Right now, you can copy the right columns, as needed to your newly created strings files in Android Studio. I am considering was to improve this whole process, and would love your feedback.

If you want to bring on volunteer translators, you could block off access to certain crucial cells or columns. Just right click on a selection and choose "Protect range". I'd recommend blocking off the keys and the Final values, as they really don't need to be touching those. 

### Possible issues

* Special characters within the strings file such as '%1$s' may not resolve succesfully. Before copying the strings.xml file, verify that this is not the case. 

#### Credits

* I took the original spreadsheet from - https://www.cumulations.com/blogs/98/android-ios-localization-using-google-sheets
but modified it to my needs. 


<a href="https://www.buymeacoffee.com/aviparshan" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" style="height: 51px !important;width: 217px !important;" ></a>
