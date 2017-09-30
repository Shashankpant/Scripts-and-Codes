set fp [open "rmsf.dat" w] 
set sel [atomselect top " name CA"] 
for {set i 0} {$i < [$sel num]} {incr i} { 
     set rmsf [measure rmsf $sel first 1 last 2500 step 10] 
     puts $fp "[expr {$i+1}] [lindex $rmsf $i]" 
} 
close $fp 
