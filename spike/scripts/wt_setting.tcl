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
# done with molecule 0
mol new /Users/carlacalvo/Carla/wisp/wisp_spm/analysis_folder/mucins/nocal/wt/rep1/dist14/wt_spike_mucins_rep1_aligned_w_ions.psf type psf first 0 last -1 step 1 filebonds 1 autobonds 1 waitfor all
mol addfile /Users/carlacalvo/Carla/wisp/wisp_spm/analysis_folder/mucins/nocal/wt/rep1/dist14/wt_spike_mucins_rep1_aligned_w_ions.pdb type pdb first 0 last -1 step 1 filebonds 1 autobonds 1 waitfor all
mol delrep 0 top
mol representation QuickSurf 1.200000 0.500000 1.000000 1.000000
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
mol representation QuickSurf 1.200000 0.500000 1.000000 1.000000
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
mol representation QuickSurf 1.200000 0.500000 1.000000 1.000000
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
mol representation Licorice 0.300000 12.000000 12.000000
mol color ColorID 0
mol selection {chain G and noh}
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
mol representation QuickSurf 1.200000 0.500000 1.000000 1.000000
mol color ColorID 30
mol selection {chain M N O P Q R and protein}
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
mol representation Licorice 0.300000 12.000000 12.000000
mol color ColorID 30
mol selection {chain M N O P Q R and not protein and noh}
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
mol rename top wt_spike_mucins_nocal_rep1.aligned_spike_CA.not_waters.psf
set viewpoints([molinfo top]) {{{1 0 0 4.07403} {0 1 0 -5.40216} {0 0 1 -187.904} {0 0 0 1}} {{-0.289622 0.957065 -0.0113197 0} {0.0458768 0.0257015 0.998614 0} {0.956032 0.288692 -0.0513712 0} {0 0 0 1}} {{0.00653669 0 0 0} {0 0.00653669 0 0} {0 0 0.00653669 0} {0 0 0 1}} {{1 0 0 0} {0 1 0 0} {0 0 1 0} {0 0 0 1}}}
lappend viewplist [molinfo top]
# done with molecule 1
