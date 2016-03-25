# BigBox Settings

In this repository contains settings for the E3D BigBox 3D printer for use with various slicers.

At the moment the is only one profile for Simplify3D configured in an early stage.

**This is work in progress. Please review all settings thoroughly before starting a print!**

**I am not responsible for failed prints or crashed machines!**

## Simplify3D - BigBox Dual Profile
This profile makes use of the auto configuration feature of Simplify3D offering you three drop down menus when editing a process.
From these drop downs you can select your material, the quality and which extruder shall be used.

The profile is designed to set the most important settings according to your selection.

That means the material selection changes:

 - temperatures (hotend and bed)
 - cooling strategy
 - maybe retraction settings (not yet)
 - some layer options (not yet)

The quality selection changes:

 - layer height
 - settings for the first layer
	
The extruder selection:

 - activates and deactivates extruders
 - applies the needed g-code script for starting a print, changing tools and ending a print

### Testing status
I did several prints with every extruder preset (left only, right only, dual) and all worked
fine for me.
I tweak the settings a bit especially for dual prints because I had problems with the first
layer on the second extruder.
This is related to the fact that a purge prime retraction sequence is run in the tool change
script which S3D does not know about.
So it might be important to fight under or over extrusions of an extruder after a tool change
that the sum of the tool change retraction and extra restart distance matches the sum of the
normal extruder retraction and extra restart distance settings and also matches the retraction
done in the tool change script after the priming of the new extruder.
All those values are somehow bound together that the tool change script really works.
Be careful if you change those values and maybe check the gcode file closely that tool change points
to be sure that want you want to achieve really happens.

The material settings are generic, mostly covering manufacturer's recommendations.

All other settings are copied from the alpha/beta profile provided by Greg Holloway or based on some own thoughts, print tests and experience.