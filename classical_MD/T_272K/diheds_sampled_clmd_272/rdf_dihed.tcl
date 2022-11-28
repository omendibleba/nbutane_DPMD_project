# Fernando Carmona Esteva & Sanoj, 8-4-2022
# tcl script to compute RDF directly from the command line with vmd
# To run this directly on the commad line (remenber to load vmd)
# [user@crc]$ vmd -dispdev text -eofexit < gofr.tcl > vmd.log
# This also writes a log file

# Load system
mol load xyz but1_clms_1ns.xyz

## Determine number of frmaes
set numframes [molinfo top get numframes]


set outfile [open "dihed_clmd_but1_168molec_272K_1ns_mol_6.txt" w] ; # Name of output file

# for more info about for loops in tcl look up "for loop in tcl tutorialspoint" this is a great resource for tcl scripts

for {set i 0 } {$i < $numframes} {incr i} {


# DEfine variable that stores calculated dihedral
#set output [measure dihed {0 4 7 10} frame $i]
set output [measure dihed {70 71 72 73} frame $i]

# Print in output file

puts $outfile "$output"}
close $outfile ; # Save & Close file output file


# Usando este para checkiqar dihed de CLMD simulation 
