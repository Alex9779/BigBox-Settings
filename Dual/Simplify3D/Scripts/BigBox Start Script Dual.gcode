;BigBox Printer Start Script Begin
;relies on M83 (use relative extrusion distances)

M117 Heating
M140 S[bed0_temperature] ; set bed temperature
T0 ; select extruder 0
M104 S[extruder0_temperature] ; set extruder 0 temperature
T1 ; select extruder 1
M104 S[extruder1_temperature] ; set extruder 1 temperature

M117 Homing
T0 ; select extruder 0
G28

M218 T1 X35 Y0 ; set extruder 1 offset
M92 E290 ; adjust steps per mm for your filament

M117 Moving to dock
T0 ; select extruder 0
G1 X70 Y200 F3000 ; move to position in front of dock
G1 X70 Y240 F3000 ; move into dock

M117 Heating bed
M190 S[bed0_temperature] ; wait for bed temperature

M117 Heating extruder 0
T0 ; select extruder 0
M109 S[extruder1_temperature] ; set extruder 0 temperature and wait

M117 Heating extruder 1
T1 ; select extruder 1
M109 S[extruder1_temperature] ; set extruder 1 temperature and wait

M117 Print starting

;BigBox Printer Start Script End