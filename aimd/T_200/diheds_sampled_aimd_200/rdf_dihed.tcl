# Fernando Carmona Esteva & Sanoj, 8-4-2022
# tcl script to compute RDF directly from the command line with vmd
# To run this directly on the commad line (remenber to load vmd)
# [user@crc]$ vmd -dispdev text -eofexit < gofr.tcl > vmd.log
# This also writes a log file

# Load system
mol load xyz Butane_solv_200K-pos-1.xyz

## Determine number of frmaes
set numframes [molinfo top get numframes]


set outfile [open "dihedrals_aimd_200K_molec_6.txt" w] ; # Name of output file

# for more info about for loops in tcl look up "for loop in tcl tutorialspoint" this is a great resource for tcl scripts

for {set i 0 } {$i < $numframes} {incr i} {

# DEfine variable that stores calculated dihedral
#set output [measure dihed {0 4 7 10} frame $i]

#set output [measure dihed {0 1 2 3} frame $i]
#set output [measure dihed {14 15 16 17} frame $i]
#set output [measure dihed {28 29 30 31} frame $i]
#set output [measure dihed {42 43 44 45} frame $i]
#set output [measure dihed {56 57 58 59} frame $i]
set output [measure dihed {70 71 72 73} frame $i]

# Print in output file

puts $outfile "$output"}

close $outfile ; # Save & Close file output file
