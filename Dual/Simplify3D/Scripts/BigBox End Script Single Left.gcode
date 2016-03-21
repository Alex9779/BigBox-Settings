;BigBox Printer End Script Begin
;relies on M83 (use relative extrusion distances)

G91 ; relative positioning
G1 Z10 F360 ; move Z axis by 10mm
G90 ; absolute positioning

M117 Moving to dock
T0 ; select extruder 0
G1 X70 Y200 F3000 ; move to position in front of dock
G1 X70 Y240 F3000 ; move into dock

M117 Purging extruder 0
T0 ; select extruder 0
G1 E25 F400 ; extrude 25mm
G1 E-14  F4000 ; retract 14mm very fast

T0 ; select extruder 0
M104 S0 ; turn off extruder 0
M140 S0 ; turn off bed
M84 ; disable steppers
M106 S0 ; disable cooling fans

M117 Print complete

;BigBox Printer End Script End