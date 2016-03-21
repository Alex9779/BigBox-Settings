# BigBox Settings

In this repository contains settings for the E3D BigBox 3D printer for use with various slicers.

At the moment the is only one profile for Simplify3D configured in an early stage.

**This is work in progress. Please review all settings thoroughly before starting a print!**

**I am not responsible for failed prints or crashed machines!**

## Simplify3D - BigBiox Dual Profile
This profile makes use of the auto configuration feature of Simplify3D offering you three drop down menus when editing a process.
From these drop downs you can select your material, the quality and which extruder shall be used.
The profile is designed to set the most important settings according to your selection.
That means the material selection changes temperatures (hotend and bed), cooling strategy, maybe retraction settings and some layer options.
The quality selection just changes the layer height and settings for the first layer at the moment.
The extruder selection activates and deactivates extruders and applies the needed g-code script for starting a print, changing tools and ending a print.

### Testing status
I did prints with the left head only at the moment. The scripts for this work as intended and so should the others do because they are based on the previous.
The material settings are generic, mostly covering manufacturer's recommendations.
All other settings are copied from the alpha/beta profile provided by Greg Holloway or based on some own thoughts, print tests and experience.