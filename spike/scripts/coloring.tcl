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

# Define the domains and their respective residue ranges and colors
set domains {
    {14 305 26} ;# NTD A (violet26)
    {1142 1433 26} ;# NTD B (violet26)
    {319 541 11} ;# RBD (purple)
    {437 508 3} ;# RBM (blue)
    {711 788 4} ;# CTD2 (yellow)
    {1081 1164 5} ;# CTD3 (magenta)
    {681 685 6} ;# FCS (orange)
    {816 833 7} ;# FP (cyan)
    {828 853 8} ;# FPPR (purple)
    {912 984 9} ;# HR1 (lime)
    {986 1035 10} ;# CH (pink)
    {1076 1141 11} ;# CD (brown)
    {3389 3879 0} ;# Chain G (blue)
    {3880 3998 1} ;# Chain M (red)
    {4419 4537 1} ;# Chain N 
    {4538 4656 1} ;# Chain O 
    {3999 4138 1} ;# Chain P 
    {4279 4418 1} ;# Chain Q 
    {4139 4278 1} ;# Chain R 
}


# Function to determine the color based on the residue index
proc get_domain_color {residue_index} {
    global domains
    foreach domain $domains {
        lassign $domain start end colorID
        if {$residue_index >= $start && $residue_index <= $end} {
            return $colorID
        }
    }
    return -1  ;# Not found
}

# Main script
# Load the structure
mol new combined.pdb

# Read edge usage data
set edge_data [read_edge_usage "edge_usage_1000.txt"]

# Define a scaling factor
set scaling_factor 4500

# Define default colors
set sphere_color gray
set edge_color black

# Create spheres and edges based on the edge usage data
foreach edge $edge_data {
    set src [lindex $edge 0]
    set dst [lindex $edge 1]
    set freq [lindex $edge 2]

    # Determine the color based on the domain for source and destination residues
    set src_color [get_domain_color $src]
    set dst_color [get_domain_color $dst]

    # If the residue does not belong to any domain, use the default color
    if {$src_color == -1} {
        set src_color $sphere_color
    }
    if {$dst_color == -1} {
        set dst_color $sphere_color
    }

    create_sphere $src $freq $scaling_factor $src_color
    create_sphere $dst $freq $scaling_factor $dst_color
    create_edge $src $dst $freq $scaling_factor $edge_color
}

