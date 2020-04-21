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


<style>.bmc-button img{height: 34px !important;width: 35px !important;margin-bottom: 1px !important;box-shadow: none !important;border: none !important;vertical-align: middle !important;}.bmc-button{padding: 7px 10px 7px 10px !important;line-height: 35px !important;height:51px !important;min-width:217px !important;text-decoration: none !important;display:inline-flex !important;color:#FFFFFF !important;background-color:#FF813F !important;border-radius: 5px !important;border: 1px solid transparent !important;padding: 7px 10px 7px 10px !important;font-size: 22px !important;letter-spacing: 0.6px !important;box-shadow: 0px 1px 2px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;margin: 0 auto !important;font-family:'Cookie', cursive !important;-webkit-box-sizing: border-box !important;box-sizing: border-box !important;-o-transition: 0.3s all linear !important;-webkit-transition: 0.3s all linear !important;-moz-transition: 0.3s all linear !important;-ms-transition: 0.3s all linear !important;transition: 0.3s all linear !important;}.bmc-button:hover, .bmc-button:active, .bmc-button:focus {-webkit-box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;text-decoration: none !important;box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;opacity: 0.85 !important;color:#FFFFFF !important;}</style><link href="https://fonts.googleapis.com/css?family=Cookie" rel="stylesheet"><a class="bmc-button" target="_blank" href="https://www.buymeacoffee.com/aviparshan"><img src="https://cdn.buymeacoffee.com/buttons/bmc-new-btn-logo.svg" alt="Buy me a coffee"><span style="margin-left:15px;font-size:28px !important;">Buy me a coffee</span></a>
