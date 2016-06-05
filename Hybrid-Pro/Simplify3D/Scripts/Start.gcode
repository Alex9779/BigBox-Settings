;BigBox Printer Start Script Begin
;relies on M83 (use relative extrusion distances)

M117 Preparing
M140 S[bed0_temperature] ; set bed temperature
M104 S[extruder0_temperature] ; set extruder temperature

;home
G28

;set values
;M92 E417.5 ;adjust steps per mm

;move to dock
G1 Z4 F3000 ; lift the head
G1 X70 Y200 F3000 ; move to position in front of dock
G1 X70 Y240 F3000 ; move into dock

;heat bed
M190 S[bed0_temperature] ; wait for bed temperature

;heat extruder
M109 S[extruder0_temperature] ; set extruder temperature and wait

;prime extruder
G1 E15 F200 ; reverse end of print retraction
G1 E10 F50 ; extrude 10mm

;move out of dock
G1 X80 Y240 F3000 ; move to position in dock
G1 X80 Y200 F3000 ; move out of dock

M117 Print starting

;BigBox Printer Start Script End