# VMD Tcl script to visualize edge usage with custom colors

# Function to read edge usage data
proc read_edge_usage {filename} {
    set edge_data {}
    set file [open $filename r]
    while {[gets $file line] != -1} {
        if {[regexp {Edge (\d+) -> (\d+): (\d+)} $line -> src dst freq]} {
            lappend edge_data [list [expr $src + 1] [expr $dst + 1] $freq]
        }
    }
    close $file
    return $edge_data
}

# Function to create a sphere at the given residue index with the given frequency and color
proc create_sphere {residue_index freq scaling_factor color} {
    set radius [expr 0.5 + 0.01 * $freq / $scaling_factor]  ;# Adjust the sphere size based on frequency
    set sel [atomselect top "resid $residue_index and (name CA or name C1)"]
    if {[$sel num] > 0} {
        set coord [$sel get {x y z}]
        if {[llength $coord] == 1} {
            set coord [lindex $coord 0]
            draw color $color
            draw sphere $coord radius $radius
        } else {
            puts "Warning: No coordinates found for resid $residue_index"
        }
    } else {
        puts "Warning: No C-alpha atom found for resid $residue_index"
    }
    $sel delete
}

# Function to create a line between two residue indices with the given frequency and color
proc create_edge {residue_index1 residue_index2 freq scaling_factor color} {
    set thickness [expr 0.1 + 0.01 * $freq / $scaling_factor]  ;# Adjust the line thickness based on frequency
    set sel1 [atomselect top "resid $residue_index1 and (name CA or name C1)"]
    set sel2 [atomselect top "resid $residue_index2 and (name CA or name C1)"]
    if {([$sel1 num] > 0) && ([$sel2 num] > 0)} {
        set coord1 [$sel1 get {x y z}]
        set coord2 [$sel2 get {x y z}]
        if {[llength $coord1] == 1 && [llength $coord2] == 1} {
            set coord1 [lindex $coord1 0]
            set coord2 [lindex $coord2 0]
            draw color $color
            draw cylinder $coord1 $coord2 radius $thickness
        } else {
            puts "Warning: Coordinates not found for one of the residues $residue_index1 or $residue_index2"
        }
    } else {
        puts "Warning: No C-alpha atom found for one of the residues $residue_index1 or $residue_index2"
    }
    $sel1 delete
    $sel2 delete
}

# Main script
# Load the structure
mol new combined.pdb

# Read edge usage data
set edge_data [read_edge_usage "edge_usage_1000.txt"]

# Define a scaling factor
set scaling_factor 4500

# Define colors
set sphere_color gray
set edge_color black

# Create spheres and edges based on the edge usage data
foreach edge $edge_data {
    set src [lindex $edge 0]
    set dst [lindex $edge 1]
    set freq [lindex $edge 2]
    create_sphere $src $freq $scaling_factor $sphere_color
    create_sphere $dst $freq $scaling_factor $sphere_color
    create_edge $src $dst $freq $scaling_factor $edge_color
}

