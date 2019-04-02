view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 50ns -step 1 -repeat forever -starttime 0ns -endtime 1000ns sim:/add_isa/clock 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 100ns sim:/add_isa/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ns -endtime 1000ns Edit:/add_isa/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ns -endtime 1500ns Edit:/add_isa/reset 
wave modify -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 50ns -step 1 -repeat forever -starttime 0ns -endtime 1500ns Edit:/add_isa/clock 
wave modify -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 50ns -step 1 -repeat forever -starttime 0ns -endtime 1200ns Edit:/add_isa/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ns -endtime 1200ns Edit:/add_isa/reset 
wave modify -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 50ns -step 1 -repeat forever -starttime 0ns -endtime 1200ns Edit:/add_isa/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ns -endtime 1200ns Edit:/add_isa/reset 
wave modify -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 50ns -step 1 -repeat forever -starttime 0ns -endtime 1300ns Edit:/add_isa/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ns -endtime 1300ns Edit:/add_isa/reset 
wave modify -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 50ns -step 1 -repeat forever -starttime 0ns -endtime 1500ns Edit:/add_isa/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ns -endtime 1500ns Edit:/add_isa/reset 
wave modify -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 50ns -step 1 -repeat forever -starttime 0ns -endtime 1300ns Edit:/add_isa/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ns -endtime 1300ns Edit:/add_isa/reset 
WaveCollapseAll -1
wave clipboard restore
