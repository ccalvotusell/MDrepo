#!/usr/local/bin/vmd
# VMD script written by save_state $Revision: 1.47 $
# VMD version: 1.9.3
set viewplist {}
set fixedlist {}
proc vmdrestoremymaterials {} {
  set mlist { Opaque Transparent BrushedMetal Diffuse Ghost Glass1 Glass2 Glass3 Glossy HardPlastic MetallicPastel Steel Translucent Edgy EdgyShiny EdgyGlass Goodsell AOShiny AOChalky AOEdgy BlownGlass GlassBubble RTChrome }
  set mymlist [material list]
  foreach mat $mlist {
    if { [lsearch $mymlist $mat] == -1 } { 
      material add $mat
    }
  }
  material change ambient Opaque 0.000000
  material change diffuse Opaque 0.650000
  material change specular Opaque 0.500000
  material change shininess Opaque 0.534020
  material change mirror Opaque 0.000000
  material change opacity Opaque 1.000000
  material change outline Opaque 0.000000
  material change outlinewidth Opaque 0.000000
  material change transmode Opaque 0.000000
  material change ambient Transparent 0.000000
  material change diffuse Transparent 0.650000
  material change specular Transparent 0.500000
  material change shininess Transparent 0.534020
  material change mirror Transparent 0.000000
  material change opacity Transparent 0.300000
  material change outline Transparent 0.000000
  material change outlinewidth Transparent 0.000000
  material change transmode Transparent 0.000000
  material change ambient BrushedMetal 0.080000
  material change diffuse BrushedMetal 0.390000
  material change specular BrushedMetal 0.340000
  material change shininess BrushedMetal 0.150000
  material change mirror BrushedMetal 0.000000
  material change opacity BrushedMetal 1.000000
  material change outline BrushedMetal 0.000000
  material change outlinewidth BrushedMetal 0.000000
  material change transmode BrushedMetal 0.000000
  material change ambient Diffuse 0.000000
  material change diffuse Diffuse 0.620000
  material change specular Diffuse 0.000000
  material change shininess Diffuse 0.530000
  material change mirror Diffuse 0.000000
  material change opacity Diffuse 1.000000
  material change outline Diffuse 0.000000
  material change outlinewidth Diffuse 0.000000
  material change transmode Diffuse 0.000000
  material change ambient Ghost 0.000000
  material change diffuse Ghost 0.000000
  material change specular Ghost 1.000000
  material change shininess Ghost 0.230000
  material change mirror Ghost 0.000000
  material change opacity Ghost 0.100000
  material change outline Ghost 0.000000
  material change outlinewidth Ghost 0.000000
  material change transmode Ghost 0.000000
  material change ambient Glass1 0.000000
  material change diffuse Glass1 0.500000
  material change specular Glass1 0.650000
  material change shininess Glass1 0.530000
  material change mirror Glass1 0.000000
  material change opacity Glass1 0.150000
  material change outline Glass1 0.000000
  material change outlinewidth Glass1 0.000000
  material change transmode Glass1 0.000000
  material change ambient Glass2 0.520000
  material change diffuse Glass2 0.760000
  material change specular Glass2 0.220000
  material change shininess Glass2 0.590000
  material change mirror Glass2 0.000000
  material change opacity Glass2 0.680000
  material change outline Glass2 0.000000
  material change outlinewidth Glass2 0.000000
  material change transmode Glass2 0.000000
  material change ambient Glass3 0.150000
  material change diffuse Glass3 0.250000
  material change specular Glass3 0.750000
  material change shininess Glass3 0.800000
  material change mirror Glass3 0.000000
  material change opacity Glass3 0.500000
  material change outline Glass3 0.000000
  material change outlinewidth Glass3 0.000000
  material change transmode Glass3 0.000000
  material change ambient Glossy 0.000000
  material change diffuse Glossy 0.650000
  material change specular Glossy 1.000000
  material change shininess Glossy 0.880000
  material change mirror Glossy 0.000000
  material change opacity Glossy 1.000000
  material change outline Glossy 0.000000
  material change outlinewidth Glossy 0.000000
  material change transmode Glossy 0.000000
  material change ambient HardPlastic 0.000000
  material change diffuse HardPlastic 0.560000
  material change specular HardPlastic 0.280000
  material change shininess HardPlastic 0.690000
  material change mirror HardPlastic 0.000000
  material change opacity HardPlastic 1.000000
  material change outline HardPlastic 0.000000
  material change outlinewidth HardPlastic 0.000000
  material change transmode HardPlastic 0.000000
  material change ambient MetallicPastel 0.000000
  material change diffuse MetallicPastel 0.260000
  material change specular MetallicPastel 0.550000
  material change shininess MetallicPastel 0.190000
  material change mirror MetallicPastel 0.000000
  material change opacity MetallicPastel 1.000000
  material change outline MetallicPastel 0.000000
  material change outlinewidth MetallicPastel 0.000000
  material change transmode MetallicPastel 0.000000
  material change ambient Steel 0.250000
  material change diffuse Steel 0.000000
  material change specular Steel 0.380000
  material change shininess Steel 0.320000
  material change mirror Steel 0.000000
  material change opacity Steel 1.000000
  material change outline Steel 0.000000
  material change outlinewidth Steel 0.000000
  material change transmode Steel 0.000000
  material change ambient Translucent 0.000000
  material change diffuse Translucent 0.700000
  material change specular Translucent 0.600000
  material change shininess Translucent 0.300000
  material change mirror Translucent 0.000000
  material change opacity Translucent 0.800000
  material change outline Translucent 0.000000
  material change outlinewidth Translucent 0.000000
  material change transmode Translucent 0.000000
  material change ambient Edgy 0.000000
  material change diffuse Edgy 0.660000
  material change specular Edgy 0.000000
  material change shininess Edgy 0.750000
  material change mirror Edgy 0.000000
  material change opacity Edgy 1.000000
  material change outline Edgy 0.620000
  material change outlinewidth Edgy 0.940000
  material change transmode Edgy 0.000000
  material change ambient EdgyShiny 0.000000
  material change diffuse EdgyShiny 0.660000
  material change specular EdgyShiny 0.960000
  material change shininess EdgyShiny 0.750000
  material change mirror EdgyShiny 0.000000
  material change opacity EdgyShiny 1.000000
  material change outline EdgyShiny 0.760000
  material change outlinewidth EdgyShiny 0.940000
  material change transmode EdgyShiny 0.000000
  material change ambient EdgyGlass 0.000000
  material change diffuse EdgyGlass 0.660000
  material change specular EdgyGlass 0.500000
  material change shininess EdgyGlass 0.750000
  material change mirror EdgyGlass 0.000000
  material change opacity EdgyGlass 0.620000
  material change outline EdgyGlass 0.620000
  material change outlinewidth EdgyGlass 0.940000
  material change transmode EdgyGlass 0.000000
  material change ambient Goodsell 0.520000
  material change diffuse Goodsell 1.000000
  material change specular Goodsell 0.000000
  material change shininess Goodsell 0.000000
  material change mirror Goodsell 0.000000
  material change opacity Goodsell 1.000000
  material change outline Goodsell 4.000000
  material change outlinewidth Goodsell 0.900000
  material change transmode Goodsell 0.000000
  material change ambient AOShiny 0.000000
  material change diffuse AOShiny 0.850000
  material change specular AOShiny 0.200000
  material change shininess AOShiny 0.530000
  material change mirror AOShiny 0.000000
  material change opacity AOShiny 1.000000
  material change outline AOShiny 0.000000
  material change outlinewidth AOShiny 0.000000
  material change transmode AOShiny 0.000000
  material change ambient AOChalky 0.000000
  material change diffuse AOChalky 0.850000
  material change specular AOChalky 0.000000
  material change shininess AOChalky 0.530000
  material change mirror AOChalky 0.000000
  material change opacity AOChalky 1.000000
  material change outline AOChalky 0.000000
  material change outlinewidth AOChalky 0.000000
  material change transmode AOChalky 0.000000
  material change ambient AOEdgy 0.000000
  material change diffuse AOEdgy 0.900000
  material change specular AOEdgy 0.200000
  material change shininess AOEdgy 0.530000
  material change mirror AOEdgy 0.000000
  material change opacity AOEdgy 1.000000
  material change outline AOEdgy 0.620000
  material change outlinewidth AOEdgy 0.930000
  material change transmode AOEdgy 0.000000
  material change ambient BlownGlass 0.040000
  material change diffuse BlownGlass 0.340000
  material change specular BlownGlass 1.000000
  material change shininess BlownGlass 1.000000
  material change mirror BlownGlass 0.000000
  material change opacity BlownGlass 0.100000
  material change outline BlownGlass 0.000000
  material change outlinewidth BlownGlass 0.000000
  material change transmode BlownGlass 1.000000
  material change ambient GlassBubble 0.250000
  material change diffuse GlassBubble 0.340000
  material change specular GlassBubble 1.000000
  material change shininess GlassBubble 1.000000
  material change mirror GlassBubble 0.000000
  material change opacity GlassBubble 0.040000
  material change outline GlassBubble 0.000000
  material change outlinewidth GlassBubble 0.000000
  material change transmode GlassBubble 1.000000
  material change ambient RTChrome 0.000000
  material change diffuse RTChrome 0.650000
  material change specular RTChrome 0.500000
  material change shininess RTChrome 0.530000
  material change mirror RTChrome 0.700000
  material change opacity RTChrome 1.000000
  material change outline RTChrome 0.000000
  material change outlinewidth RTChrome 0.000000
  material change transmode RTChrome 0.000000
}
vmdrestoremymaterials
# Atom selection macros
atomselect macro at {resname ADE A THY T}
atomselect macro acidic {resname ASP GLU}
atomselect macro cyclic {resname HIS PHE PRO TRP TYR}
atomselect macro acyclic {protein and not cyclic}
atomselect macro aliphatic {resname ALA GLY ILE LEU VAL}
atomselect macro alpha {protein and name CA}
atomselect macro amino protein
atomselect macro aromatic {resname HIS PHE TRP TYR}
atomselect macro basic {resname ARG HIS LYS HSP}
atomselect macro bonded {numbonds > 0}
atomselect macro buried {resname ALA LEU VAL ILE PHE CYS MET TRP}
atomselect macro cg {resname CYT C GUA G}
atomselect macro charged {basic or acidic}
atomselect macro hetero {not (protein or nucleic)}
atomselect macro hydrophobic {resname ALA LEU VAL ILE PRO PHE MET TRP}
atomselect macro small {resname ALA GLY SER}
atomselect macro medium {resname VAL THR ASP ASN PRO CYS ASX PCA HYP}
atomselect macro large {protein and not (small or medium)}
atomselect macro neutral {resname VAL PHE GLN TYR HIS CYS MET TRP ASX GLX PCA HYP}
atomselect macro polar {protein and not hydrophobic}
atomselect macro purine {resname ADE A GUA G}
atomselect macro pyrimidine {resname CYT C THY T URA U}
atomselect macro surface {protein and not buried}
atomselect macro lipid {resname DLPE DMPC DPPC GPC LPPC PALM PC PGCL POPC POPE POPS POPI CHL1 PSM}
atomselect macro lipids lipid
atomselect macro ion {resname AL BA CA CAL CD CES CLA CL CO CS CU CU1 CUA HG IN IOD K LIT MG MN3 MO3 MO4 MO5 MO6 NA NAW OC7 PB POT PT RB SOD TB TL WO4 YB ZN ZN1 ZN2}
atomselect macro ions ion
atomselect macro sugar {resname AGLC}
atomselect macro solvent {not (protein or sugar or nucleic or lipid)}
atomselect macro glycan {resname NAG BGLN FUC AFUC BFUC AGAL BGAL MAN AMAN BMA BMAN BCNA ANE5 AGAN}
atomselect macro carbon {name "C.*" and not ion}
atomselect macro hydrogen {name "[0-9]?H.*"}
atomselect macro nitrogen {name "N.*"}
atomselect macro oxygen {name "O.*"}
atomselect macro sulfur {name "S.*" and not ion}
atomselect macro noh {not hydrogen}
atomselect macro heme {resname HEM HEME}
atomselect macro conformationall {altloc ""}
atomselect macro conformationA {altloc "" or altloc "A"}
atomselect macro conformationB {altloc "" or altloc "B"}
atomselect macro conformationC {altloc "" or altloc "C"}
atomselect macro conformationD {altloc "" or altloc "D"}
atomselect macro conformationE {altloc "" or altloc "E"}
atomselect macro conformationF {altloc "" or altloc "F"}
atomselect macro drude {type DRUD or type LP}
atomselect macro unparametrized beta<1
atomselect macro addedmolefacture {occupancy 0.8}
atomselect macro qwikmd_protein {(not name QWIKMDDELETE and protein)}
atomselect macro qwikmd_nucleic {(not name QWIKMDDELETE and nucleic)}
atomselect macro qwikmd_glycan {(not name QWIKMDDELETE and glycan)}
atomselect macro qwikmd_lipid {(not name QWIKMDDELETE and lipid)}
atomselect macro qwikmd_hetero {(not name QWIKMDDELETE and hetero and not qwikmd_protein and not qwikmd_lipid and not qwikmd_nucleic and not qwikmd_glycan and not water)}
# Display settings
display eyesep       0.065000
display focallength  2.000000
display height       6.000000
display distance     -2.000000
display projection   Orthographic
display nearclip set 0.500000
display farclip  set 10.000000
display depthcue   on
display cuestart   0.500000
display cueend     10.000000
display cuestart   0.500000
display cueend     10.000000
display cuedensity 0.320000
display cuemode    Exp2
display shadows off
display ambientocclusion off
display aoambient 0.800000
display aodirect 0.300000
display dof off
display dof_fnumber 64.000000
display dof_focaldist 0.700000
mol new /Users/carlacalvo/Carla/wisp/wisp_spm/analysis_folder/mucins/nocal/wt/rep1/dist14/spike_wt_head_open_50ns.psf type psf first 0 last -1 step 1 filebonds 1 autobonds 1 waitfor all
#mol addfile /Users/carlacalvo/Carla/wisp/wisp_spm/analysis_folder/mucins/nocal/wt/rep1/dist14/cluster5.rep1.pdb type pdb first 0 last -1 step 100 filebonds 1 autobonds 1 waitfor all
mol addfile /Users/carlacalvo/Carla/wisp/wisp_spm/analysis_folder/mucins/nocal/wt/rep1/dist14/wt_spike_mucins_rep1_aligned_w_ions.pdb type pdb first 0 last -1 step 100 filebonds 1 autobonds 1 waitfor all
mol delrep 0 top
mol representation NewCartoon 0.300000 10.000000 4.100000 0
mol color ColorID 22
mol selection {chain A}
mol material AOChalky
mol addrep top
mol selupdate 0 top 0
mol colupdate 0 top 0
mol scaleminmax top 0 0.000000 0.000000
mol smoothrep top 0 0
mol drawframes top 0 {now}
mol clipplane center 0 0 top {0.0 0.0 0.0}
mol clipplane color  0 0 top {0.5 0.5 0.5 }
mol clipplane normal 0 0 top {0.0 0.0 1.0}
mol clipplane status 0 0 top {0}
mol clipplane center 1 0 top {0.0 0.0 0.0}
mol clipplane color  1 0 top {0.5 0.5 0.5 }
mol clipplane normal 1 0 top {0.0 0.0 1.0}
mol clipplane status 1 0 top {0}
mol clipplane center 2 0 top {0.0 0.0 0.0}
mol clipplane color  2 0 top {0.5 0.5 0.5 }
mol clipplane normal 2 0 top {0.0 0.0 1.0}
mol clipplane status 2 0 top {0}
mol clipplane center 3 0 top {0.0 0.0 0.0}
mol clipplane color  3 0 top {0.5 0.5 0.5 }
mol clipplane normal 3 0 top {0.0 0.0 1.0}
mol clipplane status 3 0 top {0}
mol clipplane center 4 0 top {0.0 0.0 0.0}
mol clipplane color  4 0 top {0.5 0.5 0.5 }
mol clipplane normal 4 0 top {0.0 0.0 1.0}
mol clipplane status 4 0 top {0}
mol clipplane center 5 0 top {0.0 0.0 0.0}
mol clipplane color  5 0 top {0.5 0.5 0.5 }
mol clipplane normal 5 0 top {0.0 0.0 1.0}
mol clipplane status 5 0 top {0}
mol representation NewCartoon 0.300000 10.000000 4.100000 0
mol color ColorID 21
mol selection {chain B}
mol material AOChalky
mol addrep top
mol selupdate 1 top 0
mol colupdate 1 top 0
mol scaleminmax top 1 0.000000 0.000000
mol smoothrep top 1 0
mol drawframes top 1 {now}
mol clipplane center 0 1 top {0.0 0.0 0.0}
mol clipplane color  0 1 top {0.5 0.5 0.5 }
mol clipplane normal 0 1 top {0.0 0.0 1.0}
mol clipplane status 0 1 top {0}
mol clipplane center 1 1 top {0.0 0.0 0.0}
mol clipplane color  1 1 top {0.5 0.5 0.5 }
mol clipplane normal 1 1 top {0.0 0.0 1.0}
mol clipplane status 1 1 top {0}
mol clipplane center 2 1 top {0.0 0.0 0.0}
mol clipplane color  2 1 top {0.5 0.5 0.5 }
mol clipplane normal 2 1 top {0.0 0.0 1.0}
mol clipplane status 2 1 top {0}
mol clipplane center 3 1 top {0.0 0.0 0.0}
mol clipplane color  3 1 top {0.5 0.5 0.5 }
mol clipplane normal 3 1 top {0.0 0.0 1.0}
mol clipplane status 3 1 top {0}
mol clipplane center 4 1 top {0.0 0.0 0.0}
mol clipplane color  4 1 top {0.5 0.5 0.5 }
mol clipplane normal 4 1 top {0.0 0.0 1.0}
mol clipplane status 4 1 top {0}
mol clipplane center 5 1 top {0.0 0.0 0.0}
mol clipplane color  5 1 top {0.5 0.5 0.5 }
mol clipplane normal 5 1 top {0.0 0.0 1.0}
mol clipplane status 5 1 top {0}
mol representation NewCartoon 0.300000 10.000000 4.100000 0
mol color ColorID 10
mol selection {chain C}
mol material AOChalky
mol addrep top
mol selupdate 2 top 0
mol colupdate 2 top 0
mol scaleminmax top 2 0.000000 0.000000
mol smoothrep top 2 0
mol drawframes top 2 {now}
mol clipplane center 0 2 top {0.0 0.0 0.0}
mol clipplane color  0 2 top {0.5 0.5 0.5 }
mol clipplane normal 0 2 top {0.0 0.0 1.0}
mol clipplane status 0 2 top {0}
mol clipplane center 1 2 top {0.0 0.0 0.0}
mol clipplane color  1 2 top {0.5 0.5 0.5 }
mol clipplane normal 1 2 top {0.0 0.0 1.0}
mol clipplane status 1 2 top {0}
mol clipplane center 2 2 top {0.0 0.0 0.0}
mol clipplane color  2 2 top {0.5 0.5 0.5 }
mol clipplane normal 2 2 top {0.0 0.0 1.0}
mol clipplane status 2 2 top {0}
mol clipplane center 3 2 top {0.0 0.0 0.0}
mol clipplane color  3 2 top {0.5 0.5 0.5 }
mol clipplane normal 3 2 top {0.0 0.0 1.0}
mol clipplane status 3 2 top {0}
mol clipplane center 4 2 top {0.0 0.0 0.0}
mol clipplane color  4 2 top {0.5 0.5 0.5 }
mol clipplane normal 4 2 top {0.0 0.0 1.0}
mol clipplane status 4 2 top {0}
mol clipplane center 5 2 top {0.0 0.0 0.0}
mol clipplane color  5 2 top {0.5 0.5 0.5 }
mol clipplane normal 5 2 top {0.0 0.0 1.0}
mol clipplane status 5 2 top {0}
mol representation QuickSurf 1.000000 0.500000 1.000000 1.000000
mol color ColorID 22
mol selection {chain A}
mol material AOChalky
mol addrep top
mol selupdate 3 top 0
mol colupdate 3 top 0
mol scaleminmax top 3 0.000000 0.000000
mol smoothrep top 3 0
mol drawframes top 3 {now}
mol clipplane center 0 3 top {0.0 0.0 0.0}
mol clipplane color  0 3 top {0.5 0.5 0.5 }
mol clipplane normal 0 3 top {0.0 0.0 1.0}
mol clipplane status 0 3 top {0}
mol clipplane center 1 3 top {0.0 0.0 0.0}
mol clipplane color  1 3 top {0.5 0.5 0.5 }
mol clipplane normal 1 3 top {0.0 0.0 1.0}
mol clipplane status 1 3 top {0}
mol clipplane center 2 3 top {0.0 0.0 0.0}
mol clipplane color  2 3 top {0.5 0.5 0.5 }
mol clipplane normal 2 3 top {0.0 0.0 1.0}
mol clipplane status 2 3 top {0}
mol clipplane center 3 3 top {0.0 0.0 0.0}
mol clipplane color  3 3 top {0.5 0.5 0.5 }
mol clipplane normal 3 3 top {0.0 0.0 1.0}
mol clipplane status 3 3 top {0}
mol clipplane center 4 3 top {0.0 0.0 0.0}
mol clipplane color  4 3 top {0.5 0.5 0.5 }
mol clipplane normal 4 3 top {0.0 0.0 1.0}
mol clipplane status 4 3 top {0}
mol clipplane center 5 3 top {0.0 0.0 0.0}
mol clipplane color  5 3 top {0.5 0.5 0.5 }
mol clipplane normal 5 3 top {0.0 0.0 1.0}
mol clipplane status 5 3 top {0}
mol showrep top 3 0
mol representation QuickSurf 1.000000 0.500000 1.000000 1.000000
mol color ColorID 21
mol selection {chain B}
mol material AOChalky
mol addrep top
mol selupdate 4 top 0
mol colupdate 4 top 0
mol scaleminmax top 4 0.000000 0.000000
mol smoothrep top 4 0
mol drawframes top 4 {now}
mol clipplane center 0 4 top {0.0 0.0 0.0}
mol clipplane color  0 4 top {0.5 0.5 0.5 }
mol clipplane normal 0 4 top {0.0 0.0 1.0}
mol clipplane status 0 4 top {0}
mol clipplane center 1 4 top {0.0 0.0 0.0}
mol clipplane color  1 4 top {0.5 0.5 0.5 }
mol clipplane normal 1 4 top {0.0 0.0 1.0}
mol clipplane status 1 4 top {0}
mol clipplane center 2 4 top {0.0 0.0 0.0}
mol clipplane color  2 4 top {0.5 0.5 0.5 }
mol clipplane normal 2 4 top {0.0 0.0 1.0}
mol clipplane status 2 4 top {0}
mol clipplane center 3 4 top {0.0 0.0 0.0}
mol clipplane color  3 4 top {0.5 0.5 0.5 }
mol clipplane normal 3 4 top {0.0 0.0 1.0}
mol clipplane status 3 4 top {0}
mol clipplane center 4 4 top {0.0 0.0 0.0}
mol clipplane color  4 4 top {0.5 0.5 0.5 }
mol clipplane normal 4 4 top {0.0 0.0 1.0}
mol clipplane status 4 4 top {0}
mol clipplane center 5 4 top {0.0 0.0 0.0}
mol clipplane color  5 4 top {0.5 0.5 0.5 }
mol clipplane normal 5 4 top {0.0 0.0 1.0}
mol clipplane status 5 4 top {0}
mol showrep top 4 0
mol representation QuickSurf 1.000000 0.500000 1.000000 1.000000
mol color ColorID 10
mol selection {chain C}
mol material AOChalky
mol addrep top
mol selupdate 5 top 0
mol colupdate 5 top 0
mol scaleminmax top 5 0.000000 0.000000
mol smoothrep top 5 0
mol drawframes top 5 {now}
mol clipplane center 0 5 top {0.0 0.0 0.0}
mol clipplane color  0 5 top {0.5 0.5 0.5 }
mol clipplane normal 0 5 top {0.0 0.0 1.0}
mol clipplane status 0 5 top {0}
mol clipplane center 1 5 top {0.0 0.0 0.0}
mol clipplane color  1 5 top {0.5 0.5 0.5 }
mol clipplane normal 1 5 top {0.0 0.0 1.0}
mol clipplane status 1 5 top {0}
mol clipplane center 2 5 top {0.0 0.0 0.0}
mol clipplane color  2 5 top {0.5 0.5 0.5 }
mol clipplane normal 2 5 top {0.0 0.0 1.0}
mol clipplane status 2 5 top {0}
mol clipplane center 3 5 top {0.0 0.0 0.0}
mol clipplane color  3 5 top {0.5 0.5 0.5 }
mol clipplane normal 3 5 top {0.0 0.0 1.0}
mol clipplane status 3 5 top {0}
mol clipplane center 4 5 top {0.0 0.0 0.0}
mol clipplane color  4 5 top {0.5 0.5 0.5 }
mol clipplane normal 4 5 top {0.0 0.0 1.0}
mol clipplane status 4 5 top {0}
mol clipplane center 5 5 top {0.0 0.0 0.0}
mol clipplane color  5 5 top {0.5 0.5 0.5 }
mol clipplane normal 5 5 top {0.0 0.0 1.0}
mol clipplane status 5 5 top {0}
mol showrep top 5 0
mol representation Licorice 0.300000 12.000000 12.000000
mol color ColorID 0
mol selection {((resname ASN SER THR and same residue as within 1.6 of chain G) or (chain G)) and noh}
mol material AOChalky
mol addrep top
mol selupdate 6 top 0
mol colupdate 6 top 0
mol scaleminmax top 6 0.000000 0.000000
mol smoothrep top 6 0
mol drawframes top 6 {now}
mol clipplane center 0 6 top {0.0 0.0 0.0}
mol clipplane color  0 6 top {0.5 0.5 0.5 }
mol clipplane normal 0 6 top {0.0 0.0 1.0}
mol clipplane status 0 6 top {0}
mol clipplane center 1 6 top {0.0 0.0 0.0}
mol clipplane color  1 6 top {0.5 0.5 0.5 }
mol clipplane normal 1 6 top {0.0 0.0 1.0}
mol clipplane status 1 6 top {0}
mol clipplane center 2 6 top {0.0 0.0 0.0}
mol clipplane color  2 6 top {0.5 0.5 0.5 }
mol clipplane normal 2 6 top {0.0 0.0 1.0}
mol clipplane status 2 6 top {0}
mol clipplane center 3 6 top {0.0 0.0 0.0}
mol clipplane color  3 6 top {0.5 0.5 0.5 }
mol clipplane normal 3 6 top {0.0 0.0 1.0}
mol clipplane status 3 6 top {0}
mol clipplane center 4 6 top {0.0 0.0 0.0}
mol clipplane color  4 6 top {0.5 0.5 0.5 }
mol clipplane normal 4 6 top {0.0 0.0 1.0}
mol clipplane status 4 6 top {0}
mol clipplane center 5 6 top {0.0 0.0 0.0}
mol clipplane color  5 6 top {0.5 0.5 0.5 }
mol clipplane normal 5 6 top {0.0 0.0 1.0}
mol clipplane status 5 6 top {0}
mol representation QuickSurf 1.000000 0.500000 1.000000 1.000000
mol color ColorID 30
mol selection {chain M N O P Q R and protein}
mol material AOChalky
mol addrep top
mol selupdate 7 top 0
mol colupdate 7 top 0
mol scaleminmax top 7 0.000000 0.000000
mol smoothrep top 7 0
mol drawframes top 7 {now}
mol clipplane center 0 7 top {0.0 0.0 0.0}
mol clipplane color  0 7 top {0.5 0.5 0.5 }
mol clipplane normal 0 7 top {0.0 0.0 1.0}
mol clipplane status 0 7 top {0}
mol clipplane center 1 7 top {0.0 0.0 0.0}
mol clipplane color  1 7 top {0.5 0.5 0.5 }
mol clipplane normal 1 7 top {0.0 0.0 1.0}
mol clipplane status 1 7 top {0}
mol clipplane center 2 7 top {0.0 0.0 0.0}
mol clipplane color  2 7 top {0.5 0.5 0.5 }
mol clipplane normal 2 7 top {0.0 0.0 1.0}
mol clipplane status 2 7 top {0}
mol clipplane center 3 7 top {0.0 0.0 0.0}
mol clipplane color  3 7 top {0.5 0.5 0.5 }
mol clipplane normal 3 7 top {0.0 0.0 1.0}
mol clipplane status 3 7 top {0}
mol clipplane center 4 7 top {0.0 0.0 0.0}
mol clipplane color  4 7 top {0.5 0.5 0.5 }
mol clipplane normal 4 7 top {0.0 0.0 1.0}
mol clipplane status 4 7 top {0}
mol clipplane center 5 7 top {0.0 0.0 0.0}
mol clipplane color  5 7 top {0.5 0.5 0.5 }
mol clipplane normal 5 7 top {0.0 0.0 1.0}
mol clipplane status 5 7 top {0}
mol representation Licorice 0.300000 12.000000 12.000000
mol color ColorID 30
mol selection {(chain M N O P Q R and not protein) and noh}
mol material AOChalky
mol addrep top
mol selupdate 8 top 0
mol colupdate 8 top 0
mol scaleminmax top 8 0.000000 0.000000
mol smoothrep top 8 0
mol drawframes top 8 {now}
mol clipplane center 0 8 top {0.0 0.0 0.0}
mol clipplane color  0 8 top {0.5 0.5 0.5 }
mol clipplane normal 0 8 top {0.0 0.0 1.0}
mol clipplane status 0 8 top {0}
mol clipplane center 1 8 top {0.0 0.0 0.0}
mol clipplane color  1 8 top {0.5 0.5 0.5 }
mol clipplane normal 1 8 top {0.0 0.0 1.0}
mol clipplane status 1 8 top {0}
mol clipplane center 2 8 top {0.0 0.0 0.0}
mol clipplane color  2 8 top {0.5 0.5 0.5 }
mol clipplane normal 2 8 top {0.0 0.0 1.0}
mol clipplane status 2 8 top {0}
mol clipplane center 3 8 top {0.0 0.0 0.0}
mol clipplane color  3 8 top {0.5 0.5 0.5 }
mol clipplane normal 3 8 top {0.0 0.0 1.0}
mol clipplane status 3 8 top {0}
mol clipplane center 4 8 top {0.0 0.0 0.0}
mol clipplane color  4 8 top {0.5 0.5 0.5 }
mol clipplane normal 4 8 top {0.0 0.0 1.0}
mol clipplane status 4 8 top {0}
mol clipplane center 5 8 top {0.0 0.0 0.0}
mol clipplane color  5 8 top {0.5 0.5 0.5 }
mol clipplane normal 5 8 top {0.0 0.0 1.0}
mol clipplane status 5 8 top {0}
mol representation QuickSurf 1.000000 0.500000 1.000000 1.000000
mol color ColorID 13
mol selection {chain A B C and resid 19 142 156 157 158 452 478 614 681 950}
mol material AOChalky
mol addrep top
mol selupdate 9 top 0
mol colupdate 9 top 0
mol scaleminmax top 9 0.000000 0.000000
mol smoothrep top 9 0
mol drawframes top 9 {now}
mol clipplane center 0 9 top {0.0 0.0 0.0}
mol clipplane color  0 9 top {0.5 0.5 0.5 }
mol clipplane normal 0 9 top {0.0 0.0 1.0}
mol clipplane status 0 9 top {0}
mol clipplane center 1 9 top {0.0 0.0 0.0}
mol clipplane color  1 9 top {0.5 0.5 0.5 }
mol clipplane normal 1 9 top {0.0 0.0 1.0}
mol clipplane status 1 9 top {0}
mol clipplane center 2 9 top {0.0 0.0 0.0}
mol clipplane color  2 9 top {0.5 0.5 0.5 }
mol clipplane normal 2 9 top {0.0 0.0 1.0}
mol clipplane status 2 9 top {0}
mol clipplane center 3 9 top {0.0 0.0 0.0}
mol clipplane color  3 9 top {0.5 0.5 0.5 }
mol clipplane normal 3 9 top {0.0 0.0 1.0}
mol clipplane status 3 9 top {0}
mol clipplane center 4 9 top {0.0 0.0 0.0}
mol clipplane color  4 9 top {0.5 0.5 0.5 }
mol clipplane normal 4 9 top {0.0 0.0 1.0}
mol clipplane status 4 9 top {0}
mol clipplane center 5 9 top {0.0 0.0 0.0}
mol clipplane color  5 9 top {0.5 0.5 0.5 }
mol clipplane normal 5 9 top {0.0 0.0 1.0}
mol clipplane status 5 9 top {0}
mol showrep top 9 0
mol representation QuickSurf 1.000000 0.500000 1.000000 1.000000
mol color ColorID 3
mol selection {chain A B C and resid 67 69 70 95 142 143 144 145 211 212 214 2141 2142 2143 339 371 373 375 417 440 446 477 484 493 496 498 501 505 547 614 655 679 681 764 796 856 954 969 981}
mol material AOChalky
mol addrep top
mol selupdate 10 top 0
mol colupdate 10 top 0
mol scaleminmax top 10 0.000000 0.000000
mol smoothrep top 10 0
mol drawframes top 10 {now}
mol clipplane center 0 10 top {0.0 0.0 0.0}
mol clipplane color  0 10 top {0.5 0.5 0.5 }
mol clipplane normal 0 10 top {0.0 0.0 1.0}
mol clipplane status 0 10 top {0}
mol clipplane center 1 10 top {0.0 0.0 0.0}
mol clipplane color  1 10 top {0.5 0.5 0.5 }
mol clipplane normal 1 10 top {0.0 0.0 1.0}
mol clipplane status 1 10 top {0}
mol clipplane center 2 10 top {0.0 0.0 0.0}
mol clipplane color  2 10 top {0.5 0.5 0.5 }
mol clipplane normal 2 10 top {0.0 0.0 1.0}
mol clipplane status 2 10 top {0}
mol clipplane center 3 10 top {0.0 0.0 0.0}
mol clipplane color  3 10 top {0.5 0.5 0.5 }
mol clipplane normal 3 10 top {0.0 0.0 1.0}
mol clipplane status 3 10 top {0}
mol clipplane center 4 10 top {0.0 0.0 0.0}
mol clipplane color  4 10 top {0.5 0.5 0.5 }
mol clipplane normal 4 10 top {0.0 0.0 1.0}
mol clipplane status 4 10 top {0}
mol clipplane center 5 10 top {0.0 0.0 0.0}
mol clipplane color  5 10 top {0.5 0.5 0.5 }
mol clipplane normal 5 10 top {0.0 0.0 1.0}
mol clipplane status 5 10 top {0}
mol showrep top 10 0
mol representation QuickSurf 1.000000 0.500000 1.000000 1.000000
mol color ColorID 24
mol selection {chain A and resid 13 to 291 2141 2142 2143}
mol material Transparent
mol addrep top
mol selupdate 11 top 0
mol colupdate 11 top 0
mol scaleminmax top 11 0.000000 0.000000
mol smoothrep top 11 0
mol drawframes top 11 {now}
mol clipplane center 0 11 top {0.0 0.0 0.0}
mol clipplane color  0 11 top {0.5 0.5 0.5 }
mol clipplane normal 0 11 top {0.0 0.0 1.0}
mol clipplane status 0 11 top {0}
mol clipplane center 1 11 top {0.0 0.0 0.0}
mol clipplane color  1 11 top {0.5 0.5 0.5 }
mol clipplane normal 1 11 top {0.0 0.0 1.0}
mol clipplane status 1 11 top {0}
mol clipplane center 2 11 top {0.0 0.0 0.0}
mol clipplane color  2 11 top {0.5 0.5 0.5 }
mol clipplane normal 2 11 top {0.0 0.0 1.0}
mol clipplane status 2 11 top {0}
mol clipplane center 3 11 top {0.0 0.0 0.0}
mol clipplane color  3 11 top {0.5 0.5 0.5 }
mol clipplane normal 3 11 top {0.0 0.0 1.0}
mol clipplane status 3 11 top {0}
mol clipplane center 4 11 top {0.0 0.0 0.0}
mol clipplane color  4 11 top {0.5 0.5 0.5 }
mol clipplane normal 4 11 top {0.0 0.0 1.0}
mol clipplane status 4 11 top {0}
mol clipplane center 5 11 top {0.0 0.0 0.0}
mol clipplane color  5 11 top {0.5 0.5 0.5 }
mol clipplane normal 5 11 top {0.0 0.0 1.0}
mol clipplane status 5 11 top {0}
mol representation QuickSurf 1.000000 0.500000 1.000000 1.000000
mol color ColorID 23
mol selection {chain A and resid 331 to 528}
mol material Transparent
mol addrep top
mol selupdate 12 top 0
mol colupdate 12 top 0
mol scaleminmax top 12 0.000000 0.000000
mol smoothrep top 12 0
mol drawframes top 12 {now}
mol clipplane center 0 12 top {0.0 0.0 0.0}
mol clipplane color  0 12 top {0.5 0.5 0.5 }
mol clipplane normal 0 12 top {0.0 0.0 1.0}
mol clipplane status 0 12 top {0}
mol clipplane center 1 12 top {0.0 0.0 0.0}
mol clipplane color  1 12 top {0.5 0.5 0.5 }
mol clipplane normal 1 12 top {0.0 0.0 1.0}
mol clipplane status 1 12 top {0}
mol clipplane center 2 12 top {0.0 0.0 0.0}
mol clipplane color  2 12 top {0.5 0.5 0.5 }
mol clipplane normal 2 12 top {0.0 0.0 1.0}
mol clipplane status 2 12 top {0}
mol clipplane center 3 12 top {0.0 0.0 0.0}
mol clipplane color  3 12 top {0.5 0.5 0.5 }
mol clipplane normal 3 12 top {0.0 0.0 1.0}
mol clipplane status 3 12 top {0}
mol clipplane center 4 12 top {0.0 0.0 0.0}
mol clipplane color  4 12 top {0.5 0.5 0.5 }
mol clipplane normal 4 12 top {0.0 0.0 1.0}
mol clipplane status 4 12 top {0}
mol clipplane center 5 12 top {0.0 0.0 0.0}
mol clipplane color  5 12 top {0.5 0.5 0.5 }
mol clipplane normal 5 12 top {0.0 0.0 1.0}
mol clipplane status 5 12 top {0}
mol representation QuickSurf 1.200000 0.500000 1.000000 1.000000
mol color ColorID 15
mol selection {chain A and resid 437 to 508}
mol material Transparent
mol addrep top
mol selupdate 13 top 0
mol colupdate 13 top 0
mol scaleminmax top 13 0.000000 0.000000
mol smoothrep top 13 0
mol drawframes top 13 {now}
mol clipplane center 0 13 top {0.0 0.0 0.0}
mol clipplane color  0 13 top {0.5 0.5 0.5 }
mol clipplane normal 0 13 top {0.0 0.0 1.0}
mol clipplane status 0 13 top {0}
mol clipplane center 1 13 top {0.0 0.0 0.0}
mol clipplane color  1 13 top {0.5 0.5 0.5 }
mol clipplane normal 1 13 top {0.0 0.0 1.0}
mol clipplane status 1 13 top {0}
mol clipplane center 2 13 top {0.0 0.0 0.0}
mol clipplane color  2 13 top {0.5 0.5 0.5 }
mol clipplane normal 2 13 top {0.0 0.0 1.0}
mol clipplane status 2 13 top {0}
mol clipplane center 3 13 top {0.0 0.0 0.0}
mol clipplane color  3 13 top {0.5 0.5 0.5 }
mol clipplane normal 3 13 top {0.0 0.0 1.0}
mol clipplane status 3 13 top {0}
mol clipplane center 4 13 top {0.0 0.0 0.0}
mol clipplane color  4 13 top {0.5 0.5 0.5 }
mol clipplane normal 4 13 top {0.0 0.0 1.0}
mol clipplane status 4 13 top {0}
mol clipplane center 5 13 top {0.0 0.0 0.0}
mol clipplane color  5 13 top {0.5 0.5 0.5 }
mol clipplane normal 5 13 top {0.0 0.0 1.0}
mol clipplane status 5 13 top {0}
mol representation QuickSurf 1.000000 0.500000 1.000000 1.000000
mol color ColorID 11
mol selection {chain A and resid 529 to 589}
mol material Transparent
mol addrep top
mol selupdate 14 top 0
mol colupdate 14 top 0
mol scaleminmax top 14 0.000000 0.000000
mol smoothrep top 14 0
mol drawframes top 14 {now}
mol clipplane center 0 14 top {0.0 0.0 0.0}
mol clipplane color  0 14 top {0.5 0.5 0.5 }
mol clipplane normal 0 14 top {0.0 0.0 1.0}
mol clipplane status 0 14 top {0}
mol clipplane center 1 14 top {0.0 0.0 0.0}
mol clipplane color  1 14 top {0.5 0.5 0.5 }
mol clipplane normal 1 14 top {0.0 0.0 1.0}
mol clipplane status 1 14 top {0}
mol clipplane center 2 14 top {0.0 0.0 0.0}
mol clipplane color  2 14 top {0.5 0.5 0.5 }
mol clipplane normal 2 14 top {0.0 0.0 1.0}
mol clipplane status 2 14 top {0}
mol clipplane center 3 14 top {0.0 0.0 0.0}
mol clipplane color  3 14 top {0.5 0.5 0.5 }
mol clipplane normal 3 14 top {0.0 0.0 1.0}
mol clipplane status 3 14 top {0}
mol clipplane center 4 14 top {0.0 0.0 0.0}
mol clipplane color  4 14 top {0.5 0.5 0.5 }
mol clipplane normal 4 14 top {0.0 0.0 1.0}
mol clipplane status 4 14 top {0}
mol clipplane center 5 14 top {0.0 0.0 0.0}
mol clipplane color  5 14 top {0.5 0.5 0.5 }
mol clipplane normal 5 14 top {0.0 0.0 1.0}
mol clipplane status 5 14 top {0}
mol representation QuickSurf 1.000000 0.500000 1.000000 1.000000
mol color ColorID 28
mol selection {chain A and resid 590 to 675 691 to 697}
mol material Transparent
mol addrep top
mol selupdate 15 top 0
mol colupdate 15 top 0
mol scaleminmax top 15 0.000000 0.000000
mol smoothrep top 15 0
mol drawframes top 15 {now}
mol clipplane center 0 15 top {0.0 0.0 0.0}
mol clipplane color  0 15 top {0.5 0.5 0.5 }
mol clipplane normal 0 15 top {0.0 0.0 1.0}
mol clipplane status 0 15 top {0}
mol clipplane center 1 15 top {0.0 0.0 0.0}
mol clipplane color  1 15 top {0.5 0.5 0.5 }
mol clipplane normal 1 15 top {0.0 0.0 1.0}
mol clipplane status 1 15 top {0}
mol clipplane center 2 15 top {0.0 0.0 0.0}
mol clipplane color  2 15 top {0.5 0.5 0.5 }
mol clipplane normal 2 15 top {0.0 0.0 1.0}
mol clipplane status 2 15 top {0}
mol clipplane center 3 15 top {0.0 0.0 0.0}
mol clipplane color  3 15 top {0.5 0.5 0.5 }
mol clipplane normal 3 15 top {0.0 0.0 1.0}
mol clipplane status 3 15 top {0}
mol clipplane center 4 15 top {0.0 0.0 0.0}
mol clipplane color  4 15 top {0.5 0.5 0.5 }
mol clipplane normal 4 15 top {0.0 0.0 1.0}
mol clipplane status 4 15 top {0}
mol clipplane center 5 15 top {0.0 0.0 0.0}
mol clipplane color  5 15 top {0.5 0.5 0.5 }
mol clipplane normal 5 15 top {0.0 0.0 1.0}
mol clipplane status 5 15 top {0}
mol representation QuickSurf 1.200000 0.500000 1.000000 1.000000
mol color ColorID 27
mol selection {chain A and resid 675 to 690}
mol material Transparent
mol addrep top
mol selupdate 16 top 0
mol colupdate 16 top 0
mol scaleminmax top 16 0.000000 0.000000
mol smoothrep top 16 0
mol drawframes top 16 {now}
mol clipplane center 0 16 top {0.0 0.0 0.0}
mol clipplane color  0 16 top {0.5 0.5 0.5 }
mol clipplane normal 0 16 top {0.0 0.0 1.0}
mol clipplane status 0 16 top {0}
mol clipplane center 1 16 top {0.0 0.0 0.0}
mol clipplane color  1 16 top {0.5 0.5 0.5 }
mol clipplane normal 1 16 top {0.0 0.0 1.0}
mol clipplane status 1 16 top {0}
mol clipplane center 2 16 top {0.0 0.0 0.0}
mol clipplane color  2 16 top {0.5 0.5 0.5 }
mol clipplane normal 2 16 top {0.0 0.0 1.0}
mol clipplane status 2 16 top {0}
mol clipplane center 3 16 top {0.0 0.0 0.0}
mol clipplane color  3 16 top {0.5 0.5 0.5 }
mol clipplane normal 3 16 top {0.0 0.0 1.0}
mol clipplane status 3 16 top {0}
mol clipplane center 4 16 top {0.0 0.0 0.0}
mol clipplane color  4 16 top {0.5 0.5 0.5 }
mol clipplane normal 4 16 top {0.0 0.0 1.0}
mol clipplane status 4 16 top {0}
mol clipplane center 5 16 top {0.0 0.0 0.0}
mol clipplane color  5 16 top {0.5 0.5 0.5 }
mol clipplane normal 5 16 top {0.0 0.0 1.0}
mol clipplane status 5 16 top {0}
mol representation QuickSurf 1.000000 0.500000 1.000000 1.000000
mol color ColorID 9
mol selection {chain A and resid 817 to 834}
mol material Transparent
mol addrep top
mol selupdate 17 top 0
mol colupdate 17 top 0
mol scaleminmax top 17 0.000000 0.000000
mol smoothrep top 17 0
mol drawframes top 17 {now}
mol clipplane center 0 17 top {0.0 0.0 0.0}
mol clipplane color  0 17 top {0.5 0.5 0.5 }
mol clipplane normal 0 17 top {0.0 0.0 1.0}
mol clipplane status 0 17 top {0}
mol clipplane center 1 17 top {0.0 0.0 0.0}
mol clipplane color  1 17 top {0.5 0.5 0.5 }
mol clipplane normal 1 17 top {0.0 0.0 1.0}
mol clipplane status 1 17 top {0}
mol clipplane center 2 17 top {0.0 0.0 0.0}
mol clipplane color  2 17 top {0.5 0.5 0.5 }
mol clipplane normal 2 17 top {0.0 0.0 1.0}
mol clipplane status 2 17 top {0}
mol clipplane center 3 17 top {0.0 0.0 0.0}
mol clipplane color  3 17 top {0.5 0.5 0.5 }
mol clipplane normal 3 17 top {0.0 0.0 1.0}
mol clipplane status 3 17 top {0}
mol clipplane center 4 17 top {0.0 0.0 0.0}
mol clipplane color  4 17 top {0.5 0.5 0.5 }
mol clipplane normal 4 17 top {0.0 0.0 1.0}
mol clipplane status 4 17 top {0}
mol clipplane center 5 17 top {0.0 0.0 0.0}
mol clipplane color  5 17 top {0.5 0.5 0.5 }
mol clipplane normal 5 17 top {0.0 0.0 1.0}
mol clipplane status 5 17 top {0}
mol representation QuickSurf 1.000000 0.500000 1.000000 1.000000
mol color ColorID 3
mol selection {chain A and resid 835 to 855}
mol material Transparent
mol addrep top
mol selupdate 18 top 0
mol colupdate 18 top 0
mol scaleminmax top 18 0.000000 0.000000
mol smoothrep top 18 0
mol drawframes top 18 {now}
mol clipplane center 0 18 top {0.0 0.0 0.0}
mol clipplane color  0 18 top {0.5 0.5 0.5 }
mol clipplane normal 0 18 top {0.0 0.0 1.0}
mol clipplane status 0 18 top {0}
mol clipplane center 1 18 top {0.0 0.0 0.0}
mol clipplane color  1 18 top {0.5 0.5 0.5 }
mol clipplane normal 1 18 top {0.0 0.0 1.0}
mol clipplane status 1 18 top {0}
mol clipplane center 2 18 top {0.0 0.0 0.0}
mol clipplane color  2 18 top {0.5 0.5 0.5 }
mol clipplane normal 2 18 top {0.0 0.0 1.0}
mol clipplane status 2 18 top {0}
mol clipplane center 3 18 top {0.0 0.0 0.0}
mol clipplane color  3 18 top {0.5 0.5 0.5 }
mol clipplane normal 3 18 top {0.0 0.0 1.0}
mol clipplane status 3 18 top {0}
mol clipplane center 4 18 top {0.0 0.0 0.0}
mol clipplane color  4 18 top {0.5 0.5 0.5 }
mol clipplane normal 4 18 top {0.0 0.0 1.0}
mol clipplane status 4 18 top {0}
mol clipplane center 5 18 top {0.0 0.0 0.0}
mol clipplane color  5 18 top {0.5 0.5 0.5 }
mol clipplane normal 5 18 top {0.0 0.0 1.0}
mol clipplane status 5 18 top {0}
mol representation QuickSurf 1.000000 0.500000 1.000000 1.000000
mol color ColorID 4
mol selection {chain A and resid 910 to 985}
mol material Transparent
mol addrep top
mol selupdate 19 top 0
mol colupdate 19 top 0
mol scaleminmax top 19 0.000000 0.000000
mol smoothrep top 19 0
mol drawframes top 19 {now}
mol clipplane center 0 19 top {0.0 0.0 0.0}
mol clipplane color  0 19 top {0.5 0.5 0.5 }
mol clipplane normal 0 19 top {0.0 0.0 1.0}
mol clipplane status 0 19 top {0}
mol clipplane center 1 19 top {0.0 0.0 0.0}
mol clipplane color  1 19 top {0.5 0.5 0.5 }
mol clipplane normal 1 19 top {0.0 0.0 1.0}
mol clipplane status 1 19 top {0}
mol clipplane center 2 19 top {0.0 0.0 0.0}
mol clipplane color  2 19 top {0.5 0.5 0.5 }
mol clipplane normal 2 19 top {0.0 0.0 1.0}
mol clipplane status 2 19 top {0}
mol clipplane center 3 19 top {0.0 0.0 0.0}
mol clipplane color  3 19 top {0.5 0.5 0.5 }
mol clipplane normal 3 19 top {0.0 0.0 1.0}
mol clipplane status 3 19 top {0}
mol clipplane center 4 19 top {0.0 0.0 0.0}
mol clipplane color  4 19 top {0.5 0.5 0.5 }
mol clipplane normal 4 19 top {0.0 0.0 1.0}
mol clipplane status 4 19 top {0}
mol clipplane center 5 19 top {0.0 0.0 0.0}
mol clipplane color  5 19 top {0.5 0.5 0.5 }
mol clipplane normal 5 19 top {0.0 0.0 1.0}
mol clipplane status 5 19 top {0}
mol representation QuickSurf 1.000000 0.500000 1.000000 1.000000
mol color ColorID 7
mol selection {chain A and resid 985 to 1034}
mol material Transparent
mol addrep top
mol selupdate 20 top 0
mol colupdate 20 top 0
mol scaleminmax top 20 0.000000 0.000000
mol smoothrep top 20 0
mol drawframes top 20 {now}
mol clipplane center 0 20 top {0.0 0.0 0.0}
mol clipplane color  0 20 top {0.5 0.5 0.5 }
mol clipplane normal 0 20 top {0.0 0.0 1.0}
mol clipplane status 0 20 top {0}
mol clipplane center 1 20 top {0.0 0.0 0.0}
mol clipplane color  1 20 top {0.5 0.5 0.5 }
mol clipplane normal 1 20 top {0.0 0.0 1.0}
mol clipplane status 1 20 top {0}
mol clipplane center 2 20 top {0.0 0.0 0.0}
mol clipplane color  2 20 top {0.5 0.5 0.5 }
mol clipplane normal 2 20 top {0.0 0.0 1.0}
mol clipplane status 2 20 top {0}
mol clipplane center 3 20 top {0.0 0.0 0.0}
mol clipplane color  3 20 top {0.5 0.5 0.5 }
mol clipplane normal 3 20 top {0.0 0.0 1.0}
mol clipplane status 3 20 top {0}
mol clipplane center 4 20 top {0.0 0.0 0.0}
mol clipplane color  4 20 top {0.5 0.5 0.5 }
mol clipplane normal 4 20 top {0.0 0.0 1.0}
mol clipplane status 4 20 top {0}
mol clipplane center 5 20 top {0.0 0.0 0.0}
mol clipplane color  5 20 top {0.5 0.5 0.5 }
mol clipplane normal 5 20 top {0.0 0.0 1.0}
mol clipplane status 5 20 top {0}
mol representation QuickSurf 1.000000 0.500000 1.000000 1.000000
mol color ColorID 12
mol selection {chain A and resid 1035 to 1068}
mol material Transparent
mol addrep top
mol selupdate 21 top 0
mol colupdate 21 top 0
mol scaleminmax top 21 0.000000 0.000000
mol smoothrep top 21 0
mol drawframes top 21 {now}
mol clipplane center 0 21 top {0.0 0.0 0.0}
mol clipplane color  0 21 top {0.5 0.5 0.5 }
mol clipplane normal 0 21 top {0.0 0.0 1.0}
mol clipplane status 0 21 top {0}
mol clipplane center 1 21 top {0.0 0.0 0.0}
mol clipplane color  1 21 top {0.5 0.5 0.5 }
mol clipplane normal 1 21 top {0.0 0.0 1.0}
mol clipplane status 1 21 top {0}
mol clipplane center 2 21 top {0.0 0.0 0.0}
mol clipplane color  2 21 top {0.5 0.5 0.5 }
mol clipplane normal 2 21 top {0.0 0.0 1.0}
mol clipplane status 2 21 top {0}
mol clipplane center 3 21 top {0.0 0.0 0.0}
mol clipplane color  3 21 top {0.5 0.5 0.5 }
mol clipplane normal 3 21 top {0.0 0.0 1.0}
mol clipplane status 3 21 top {0}
mol clipplane center 4 21 top {0.0 0.0 0.0}
mol clipplane color  4 21 top {0.5 0.5 0.5 }
mol clipplane normal 4 21 top {0.0 0.0 1.0}
mol clipplane status 4 21 top {0}
mol clipplane center 5 21 top {0.0 0.0 0.0}
mol clipplane color  5 21 top {0.5 0.5 0.5 }
mol clipplane normal 5 21 top {0.0 0.0 1.0}
mol clipplane status 5 21 top {0}
mol representation VDW 1.000000 12.000000
mol color ResName
mol selection {chain I and same residue as within 5 of chain A B C G M N O P Q R}
mol material AOChalky
mol addrep top
mol selupdate 22 top 1
mol colupdate 22 top 1
mol scaleminmax top 22 0.000000 0.000000
mol smoothrep top 22 0
mol drawframes top 22 {now}
mol clipplane center 0 22 top {0.0 0.0 0.0}
mol clipplane color  0 22 top {0.5 0.5 0.5 }
mol clipplane normal 0 22 top {0.0 0.0 1.0}
mol clipplane status 0 22 top {0}
mol clipplane center 1 22 top {0.0 0.0 0.0}
mol clipplane color  1 22 top {0.5 0.5 0.5 }
mol clipplane normal 1 22 top {0.0 0.0 1.0}
mol clipplane status 1 22 top {0}
mol clipplane center 2 22 top {0.0 0.0 0.0}
mol clipplane color  2 22 top {0.5 0.5 0.5 }
mol clipplane normal 2 22 top {0.0 0.0 1.0}
mol clipplane status 2 22 top {0}
mol clipplane center 3 22 top {0.0 0.0 0.0}
mol clipplane color  3 22 top {0.5 0.5 0.5 }
mol clipplane normal 3 22 top {0.0 0.0 1.0}
mol clipplane status 3 22 top {0}
mol clipplane center 4 22 top {0.0 0.0 0.0}
mol clipplane color  4 22 top {0.5 0.5 0.5 }
mol clipplane normal 4 22 top {0.0 0.0 1.0}
mol clipplane status 4 22 top {0}
mol clipplane center 5 22 top {0.0 0.0 0.0}
mol clipplane color  5 22 top {0.5 0.5 0.5 }
mol clipplane normal 5 22 top {0.0 0.0 1.0}
mol clipplane status 5 22 top {0}
mol rename top wt_spike_mucins_nocal_rep1.aligned_spike_CA.not_waters.psf
set viewpoints([molinfo top]) {{{1 0 0 5.15974} {0 1 0 -5.13178} {0 0 1 -194.995} {0 0 0 1}} {{0.947053 -0.27199 0.170652 0} {-0.171544 0.0206841 0.984962 0} {-0.271428 -0.962084 -0.0270655 0} {0 0 0 1}} {{0.0090073 0 0 0} {0 0.0090073 0 0} {0 0 0.0090073 0} {0 0 0 1}} {{1 0 0 0} {0 1 0 0} {0 0 1 0} {0 0 0 1}}}
lappend viewplist [molinfo top]
set topmol [molinfo top]
# done with molecule 0
foreach v $viewplist {
  molinfo $v set {center_matrix rotate_matrix scale_matrix global_matrix} $viewpoints($v)
}
foreach v $fixedlist {
  molinfo $v set fixed 1
}
unset viewplist
unset fixedlist
mol top $topmol
unset topmol
proc vmdrestoremycolors {} {
color scale colors RWB {1.0 0.0 0.0} {1.0 1.0 1.0} {0.0 0.0 1.0}
color scale colors BWR {0.0 0.0 1.0} {1.0 1.0 1.0} {1.0 0.0 0.0}
color scale colors RGryB {1.0 0.0 0.0} {0.5 0.5 0.5} {0.0 0.0 1.0}
color scale colors BGryR {0.0 0.0 1.0} {0.5 0.5 0.5} {1.0 0.0 0.0}
color scale colors RGB {1.0 0.0 0.0} {0.0 1.0 0.0} {0.0 0.0 1.0}
color scale colors BGR {0.0 0.0 1.0} {0.0 1.0 0.0} {1.0 0.0 0.0}
color scale colors RWG {1.0 0.0 0.0} {1.0 1.0 1.0} {0.0 1.0 0.0}
color scale colors GWR {0.0 1.0 0.0} {1.0 1.0 1.0} {1.0 0.0 0.0}
color scale colors GWB {0.0 1.0 0.0} {1.0 1.0 1.0} {0.0 0.0 1.0}
color scale colors BWG {0.0 0.0 1.0} {1.0 1.0 1.0} {0.0 1.0 0.0}
color scale colors BlkW {0.0 0.0 0.0} {0.5 0.5 0.5} {1.0 1.0 1.0}
color scale colors WBlk {1.0 1.0 1.0} {0.5 0.5 0.5} {0.0 0.0 0.0}
  color scale method RWB
  set colorcmds {
    {color Display {Background} white}
    {color Display {BackgroundTop} black}
    {color Display {BackgroundBot} blue2}
    {color Display {FPS} white}
    {color Axes {Labels} black}
    {color Name {LPA} green}
    {color Name {LPB} green}
    {color Type {LP} green}
    {color Type {DRUD} pink}
    {color Element {X} cyan}
    {color Element {Ac} ochre}
    {color Element {Ag} ochre}
    {color Element {Al} ochre}
    {color Element {Am} ochre}
    {color Element {Ar} ochre}
    {color Element {As} ochre}
    {color Element {At} ochre}
    {color Element {Au} ochre}
    {color Element {B} ochre}
    {color Element {Ba} ochre}
    {color Element {Be} ochre}
    {color Element {Bh} ochre}
    {color Element {Bi} ochre}
    {color Element {Bk} ochre}
    {color Element {Br} ochre}
    {color Element {Ca} ochre}
    {color Element {Cd} ochre}
    {color Element {Ce} ochre}
    {color Element {Cf} ochre}
    {color Element {Cl} ochre}
    {color Element {Cm} ochre}
    {color Element {Co} ochre}
    {color Element {Cr} ochre}
    {color Element {Cs} ochre}
    {color Element {Cu} ochre}
    {color Element {Db} ochre}
    {color Element {Ds} ochre}
    {color Element {Dy} ochre}
    {color Element {Er} ochre}
    {color Element {Es} ochre}
    {color Element {Eu} ochre}
    {color Element {F} ochre}
    {color Element {Fe} ochre}
    {color Element {Fm} ochre}
    {color Element {Fr} ochre}
    {color Element {Ga} ochre}
    {color Element {Gd} ochre}
    {color Element {Ge} ochre}
    {color Element {He} ochre}
    {color Element {Hf} ochre}
    {color Element {Hg} ochre}
    {color Element {Ho} ochre}
    {color Element {Hs} ochre}
    {color Element {I} ochre}
    {color Element {In} ochre}
    {color Element {Ir} ochre}
    {color Element {K} ochre}
    {color Element {Kr} ochre}
    {color Element {La} ochre}
    {color Element {Li} ochre}
    {color Element {Lr} ochre}
    {color Element {Lu} ochre}
    {color Element {Md} ochre}
    {color Element {Mg} ochre}
    {color Element {Mn} ochre}
    {color Element {Mo} ochre}
    {color Element {Mt} ochre}
    {color Element {Na} ochre}
    {color Element {Nb} ochre}
    {color Element {Nd} ochre}
    {color Element {Ne} ochre}
    {color Element {Ni} ochre}
    {color Element {No} ochre}
    {color Element {Np} ochre}
    {color Element {Os} ochre}
    {color Element {Pa} ochre}
    {color Element {Pb} ochre}
    {color Element {Pd} ochre}
    {color Element {Pm} ochre}
    {color Element {Po} ochre}
    {color Element {Pr} ochre}
    {color Element {Pt} ochre}
    {color Element {Pu} ochre}
    {color Element {Ra} ochre}
    {color Element {Rb} ochre}
    {color Element {Re} ochre}
    {color Element {Rf} ochre}
    {color Element {Rg} ochre}
    {color Element {Rh} ochre}
    {color Element {Rn} ochre}
    {color Element {Ru} ochre}
    {color Element {Sb} ochre}
    {color Element {Sc} ochre}
    {color Element {Se} ochre}
    {color Element {Sg} ochre}
    {color Element {Si} ochre}
    {color Element {Sm} ochre}
    {color Element {Sn} ochre}
    {color Element {Sr} ochre}
    {color Element {Ta} ochre}
    {color Element {Tb} ochre}
    {color Element {Tc} ochre}
    {color Element {Te} ochre}
    {color Element {Th} ochre}
    {color Element {Ti} ochre}
    {color Element {Tl} ochre}
    {color Element {Tm} ochre}
    {color Element {U} ochre}
    {color Element {V} ochre}
    {color Element {W} ochre}
    {color Element {Xe} ochre}
    {color Element {Y} ochre}
    {color Element {Yb} ochre}
    {color Element {Zr} ochre}
    {color Resname {BGLN} silver}
    {color Resname {AFUC} green}
    {color Resname {BMAN} white}
    {color Resname {AMAN} pink}
    {color Resname {BGAL} cyan}
    {color Resname {ANE5} purple}
    {color Resname {AGAN} lime}
    {color Resname {AGALNA} mauve}
    {color Resname {ANE5AC} ochre}
    {color Resname {BGLCNA} iceblue}
    {color Resname {SOD} orange}
    {color Resname {CLA} gray}
    {color Chain {A} blue}
    {color Chain {B} red}
    {color Chain {C} gray}
    {color Chain {G} orange}
    {color Chain {M} yellow}
    {color Chain {P} tan}
    {color Chain {R} silver}
    {color Chain {Q} green}
    {color Chain {N} white}
    {color Chain {O} pink}
    {color Chain {I} cyan}
    {color Segname {AS1} blue}
    {color Segname {AS2} red}
    {color Segname {BS1} gray}
    {color Segname {BS2} orange}
    {color Segname {CS1} yellow}
    {color Segname {CS2} tan}
    {color Segname {G1} silver}
    {color Segname {G2} green}
    {color Segname {G3} white}
    {color Segname {G4} pink}
    {color Segname {G5} cyan}
    {color Segname {G6} purple}
    {color Segname {G7} lime}
    {color Segname {G8} mauve}
    {color Segname {G9} ochre}
    {color Segname {G10} iceblue}
    {color Segname {G11} black}
    {color Segname {G12} yellow2}
    {color Segname {G13} yellow3}
    {color Segname {G14} green2}
    {color Segname {G15} green3}
    {color Segname {G16} cyan2}
    {color Segname {G17} cyan3}
    {color Segname {G18} blue2}
    {color Segname {G19} blue3}
    {color Segname {G23} violet}
    {color Segname {G24} violet2}
    {color Segname {G25} magenta}
    {color Segname {G26} magenta2}
    {color Segname {G27} red2}
    {color Segname {G28} red3}
    {color Segname {G29} orange2}
    {color Segname {G30} blue}
    {color Segname {G31} red}
    {color Segname {G32} gray}
    {color Segname {G33} orange}
    {color Segname {G34} yellow}
    {color Segname {G35} tan}
    {color Segname {G36} silver}
    {color Segname {G37} green}
    {color Segname {G38} white}
    {color Segname {G39} pink}
    {color Segname {G40} cyan}
    {color Segname {G41} purple}
    {color Segname {G42} lime}
    {color Segname {G43} mauve}
    {color Segname {G47} ochre}
    {color Segname {G48} iceblue}
    {color Segname {G49} black}
    {color Segname {G50} yellow2}
    {color Segname {G51} yellow3}
    {color Segname {G52} green2}
    {color Segname {G53} green3}
    {color Segname {G54} cyan2}
    {color Segname {G55} cyan3}
    {color Segname {G56} blue2}
    {color Segname {G57} blue3}
    {color Segname {G58} violet}
    {color Segname {G59} violet2}
    {color Segname {G60} magenta}
    {color Segname {G61} magenta2}
    {color Segname {G62} red2}
    {color Segname {G63} red3}
    {color Segname {G64} orange2}
    {color Segname {G65} blue}
    {color Segname {G66} red}
    {color Segname {G70} gray}
    {color Segname {MPRO} orange}
    {color Segname {Mg1} yellow}
    {color Segname {Mg2} tan}
    {color Segname {Mg3} silver}
    {color Segname {Mg4} green}
    {color Segname {Mg5} white}
    {color Segname {Mg6} pink}
    {color Segname {Mg7} cyan}
    {color Segname {Mg8} purple}
    {color Segname {Mg9} lime}
    {color Segname {Mg10} mauve}
    {color Segname {Mg11} ochre}
    {color Segname {Mg12} iceblue}
    {color Segname {Mg13} black}
    {color Segname {Mg14} yellow2}
    {color Segname {PPRO} yellow3}
    {color Segname {Pg1} green2}
    {color Segname {Pg2} green3}
    {color Segname {Pg3} cyan2}
    {color Segname {Pg4} cyan3}
    {color Segname {Pg5} blue2}
    {color Segname {Pg6} blue3}
    {color Segname {Pg7} violet}
    {color Segname {Pg8} violet2}
    {color Segname {Pg9} magenta}
    {color Segname {Pg10} magenta2}
    {color Segname {Pg11} red2}
    {color Segname {Pg12} red3}
    {color Segname {Pg13} orange2}
    {color Segname {Pg14} blue}
    {color Segname {Pg15} red}
    {color Segname {Pg16} gray}
    {color Segname {Pg17} orange}
    {color Segname {Pg18} yellow}
    {color Segname {RPRO} tan}
    {color Segname {Rg1} silver}
    {color Segname {Rg2} green}
    {color Segname {Rg3} white}
    {color Segname {Rg4} pink}
    {color Segname {Rg5} cyan}
    {color Segname {Rg6} purple}
    {color Segname {Rg7} lime}
    {color Segname {Rg8} mauve}
    {color Segname {Rg9} ochre}
    {color Segname {Rg10} iceblue}
    {color Segname {Rg11} black}
    {color Segname {Rg12} yellow2}
    {color Segname {Rg13} yellow3}
    {color Segname {Rg14} green2}
    {color Segname {Rg15} green3}
    {color Segname {Rg16} cyan2}
    {color Segname {Rg17} cyan3}
    {color Segname {Rg18} blue2}
    {color Segname {QPRO} blue3}
    {color Segname {Qg1} violet}
    {color Segname {Qg2} violet2}
    {color Segname {Qg3} magenta}
    {color Segname {Qg4} magenta2}
    {color Segname {Qg5} red2}
    {color Segname {Qg6} red3}
    {color Segname {Qg7} orange2}
    {color Segname {Qg8} blue}
    {color Segname {Qg9} red}
    {color Segname {Qg10} gray}
    {color Segname {Qg11} orange}
    {color Segname {Qg12} yellow}
    {color Segname {Qg13} tan}
    {color Segname {Qg14} silver}
    {color Segname {Qg15} green}
    {color Segname {Qg16} white}
    {color Segname {Qg17} pink}
    {color Segname {Qg18} cyan}
    {color Segname {NPRO} purple}
    {color Segname {Ng1} lime}
    {color Segname {Ng2} mauve}
    {color Segname {Ng3} ochre}
    {color Segname {Ng4} iceblue}
    {color Segname {Ng5} black}
    {color Segname {Ng6} yellow2}
    {color Segname {Ng7} yellow3}
    {color Segname {Ng8} green2}
    {color Segname {Ng9} green3}
    {color Segname {Ng10} cyan2}
    {color Segname {Ng11} cyan3}
    {color Segname {Ng12} blue2}
    {color Segname {Ng13} blue3}
    {color Segname {Ng14} violet}
    {color Segname {OPRO} violet2}
    {color Segname {Og1} magenta}
    {color Segname {Og2} magenta2}
    {color Segname {Og3} red2}
    {color Segname {Og4} red3}
    {color Segname {Og5} orange2}
    {color Segname {Og6} blue}
    {color Segname {Og7} red}
    {color Segname {Og8} gray}
    {color Segname {Og9} orange}
    {color Segname {Og10} yellow}
    {color Segname {Og11} tan}
    {color Segname {Og12} silver}
    {color Segname {Og13} green}
    {color Segname {Og14} white}
    {color Segname {ION} pink}
    {color Conformation {all} blue}
    {color Molecule {0} blue}
    {color Molecule {wt_spike_mucins_nocal_rep1.aligned_spike_CA.not_waters.psf} blue}
    {color Structure {3_10_Helix} blue}
    {color Surface {Grasp} gray}
    {color Labels {Atoms} black}
    {color Labels {Bonds} black}
    {color Labels {Dihedrals} black}
    {color Labels {Springs} orange}
    {color Stage {Even} gray}
    {color Stage {Odd} silver}
  }
  foreach colcmd $colorcmds {
    set val [catch {eval $colcmd}]
  }
  color change rgb 0 0.0 0.0 1.0
  color change rgb 2 0.3499999940395355 0.3499999940395355 0.3499999940395355
  color change rgb 3 1.0 0.5 0.0
  color change rgb 4 1.0 1.0 0.0
  color change rgb 5 0.5 0.5 0.20000000298023224
  color change rgb 6 0.6000000238418579 0.6000000238418579 0.6000000238418579
  color change rgb 7 0.0 1.0 0.0
  color change rgb 9 1.0 0.6000000238418579 0.6000000238418579
  color change rgb 11 0.6499999761581421 0.0 0.6499999761581421
  color change rgb 12 0.5 0.8999999761581421 0.4000000059604645
  color change rgb 13 0.8999999761581421 0.4000000059604645 0.699999988079071
  color change rgb 14 0.5 0.30000001192092896 0.0
  color change rgb 15 0.5 0.5 0.75
  color change rgb 17 0.8799999952316284 0.9700000286102295 0.019999999552965164
  color change rgb 18 0.550000011920929 0.8999999761581421 0.019999999552965164
  color change rgb 19 0.0 0.8999999761581421 0.03999999910593033
  color change rgb 20 0.0 0.8999999761581421 0.5
  color change rgb 21 0.0 0.8799999952316284 1.0
  color change rgb 22 0.0 0.7599999904632568 1.0
  color change rgb 23 0.019999999552965164 0.3799999952316284 0.6700000166893005
  color change rgb 24 0.009999999776482582 0.03999999910593033 0.9300000071525574
  color change rgb 25 0.27000001072883606 0.0 0.9800000190734863
  color change rgb 26 0.44999998807907104 0.0 0.8999999761581421
  color change rgb 27 0.8999999761581421 0.0 0.8999999761581421
  color change rgb 28 1.0 0.0 0.6600000262260437
  color change rgb 29 0.9800000190734863 0.0 0.23000000417232513
  color change rgb 30 0.8100000023841858 0.0 0.0
  color change rgb 31 0.8899999856948853 0.3499999940395355 0.0
  color change rgb 32 0.9599999785423279 0.7200000286102295 0.0
}
vmdrestoremycolors
label textsize 1.0
