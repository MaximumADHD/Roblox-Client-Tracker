PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 SETTABLE                         R0 R2 R7
        7 FORGLOOP                         R3 2 ; [-2]
        9 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 JUMPIFEQKS                       R7 K3 ["running"] ; [+3]
       10 JUMPIFNOTEQKS                    R7 K4 ["completed"] ; [+2]
       12 SETTABLE                         R7 R2 R6
       13 FORGLOOP                         R3 2 ; [-6]
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 49
        3 DUPTABLE                         R1 K2 [{[1] = "describe_outfit"}]
        4 DUPTABLE                         R2 K4 [{[1] = "generate_part_designs"}]
        5 DUPTABLE                         R3 K8 [{[1] = "autosetup_original_body", ["stageName"] = "autosetup"}]
        6 DUPTABLE                         R4 K10 [{[1] = "clothing_autosetup", ["stageName"] = "autosetup"}]
        7 DUPTABLE                         R5 K13 [{[1] = "export", ["stageName"] = "export_for_roblox_per_branch"}]
        8 DUPTABLE                         R6 K15 [{[1] = "generate_body", ["stageName"] = "generate_body"}]
        9 DUPTABLE                         R7 K17 [{[1] = "generate_combined_2d", ["stageName"] = "generate_combined_2d"}]
       10 DUPTABLE                         R8 K20 [{[1] = "mesh_generation_bald_body", ["stageName"] = "mesh_generation"}]
       11 DUPTABLE                         R9 K22 [{[1] = "rig_source_body", ["stageName"] = "autosetup"}]
       12 DUPTABLE                         R10 K25 [{[1] = "align_body:bottoms", ["stageName"] = "align_body"}]
       13 DUPTABLE                         R11 K27 [{[1] = "cage_body:bottoms", ["stageName"] = "autosetup"}]
       14 DUPTABLE                         R12 K30 [{[1] = "fit_parts:bottoms", ["stageName"] = "fit_parts"}]
       15 DUPTABLE                         R13 K33 [{[1] = "intersection_fixing:bottoms", ["stageName"] = "intersection_fixing"}]
       16 DUPTABLE                         R14 K35 [{[1] = "mesh_generation_clothing:bottoms", ["stageName"] = "mesh_generation"}]
       17 DUPTABLE                         R15 K37 [{[1] = "mesh_generation_composite:bottoms", ["stageName"] = "mesh_generation"}]
       18 DUPTABLE                         R16 K40 [{[1] = "prep_autosetup:bottoms", ["stageName"] = "prep_autosetup_clothing_input"}]
       19 SETLIST                          R0 R1 16 [1]
       21 DUPTABLE                         R1 K43 [{[1] = "render_one_piece:bottoms", ["stageName"] = "render_mesh"}]
       22 DUPTABLE                         R2 K46 [{[1] = "segment_3d_seed:bottoms", ["stageName"] = "segment_single_image"}]
       23 DUPTABLE                         R3 K49 [{[1] = "segment_propagate_3d:bottoms", ["stageName"] = "segment_propagate_3d"}]
       24 DUPTABLE                         R4 K51 [{[1] = "align_body:head_accessories", ["stageName"] = "align_body"}]
       25 DUPTABLE                         R5 K53 [{[1] = "cage_body:head_accessories", ["stageName"] = "autosetup"}]
       26 DUPTABLE                         R6 K55 [{[1] = "fit_parts:head_accessories", ["stageName"] = "fit_parts"}]
       27 DUPTABLE                         R7 K57 [{[1] = "intersection_fixing:head_accessories", ["stageName"] = "intersection_fixing"}]
       28 DUPTABLE                         R8 K59 [{[1] = "mesh_generation_clothing:head_accessories", ["stageName"] = "mesh_generation"}]
       29 DUPTABLE                         R9 K61 [{[1] = "mesh_generation_composite:head_accessories", ["stageName"] = "mesh_generation"}]
       30 DUPTABLE                         R10 K63 [{[1] = "prep_autosetup:head_accessories", ["stageName"] = "prep_autosetup_clothing_input"}]
       31 DUPTABLE                         R11 K65 [{[1] = "render_one_piece:head_accessories", ["stageName"] = "render_mesh"}]
       32 DUPTABLE                         R12 K67 [{[1] = "segment_3d_seed:head_accessories", ["stageName"] = "segment_single_image"}]
       33 DUPTABLE                         R13 K69 [{[1] = "segment_propagate_3d:head_accessories", ["stageName"] = "segment_propagate_3d"}]
       34 DUPTABLE                         R14 K71 [{[1] = "align_body:shoes", ["stageName"] = "align_body"}]
       35 DUPTABLE                         R15 K73 [{[1] = "cage_body:shoes", ["stageName"] = "autosetup"}]
       36 DUPTABLE                         R16 K75 [{[1] = "fit_parts:shoes", ["stageName"] = "fit_parts"}]
       37 SETLIST                          R0 R1 16 [17]
       39 DUPTABLE                         R1 K77 [{[1] = "intersection_fixing:shoes", ["stageName"] = "intersection_fixing"}]
       40 DUPTABLE                         R2 K79 [{[1] = "mesh_generation_clothing:shoes", ["stageName"] = "mesh_generation"}]
       41 DUPTABLE                         R3 K81 [{[1] = "mesh_generation_composite:shoes", ["stageName"] = "mesh_generation"}]
       42 DUPTABLE                         R4 K83 [{[1] = "prep_autosetup:shoes", ["stageName"] = "prep_autosetup_clothing_input"}]
       43 DUPTABLE                         R5 K85 [{[1] = "render_one_piece:shoes", ["stageName"] = "render_mesh"}]
       44 DUPTABLE                         R6 K87 [{[1] = "segment_3d_seed:shoes", ["stageName"] = "segment_single_image"}]
       45 DUPTABLE                         R7 K89 [{[1] = "segment_propagate_3d:shoes", ["stageName"] = "segment_propagate_3d"}]
       46 DUPTABLE                         R8 K91 [{[1] = "align_body:tops", ["stageName"] = "align_body"}]
       47 DUPTABLE                         R9 K93 [{[1] = "cage_body:tops", ["stageName"] = "autosetup"}]
       48 DUPTABLE                         R10 K95 [{[1] = "fit_parts:tops", ["stageName"] = "fit_parts"}]
       49 DUPTABLE                         R11 K97 [{[1] = "intersection_fixing:tops", ["stageName"] = "intersection_fixing"}]
       50 DUPTABLE                         R12 K99 [{[1] = "mesh_generation_clothing:tops", ["stageName"] = "mesh_generation"}]
       51 DUPTABLE                         R13 K101 [{[1] = "mesh_generation_composite:tops", ["stageName"] = "mesh_generation"}]
       52 DUPTABLE                         R14 K103 [{[1] = "prep_autosetup:tops", ["stageName"] = "prep_autosetup_clothing_input"}]
       53 DUPTABLE                         R15 K105 [{[1] = "render_one_piece:tops", ["stageName"] = "render_mesh"}]
       54 DUPTABLE                         R16 K107 [{[1] = "segment_3d_seed:tops", ["stageName"] = "segment_single_image"}]
       55 SETLIST                          R0 R1 16 [33]
       57 DUPTABLE                         R1 K109 [{[1] = "segment_propagate_3d:tops", ["stageName"] = "segment_propagate_3d"}]
       58 SETLIST                          R0 R1 1 [49]
       60 DUPCLOSURE                       R1 K110 [PROTO_0]
       61 DUPCLOSURE                       R2 K111 [PROTO_1]
       62 NEWTABLE                         R3 0 93
       64 DUPTABLE                         R4 K115 [{["delaySeconds"] = 0, ["progress"] = 0}]
       65 DUPTABLE                         R5 K122 [{["delaySeconds"] = 0.6, ["progress"] = 0, ["step"] = "describe_outfit", ["planPending"] = True, ["updates"], ["thoughts"]}]
       66 NEWTABLE                         R7 0 2
       68 LOADK                            R8 K1 ["describe_outfit"]
       69 LOADK                            R9 K3 ["generate_part_designs"]
       70 SETLIST                          R7 R8 2 [1]
       72 NEWTABLE                         R8 0 0
       74 MOVE                             R9 R7
       75 LOADNIL                          R10
       76 LOADNIL                          R11
       77 FORGPREP                         R9
       78 LOADK                            R14 K123 ["running"]
       79 SETTABLE                         R14 R8 R13
       80 FORGLOOP                         R9 2 ; [-3]
       82 MOVE                             R6 R8
       83 SETTABLEKS                       R6 R5 K120 ["updates"]
       85 NEWTABLE                         R6 0 2
       87 DUPTABLE                         R7 K127 [{["Node"] = "describe_outfit", ["Text"] = "Picking out this NPC's gear from the look."}]
       88 DUPTABLE                         R8 K129 [{["Node"] = "generate_part_designs", ["Text"] = "Turning the 2D look into part views."}]
       89 SETLIST                          R6 R7 2 [1]
       91 SETTABLEKS                       R6 R5 K121 ["thoughts"]
       93 DUPTABLE                         R6 K131 [{["delaySeconds"] = 1.2, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
       94 NEWTABLE                         R7 0 1
       96 DUPTABLE                         R8 K133 [{["Node"] = "generate_part_designs", ["Text"] = "Still drawing the remaining parts."}]
       97 SETLIST                          R7 R8 1 [1]
       99 SETTABLEKS                       R7 R6 K121 ["thoughts"]
      101 DUPTABLE                         R7 K134 [{["delaySeconds"] = 0.6, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      102 NEWTABLE                         R8 0 1
      104 DUPTABLE                         R9 K136 [{["Node"] = "describe_outfit", ["Text"] = "Still on this NPC — shape, gear, and materials."}]
      105 SETLIST                          R8 R9 1 [1]
      107 SETTABLEKS                       R8 R7 K121 ["thoughts"]
      109 DUPTABLE                         R8 K134 [{["delaySeconds"] = 0.6, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      110 NEWTABLE                         R9 0 1
      112 DUPTABLE                         R10 K138 [{["Node"] = "describe_outfit", ["Text"] = "Splitting this NPC into body, clothes, and gear."}]
      113 SETLIST                          R9 R10 1 [1]
      115 SETTABLEKS                       R9 R8 K121 ["thoughts"]
      117 DUPTABLE                         R9 K134 [{["delaySeconds"] = 0.6, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      118 NEWTABLE                         R10 0 1
      120 DUPTABLE                         R11 K140 [{["Node"] = "generate_part_designs", ["Text"] = "The last few part views are landing."}]
      121 SETLIST                          R10 R11 1 [1]
      123 SETTABLEKS                       R10 R9 K121 ["thoughts"]
      125 DUPTABLE                         R10 K134 [{["delaySeconds"] = 0.6, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      126 NEWTABLE                         R11 0 1
      128 DUPTABLE                         R12 K142 [{["Node"] = "describe_outfit", ["Text"] = "Color and trim notes so the rest of the pipeline matches."}]
      129 SETLIST                          R11 R12 1 [1]
      131 SETTABLEKS                       R11 R10 K121 ["thoughts"]
      133 DUPTABLE                         R11 K131 [{["delaySeconds"] = 1.2, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      134 NEWTABLE                         R12 0 1
      136 DUPTABLE                         R13 K144 [{["Node"] = "generate_part_designs", ["Text"] = "Each part needs a readable front and back."}]
      137 SETLIST                          R12 R13 1 [1]
      139 SETTABLEKS                       R12 R11 K121 ["thoughts"]
      141 DUPTABLE                         R12 K134 [{["delaySeconds"] = 0.6, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      142 NEWTABLE                         R13 0 1
      144 DUPTABLE                         R14 K146 [{["Node"] = "describe_outfit", ["Text"] = "One NPC look, or stacked accessories?"}]
      145 SETLIST                          R13 R14 1 [1]
      147 SETTABLEKS                       R13 R12 K121 ["thoughts"]
      149 DUPTABLE                         R13 K131 [{["delaySeconds"] = 1.2, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      150 NEWTABLE                         R14 0 1
      152 DUPTABLE                         R15 K148 [{["Node"] = "generate_part_designs", ["Text"] = "Trim and material going down so sculpting has a target."}]
      153 SETLIST                          R14 R15 1 [1]
      155 SETTABLEKS                       R14 R13 K121 ["thoughts"]
      157 DUPTABLE                         R14 K134 [{["delaySeconds"] = 0.6, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      158 NEWTABLE                         R15 0 1
      160 DUPTABLE                         R16 K150 [{["Node"] = "describe_outfit", ["Text"] = "Still on describe outfit (64s in) — this is the slow, careful stretch."}]
      161 SETLIST                          R15 R16 1 [1]
      163 SETTABLEKS                       R15 R14 K121 ["thoughts"]
      165 DUPTABLE                         R15 K131 [{["delaySeconds"] = 1.2, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      166 NEWTABLE                         R16 0 1
      168 DUPTABLE                         R17 K152 [{["Node"] = "generate_part_designs", ["Text"] = "A cohesion check across the part sheets."}]
      169 SETLIST                          R16 R17 1 [1]
      171 SETTABLEKS                       R16 R15 K121 ["thoughts"]
      173 DUPTABLE                         R16 K134 [{["delaySeconds"] = 0.6, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      174 NEWTABLE                         R17 0 1
      176 DUPTABLE                         R18 K154 [{["Node"] = "describe_outfit", ["Text"] = "Hanging in on describe outfit; this pass is running long."}]
      177 SETLIST                          R17 R18 1 [1]
      179 SETTABLEKS                       R17 R16 K121 ["thoughts"]
      181 DUPTABLE                         R17 K157 [{["delaySeconds"] = 0.6, ["progress"] = 0.08, ["step"] = "generate_part_designs", ["planPending"] = False, ["updates"]}]
      182 NEWTABLE                         R19 0 2
      184 LOADK                            R20 K1 ["describe_outfit"]
      185 LOADK                            R21 K3 ["generate_part_designs"]
      186 SETLIST                          R19 R20 2 [1]
      188 NEWTABLE                         R20 0 0
      190 MOVE                             R21 R19
      191 LOADNIL                          R22
      192 LOADNIL                          R23
      193 FORGPREP                         R21
      194 LOADK                            R26 K158 ["completed"]
      195 SETTABLE                         R26 R20 R25
      196 FORGLOOP                         R21 2 ; [-3]
      198 MOVE                             R18 R20
      199 SETTABLEKS                       R18 R17 K120 ["updates"]
      201 DUPTABLE                         R18 K160 [{["delaySeconds"] = 0.6, ["progress"] = 0.15, ["step"] = "mesh_generation_clothing:head_accessories", ["updates"], ["thoughts"]}]
      202 NEWTABLE                         R20 0 5
      204 LOADK                            R21 K14 ["generate_body"]
      205 LOADK                            R22 K16 ["generate_combined_2d"]
      206 LOADK                            R23 K18 ["mesh_generation_bald_body"]
      207 LOADK                            R24 K34 ["mesh_generation_clothing:bottoms"]
      208 LOADK                            R25 K58 ["mesh_generation_clothing:head_accessories"]
      209 SETLIST                          R20 R21 5 [1]
      211 NEWTABLE                         R21 0 0
      213 MOVE                             R22 R20
      214 LOADNIL                          R23
      215 LOADNIL                          R24
      216 FORGPREP                         R22
      217 LOADK                            R27 K123 ["running"]
      218 SETTABLE                         R27 R21 R26
      219 FORGLOOP                         R22 2 ; [-3]
      221 MOVE                             R19 R21
      222 SETTABLEKS                       R19 R18 K120 ["updates"]
      224 NEWTABLE                         R19 0 5
      226 DUPTABLE                         R20 K162 [{["Node"] = "generate_body", ["Text"] = "Starting an NPC body sculpt from the sheet."}]
      227 DUPTABLE                         R21 K164 [{["Node"] = "generate_combined_2d", ["Text"] = "Putting the outfit into one 2D view."}]
      228 DUPTABLE                         R22 K166 [{["Node"] = "mesh_generation_bald_body", ["Text"] = "Sculpting the bald-body mesh."}]
      229 DUPTABLE                         R23 K168 [{["Node"] = "mesh_generation_clothing:bottoms", ["Text"] = "Sculpting garments from the design sheets."}]
      230 DUPTABLE                         R24 K169 [{["Node"] = "mesh_generation_clothing:head_accessories", ["Text"] = "Sculpting garments from the design sheets."}]
      231 SETLIST                          R19 R20 5 [1]
      233 SETTABLEKS                       R19 R18 K121 ["thoughts"]
      235 DUPTABLE                         R19 K171 [{["delaySeconds"] = 0.6, ["progress"] = 0.18, ["step"] = "mesh_generation_clothing:tops", ["updates"], ["thoughts"]}]
      236 NEWTABLE                         R21 0 2
      238 LOADK                            R22 K78 ["mesh_generation_clothing:shoes"]
      239 LOADK                            R23 K98 ["mesh_generation_clothing:tops"]
      240 SETLIST                          R21 R22 2 [1]
      242 NEWTABLE                         R22 0 0
      244 MOVE                             R23 R21
      245 LOADNIL                          R24
      246 LOADNIL                          R25
      247 FORGPREP                         R23
      248 LOADK                            R28 K123 ["running"]
      249 SETTABLE                         R28 R22 R27
      250 FORGLOOP                         R23 2 ; [-3]
      252 MOVE                             R20 R22
      253 SETTABLEKS                       R20 R19 K120 ["updates"]
      255 NEWTABLE                         R20 0 3
      257 DUPTABLE                         R21 K173 [{["Node"] = "generate_combined_2d", ["Text"] = "Still on generate combined 2d (10s in) — still in the middle of the interesting part."}]
      258 DUPTABLE                         R22 K174 [{["Node"] = "mesh_generation_clothing:shoes", ["Text"] = "Sculpting garments from the design sheets."}]
      259 DUPTABLE                         R23 K175 [{["Node"] = "mesh_generation_clothing:tops", ["Text"] = "Sculpting garments from the design sheets."}]
      260 SETLIST                          R20 R21 3 [1]
      262 SETTABLEKS                       R20 R19 K121 ["thoughts"]
      264 SETLIST                          R3 R4 16 [1]
      266 DUPTABLE                         R4 K177 [{["delaySeconds"] = 0.6, ["progress"] = 0.19, ["step"] = "generate_combined_2d", ["updates"], ["thoughts"]}]
      267 NEWTABLE                         R7 0 1
      269 LOADK                            R8 K21 ["rig_source_body"]
      270 SETLIST                          R7 R8 1 [1]
      272 NEWTABLE                         R8 0 0
      274 MOVE                             R9 R7
      275 LOADNIL                          R10
      276 LOADNIL                          R11
      277 FORGPREP                         R9
      278 LOADK                            R14 K123 ["running"]
      279 SETTABLE                         R14 R8 R13
      280 FORGLOOP                         R9 2 ; [-3]
      282 MOVE                             R6 R8
      283 NEWTABLE                         R8 0 1
      285 LOADK                            R9 K18 ["mesh_generation_bald_body"]
      286 SETLIST                          R8 R9 1 [1]
      288 NEWTABLE                         R9 0 0
      290 MOVE                             R10 R8
      291 LOADNIL                          R11
      292 LOADNIL                          R12
      293 FORGPREP                         R10
      294 LOADK                            R15 K158 ["completed"]
      295 SETTABLE                         R15 R9 R14
      296 FORGLOOP                         R10 2 ; [-3]
      298 MOVE                             R7 R9
      299 GETIMPORT                        R8 K180 [table.clone]
      301 MOVE                             R9 R6
      302 CALL                             R8 1 1
      303 MOVE                             R9 R7
      304 LOADNIL                          R10
      305 LOADNIL                          R11
      306 FORGPREP                         R9
      307 JUMPIFEQKS                       R13 K123 ["running"] ; [+3]
      309 JUMPIFNOTEQKS                    R13 K158 ["completed"] ; [+2]
      311 SETTABLE                         R13 R8 R12
      312 FORGLOOP                         R9 2 ; [-6]
      314 MOVE                             R5 R8
      315 SETTABLEKS                       R5 R4 K120 ["updates"]
      317 NEWTABLE                         R5 0 6
      319 DUPTABLE                         R6 K182 [{["Node"] = "generate_body", ["Text"] = "NPC proportion pass so gear has a place to sit."}]
      320 DUPTABLE                         R7 K184 [{["Node"] = "mesh_generation_clothing:bottoms", ["Text"] = "Still on garment sculpt — the slow step."}]
      321 DUPTABLE                         R8 K185 [{["Node"] = "mesh_generation_clothing:head_accessories", ["Text"] = "Still on garment sculpt — the slow step."}]
      322 DUPTABLE                         R9 K186 [{["Node"] = "mesh_generation_clothing:shoes", ["Text"] = "Still on garment sculpt — the slow step."}]
      323 DUPTABLE                         R10 K187 [{["Node"] = "mesh_generation_clothing:tops", ["Text"] = "Still on garment sculpt — the slow step."}]
      324 DUPTABLE                         R11 K189 [{["Node"] = "rig_source_body", ["Text"] = "Putting a rig on the source body."}]
      325 SETLIST                          R5 R6 6 [1]
      327 SETTABLEKS                       R5 R4 K121 ["thoughts"]
      329 DUPTABLE                         R5 K190 [{["delaySeconds"] = 0.6, ["progress"] = 0.19, ["step"] = "mesh_generation_clothing:bottoms", ["thoughts"]}]
      330 NEWTABLE                         R6 0 1
      332 DUPTABLE                         R7 K192 [{["Node"] = "generate_combined_2d", ["Text"] = "Hanging in on generate combined 2d; this pass is running long."}]
      333 SETLIST                          R6 R7 1 [1]
      335 SETTABLEKS                       R6 R5 K121 ["thoughts"]
      337 DUPTABLE                         R6 K194 [{["delaySeconds"] = 0.6, ["progress"] = 0.22, ["step"] = "mesh_generation_clothing:shoes", ["updates"], ["thoughts"]}]
      338 NEWTABLE                         R9 0 4
      340 LOADK                            R10 K36 ["mesh_generation_composite:bottoms"]
      341 LOADK                            R11 K60 ["mesh_generation_composite:head_accessories"]
      342 LOADK                            R12 K80 ["mesh_generation_composite:shoes"]
      343 LOADK                            R13 K100 ["mesh_generation_composite:tops"]
      344 SETLIST                          R9 R10 4 [1]
      346 NEWTABLE                         R10 0 0
      348 MOVE                             R11 R9
      349 LOADNIL                          R12
      350 LOADNIL                          R13
      351 FORGPREP                         R11
      352 LOADK                            R16 K123 ["running"]
      353 SETTABLE                         R16 R10 R15
      354 FORGLOOP                         R11 2 ; [-3]
      356 MOVE                             R8 R10
      357 NEWTABLE                         R10 0 1
      359 LOADK                            R11 K16 ["generate_combined_2d"]
      360 SETLIST                          R10 R11 1 [1]
      362 NEWTABLE                         R11 0 0
      364 MOVE                             R12 R10
      365 LOADNIL                          R13
      366 LOADNIL                          R14
      367 FORGPREP                         R12
      368 LOADK                            R17 K158 ["completed"]
      369 SETTABLE                         R17 R11 R16
      370 FORGLOOP                         R12 2 ; [-3]
      372 MOVE                             R9 R11
      373 GETIMPORT                        R10 K180 [table.clone]
      375 MOVE                             R11 R8
      376 CALL                             R10 1 1
      377 MOVE                             R11 R9
      378 LOADNIL                          R12
      379 LOADNIL                          R13
      380 FORGPREP                         R11
      381 JUMPIFEQKS                       R15 K123 ["running"] ; [+3]
      383 JUMPIFNOTEQKS                    R15 K158 ["completed"] ; [+2]
      385 SETTABLE                         R15 R10 R14
      386 FORGLOOP                         R11 2 ; [-6]
      388 MOVE                             R7 R10
      389 SETTABLEKS                       R7 R6 K120 ["updates"]
      391 NEWTABLE                         R7 0 10
      393 DUPTABLE                         R8 K196 [{["Node"] = "generate_body", ["Text"] = "Massing an NPC torso that can hold accessories."}]
      394 DUPTABLE                         R9 K198 [{["Node"] = "mesh_generation_clothing:bottoms", ["Text"] = "Tidying clothing topology."}]
      395 DUPTABLE                         R10 K199 [{["Node"] = "mesh_generation_clothing:head_accessories", ["Text"] = "Tidying clothing topology."}]
      396 DUPTABLE                         R11 K200 [{["Node"] = "mesh_generation_clothing:shoes", ["Text"] = "Tidying clothing topology."}]
      397 DUPTABLE                         R12 K201 [{["Node"] = "mesh_generation_clothing:tops", ["Text"] = "Tidying clothing topology."}]
      398 DUPTABLE                         R13 K203 [{["Node"] = "rig_source_body", ["Text"] = "Still placing joints on the source."}]
      399 DUPTABLE                         R14 K205 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "A one-piece preview mesh for this garment."}]
      400 DUPTABLE                         R15 K206 [{["Node"] = "mesh_generation_composite:head_accessories", ["Text"] = "A one-piece preview mesh for this garment."}]
      401 DUPTABLE                         R16 K207 [{["Node"] = "mesh_generation_composite:shoes", ["Text"] = "A one-piece preview mesh for this garment."}]
      402 DUPTABLE                         R17 K208 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "A one-piece preview mesh for this garment."}]
      403 SETLIST                          R7 R8 10 [1]
      405 SETTABLEKS                       R7 R6 K121 ["thoughts"]
      407 DUPTABLE                         R7 K210 [{["delaySeconds"] = 0.6, ["progress"] = 0.23, ["step"] = "generate_body", ["updates"], ["thoughts"]}]
      408 NEWTABLE                         R9 0 1
      410 LOADK                            R10 K58 ["mesh_generation_clothing:head_accessories"]
      411 SETLIST                          R9 R10 1 [1]
      413 NEWTABLE                         R10 0 0
      415 MOVE                             R11 R9
      416 LOADNIL                          R12
      417 LOADNIL                          R13
      418 FORGPREP                         R11
      419 LOADK                            R16 K158 ["completed"]
      420 SETTABLE                         R16 R10 R15
      421 FORGLOOP                         R11 2 ; [-3]
      423 MOVE                             R8 R10
      424 SETTABLEKS                       R8 R7 K120 ["updates"]
      426 NEWTABLE                         R8 0 3
      428 DUPTABLE                         R9 K212 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "Putting the garment on the body for a preview."}]
      429 DUPTABLE                         R10 K213 [{["Node"] = "mesh_generation_composite:head_accessories", ["Text"] = "Putting the garment on the body for a preview."}]
      430 DUPTABLE                         R11 K214 [{["Node"] = "mesh_generation_composite:shoes", ["Text"] = "Putting the garment on the body for a preview."}]
      431 SETLIST                          R8 R9 3 [1]
      433 SETTABLEKS                       R8 R7 K121 ["thoughts"]
      435 DUPTABLE                         R8 K216 [{["delaySeconds"] = 0.6, ["progress"] = 0.25, ["step"] = "mesh_generation_clothing:tops", ["updates"], ["thoughts"]}]
      436 NEWTABLE                         R10 0 1
      438 LOADK                            R11 K98 ["mesh_generation_clothing:tops"]
      439 SETLIST                          R10 R11 1 [1]
      441 NEWTABLE                         R11 0 0
      443 MOVE                             R12 R10
      444 LOADNIL                          R13
      445 LOADNIL                          R14
      446 FORGPREP                         R12
      447 LOADK                            R17 K158 ["completed"]
      448 SETTABLE                         R17 R11 R16
      449 FORGLOOP                         R12 2 ; [-3]
      451 MOVE                             R9 R11
      452 SETTABLEKS                       R9 R8 K120 ["updates"]
      454 NEWTABLE                         R9 0 3
      456 DUPTABLE                         R10 K218 [{["Node"] = "generate_body", ["Text"] = "Evening this NPC before clothes and gear go on."}]
      457 DUPTABLE                         R11 K220 [{["Node"] = "rig_source_body", ["Text"] = "Still on rig source body (21s in) — hanging in — good work doesn't rush."}]
      458 DUPTABLE                         R12 K221 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Putting the garment on the body for a preview."}]
      459 SETLIST                          R9 R10 3 [1]
      461 SETTABLEKS                       R9 R8 K121 ["thoughts"]
      463 DUPTABLE                         R9 K222 [{["delaySeconds"] = 0.6, ["progress"] = 0.25, ["step"] = "mesh_generation_composite:tops", ["updates"], ["thoughts"]}]
      464 NEWTABLE                         R11 0 1
      466 LOADK                            R12 K21 ["rig_source_body"]
      467 SETLIST                          R11 R12 1 [1]
      469 NEWTABLE                         R12 0 0
      471 MOVE                             R13 R11
      472 LOADNIL                          R14
      473 LOADNIL                          R15
      474 FORGPREP                         R13
      475 LOADK                            R18 K158 ["completed"]
      476 SETTABLE                         R18 R12 R17
      477 FORGLOOP                         R13 2 ; [-3]
      479 MOVE                             R10 R12
      480 SETTABLEKS                       R10 R9 K120 ["updates"]
      482 NEWTABLE                         R10 0 7
      484 DUPTABLE                         R11 K224 [{["Node"] = "mesh_generation_clothing:bottoms", ["Text"] = "Folds and hems should read in 3D."}]
      485 DUPTABLE                         R12 K225 [{["Node"] = "mesh_generation_clothing:shoes", ["Text"] = "Folds and hems should read in 3D."}]
      486 DUPTABLE                         R13 K227 [{["Node"] = "rig_source_body", ["Text"] = "Hanging in on rig source body; this pass is running long."}]
      487 DUPTABLE                         R14 K229 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "Still on mesh generation composite:bottoms (21s in) — hanging in — good work doesn't rush."}]
      488 DUPTABLE                         R15 K231 [{["Node"] = "mesh_generation_composite:head_accessories", ["Text"] = "Still on mesh generation composite:head accessories (21s in) — hanging in — good work doesn't rush."}]
      489 DUPTABLE                         R16 K233 [{["Node"] = "mesh_generation_composite:shoes", ["Text"] = "Still on mesh generation composite:shoes (21s in) — hanging in — good work doesn't rush."}]
      490 DUPTABLE                         R17 K235 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Still on mesh generation composite:tops (21s in) — hanging in — good work doesn't rush."}]
      491 SETLIST                          R10 R11 7 [1]
      493 SETTABLEKS                       R10 R9 K121 ["thoughts"]
      495 DUPTABLE                         R10 K236 [{["delaySeconds"] = 0.6, ["progress"] = 0.25, ["step"] = "generate_body", ["thoughts"]}]
      496 NEWTABLE                         R11 0 1
      498 DUPTABLE                         R12 K238 [{["Node"] = "generate_body", ["Text"] = "The silhouette should agree with the sheet."}]
      499 SETLIST                          R11 R12 1 [1]
      501 SETTABLEKS                       R11 R10 K121 ["thoughts"]
      503 DUPTABLE                         R11 K240 [{["delaySeconds"] = 0.6, ["progress"] = 0.27, ["step"] = "mesh_generation_clothing:shoes", ["updates"], ["thoughts"]}]
      504 NEWTABLE                         R13 0 1
      506 LOADK                            R14 K78 ["mesh_generation_clothing:shoes"]
      507 SETLIST                          R13 R14 1 [1]
      509 NEWTABLE                         R14 0 0
      511 MOVE                             R15 R13
      512 LOADNIL                          R16
      513 LOADNIL                          R17
      514 FORGPREP                         R15
      515 LOADK                            R20 K158 ["completed"]
      516 SETTABLE                         R20 R14 R19
      517 FORGLOOP                         R15 2 ; [-3]
      519 MOVE                             R12 R14
      520 SETTABLEKS                       R12 R11 K120 ["updates"]
      522 NEWTABLE                         R12 0 2
      524 DUPTABLE                         R13 K242 [{["Node"] = "mesh_generation_composite:head_accessories", ["Text"] = "Hanging in on mesh generation composite:head accessories; this pass is running long."}]
      525 DUPTABLE                         R14 K244 [{["Node"] = "mesh_generation_composite:shoes", ["Text"] = "Hanging in on mesh generation composite:shoes; this pass is running long."}]
      526 SETLIST                          R12 R13 2 [1]
      528 SETTABLEKS                       R12 R11 K121 ["thoughts"]
      530 DUPTABLE                         R12 K245 [{["delaySeconds"] = 0.6, ["progress"] = 0.27, ["step"] = "mesh_generation_clothing:bottoms", ["thoughts"]}]
      531 NEWTABLE                         R13 0 4
      533 DUPTABLE                         R14 K247 [{["Node"] = "generate_body", ["Text"] = "Are the legs and arms the length the drawing promised?"}]
      534 DUPTABLE                         R15 K249 [{["Node"] = "mesh_generation_clothing:bottoms", ["Text"] = "Hanging in on mesh generation clothing:bottoms; this pass is running long."}]
      535 DUPTABLE                         R16 K251 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "Hanging in on mesh generation composite:bottoms; this pass is running long."}]
      536 DUPTABLE                         R17 K253 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Hanging in on mesh generation composite:tops; this pass is running long."}]
      537 SETLIST                          R13 R14 4 [1]
      539 SETTABLEKS                       R13 R12 K121 ["thoughts"]
      541 DUPTABLE                         R13 K256 [{["delaySeconds"] = 0.6, ["progress"] = 0.29, ["step"] = "align_body:shoes", ["showPreview"] = True, ["updates"], ["thoughts"]}]
      542 NEWTABLE                         R16 0 2
      544 LOADK                            R17 K70 ["align_body:shoes"]
      545 LOADK                            R18 K84 ["render_one_piece:shoes"]
      546 SETLIST                          R16 R17 2 [1]
      548 NEWTABLE                         R17 0 0
      550 MOVE                             R18 R16
      551 LOADNIL                          R19
      552 LOADNIL                          R20
      553 FORGPREP                         R18
      554 LOADK                            R23 K123 ["running"]
      555 SETTABLE                         R23 R17 R22
      556 FORGLOOP                         R18 2 ; [-3]
      558 MOVE                             R15 R17
      559 NEWTABLE                         R17 0 1
      561 LOADK                            R18 K80 ["mesh_generation_composite:shoes"]
      562 SETLIST                          R17 R18 1 [1]
      564 NEWTABLE                         R18 0 0
      566 MOVE                             R19 R17
      567 LOADNIL                          R20
      568 LOADNIL                          R21
      569 FORGPREP                         R19
      570 LOADK                            R24 K158 ["completed"]
      571 SETTABLE                         R24 R18 R23
      572 FORGLOOP                         R19 2 ; [-3]
      574 MOVE                             R16 R18
      575 GETIMPORT                        R17 K180 [table.clone]
      577 MOVE                             R18 R15
      578 CALL                             R17 1 1
      579 MOVE                             R18 R16
      580 LOADNIL                          R19
      581 LOADNIL                          R20
      582 FORGPREP                         R18
      583 JUMPIFEQKS                       R22 K123 ["running"] ; [+3]
      585 JUMPIFNOTEQKS                    R22 K158 ["completed"] ; [+2]
      587 SETTABLE                         R22 R17 R21
      588 FORGLOOP                         R18 2 ; [-6]
      590 MOVE                             R14 R17
      591 SETTABLEKS                       R14 R13 K120 ["updates"]
      593 NEWTABLE                         R14 0 2
      595 DUPTABLE                         R15 K258 [{["Node"] = "align_body:shoes", ["Text"] = "Matching body to clothing."}]
      596 DUPTABLE                         R16 K260 [{["Node"] = "render_one_piece:shoes", ["Text"] = "Drawing a one-piece preview."}]
      597 SETLIST                          R14 R15 2 [1]
      599 SETTABLEKS                       R14 R13 K121 ["thoughts"]
      601 DUPTABLE                         R14 K261 [{["delaySeconds"] = 0.6, ["progress"] = 0.29, ["step"] = "mesh_generation_clothing:bottoms", ["thoughts"]}]
      602 NEWTABLE                         R15 0 1
      604 DUPTABLE                         R16 K263 [{["Node"] = "mesh_generation_composite:head_accessories", ["Text"] = "Still on mesh generation composite:head accessories after the typical wait."}]
      605 SETLIST                          R15 R16 1 [1]
      607 SETTABLEKS                       R15 R14 K121 ["thoughts"]
      609 DUPTABLE                         R15 K265 [{["delaySeconds"] = 0.6, ["progress"] = 0.37, ["step"] = "segment_3d_seed:shoes", ["updates"], ["thoughts"]}]
      610 NEWTABLE                         R18 0 2
      612 LOADK                            R19 K5 ["autosetup_original_body"]
      613 LOADK                            R20 K86 ["segment_3d_seed:shoes"]
      614 SETLIST                          R18 R19 2 [1]
      616 NEWTABLE                         R19 0 0
      618 MOVE                             R20 R18
      619 LOADNIL                          R21
      620 LOADNIL                          R22
      621 FORGPREP                         R20
      622 LOADK                            R25 K123 ["running"]
      623 SETTABLE                         R25 R19 R24
      624 FORGLOOP                         R20 2 ; [-3]
      626 MOVE                             R17 R19
      627 NEWTABLE                         R19 0 3
      629 LOADK                            R20 K14 ["generate_body"]
      630 LOADK                            R21 K34 ["mesh_generation_clothing:bottoms"]
      631 LOADK                            R22 K84 ["render_one_piece:shoes"]
      632 SETLIST                          R19 R20 3 [1]
      634 NEWTABLE                         R20 0 0
      636 MOVE                             R21 R19
      637 LOADNIL                          R22
      638 LOADNIL                          R23
      639 FORGPREP                         R21
      640 LOADK                            R26 K158 ["completed"]
      641 SETTABLE                         R26 R20 R25
      642 FORGLOOP                         R21 2 ; [-3]
      644 MOVE                             R18 R20
      645 GETIMPORT                        R19 K180 [table.clone]
      647 MOVE                             R20 R17
      648 CALL                             R19 1 1
      649 MOVE                             R20 R18
      650 LOADNIL                          R21
      651 LOADNIL                          R22
      652 FORGPREP                         R20
      653 JUMPIFEQKS                       R24 K123 ["running"] ; [+3]
      655 JUMPIFNOTEQKS                    R24 K158 ["completed"] ; [+2]
      657 SETTABLE                         R24 R19 R23
      658 FORGLOOP                         R20 2 ; [-6]
      660 MOVE                             R16 R19
      661 SETTABLEKS                       R16 R15 K120 ["updates"]
      663 NEWTABLE                         R16 0 8
      665 DUPTABLE                         R17 K267 [{["Node"] = "generate_body", ["Text"] = "NPC head and neck — hats need a place to land."}]
      666 DUPTABLE                         R18 K269 [{["Node"] = "mesh_generation_clothing:bottoms", ["Text"] = "Still on mesh generation clothing:bottoms after the typical wait."}]
      667 DUPTABLE                         R19 K271 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "Still on mesh generation composite:bottoms after the typical wait."}]
      668 DUPTABLE                         R20 K273 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Still on mesh generation composite:tops after the typical wait."}]
      669 DUPTABLE                         R21 K275 [{["Node"] = "align_body:shoes", ["Text"] = "A fit nudge so clothing doesn't float."}]
      670 DUPTABLE                         R22 K277 [{["Node"] = "render_one_piece:shoes", ["Text"] = "Hanging in on render one piece:shoes; this pass is running long."}]
      671 DUPTABLE                         R23 K279 [{["Node"] = "autosetup_original_body", ["Text"] = "Getting the source body ready for autosetup."}]
      672 DUPTABLE                         R24 K281 [{["Node"] = "segment_3d_seed:shoes", ["Text"] = "Cutting the 3D seed into parts."}]
      673 SETLIST                          R16 R17 8 [1]
      675 SETTABLEKS                       R16 R15 K121 ["thoughts"]
      677 DUPTABLE                         R16 K282 [{["delaySeconds"] = 1.2, ["progress"] = 0.37, ["step"] = "autosetup_original_body", ["thoughts"]}]
      678 NEWTABLE                         R17 0 4
      680 DUPTABLE                         R18 K284 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "Still working through mesh generation composite:bottoms — it's a long one."}]
      681 DUPTABLE                         R19 K286 [{["Node"] = "mesh_generation_composite:head_accessories", ["Text"] = "Still working through mesh generation composite:head accessories — it's a long one."}]
      682 DUPTABLE                         R20 K288 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Still working through mesh generation composite:tops — it's a long one."}]
      683 DUPTABLE                         R21 K290 [{["Node"] = "align_body:shoes", ["Text"] = "The body should agree with the drawing."}]
      684 SETLIST                          R17 R18 4 [1]
      686 SETTABLEKS                       R17 R16 K121 ["thoughts"]
      688 DUPTABLE                         R17 K291 [{["delaySeconds"] = 0.6, ["progress"] = 0.37, ["step"] = "mesh_generation_composite:bottoms", ["thoughts"]}]
      689 NEWTABLE                         R18 0 2
      691 DUPTABLE                         R19 K293 [{["Node"] = "autosetup_original_body", ["Text"] = "Still running the source body through setup."}]
      692 DUPTABLE                         R20 K295 [{["Node"] = "segment_3d_seed:shoes", ["Text"] = "Still on segment 3d seed:shoes (12s in) — still in the middle of the interesting part."}]
      693 SETLIST                          R18 R19 2 [1]
      695 SETTABLEKS                       R18 R17 K121 ["thoughts"]
      697 DUPTABLE                         R18 K297 [{["delaySeconds"] = 0.6, ["progress"] = 0.41, ["step"] = "segment_3d_seed:shoes", ["updates"], ["thoughts"]}]
      698 NEWTABLE                         R21 0 2
      700 LOADK                            R22 K50 ["align_body:head_accessories"]
      701 LOADK                            R23 K64 ["render_one_piece:head_accessories"]
      702 SETLIST                          R21 R22 2 [1]
      704 NEWTABLE                         R22 0 0
      706 MOVE                             R23 R21
      707 LOADNIL                          R24
      708 LOADNIL                          R25
      709 FORGPREP                         R23
      710 LOADK                            R28 K123 ["running"]
      711 SETTABLE                         R28 R22 R27
      712 FORGLOOP                         R23 2 ; [-3]
      714 MOVE                             R20 R22
      715 NEWTABLE                         R22 0 2
      717 LOADK                            R23 K60 ["mesh_generation_composite:head_accessories"]
      718 LOADK                            R24 K86 ["segment_3d_seed:shoes"]
      719 SETLIST                          R22 R23 2 [1]
      721 NEWTABLE                         R23 0 0
      723 MOVE                             R24 R22
      724 LOADNIL                          R25
      725 LOADNIL                          R26
      726 FORGPREP                         R24
      727 LOADK                            R29 K158 ["completed"]
      728 SETTABLE                         R29 R23 R28
      729 FORGLOOP                         R24 2 ; [-3]
      731 MOVE                             R21 R23
      732 GETIMPORT                        R22 K180 [table.clone]
      734 MOVE                             R23 R20
      735 CALL                             R22 1 1
      736 MOVE                             R23 R21
      737 LOADNIL                          R24
      738 LOADNIL                          R25
      739 FORGPREP                         R23
      740 JUMPIFEQKS                       R27 K123 ["running"] ; [+3]
      742 JUMPIFNOTEQKS                    R27 K158 ["completed"] ; [+2]
      744 SETTABLE                         R27 R22 R26
      745 FORGLOOP                         R23 2 ; [-6]
      747 MOVE                             R19 R22
      748 SETTABLEKS                       R19 R18 K120 ["updates"]
      750 NEWTABLE                         R19 0 2
      752 DUPTABLE                         R20 K298 [{["Node"] = "align_body:head_accessories", ["Text"] = "Matching body to clothing."}]
      753 DUPTABLE                         R21 K299 [{["Node"] = "render_one_piece:head_accessories", ["Text"] = "Drawing a one-piece preview."}]
      754 SETLIST                          R19 R20 2 [1]
      756 SETTABLEKS                       R19 R18 K121 ["thoughts"]
      758 DUPTABLE                         R19 K300 [{["delaySeconds"] = 0.6, ["progress"] = 0.41, ["step"] = "segment_propagate_3d:shoes", ["updates"], ["thoughts"]}]
      759 NEWTABLE                         R21 0 1
      761 LOADK                            R22 K88 ["segment_propagate_3d:shoes"]
      762 SETLIST                          R21 R22 1 [1]
      764 NEWTABLE                         R22 0 0
      766 MOVE                             R23 R21
      767 LOADNIL                          R24
      768 LOADNIL                          R25
      769 FORGPREP                         R23
      770 LOADK                            R28 K123 ["running"]
      771 SETTABLE                         R28 R22 R27
      772 FORGLOOP                         R23 2 ; [-3]
      774 MOVE                             R20 R22
      775 SETTABLEKS                       R20 R19 K120 ["updates"]
      777 NEWTABLE                         R20 0 6
      779 DUPTABLE                         R21 K302 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "Not done with mesh generation composite:bottoms yet — longer than the typical pass."}]
      780 DUPTABLE                         R22 K304 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Not done with mesh generation composite:tops yet — longer than the typical pass."}]
      781 DUPTABLE                         R23 K306 [{["Node"] = "align_body:shoes", ["Text"] = "Settling the stance so the clothes hang right."}]
      782 DUPTABLE                         R24 K308 [{["Node"] = "autosetup_original_body", ["Text"] = "Keeping the original proportions as we bind."}]
      783 DUPTABLE                         R25 K310 [{["Node"] = "render_one_piece:head_accessories", ["Text"] = "Hanging in on render one piece:head accessories; this pass is running long."}]
      784 DUPTABLE                         R26 K312 [{["Node"] = "segment_propagate_3d:shoes", ["Text"] = "Spreading segmentation across the mesh."}]
      785 SETLIST                          R20 R21 6 [1]
      787 SETTABLEKS                       R20 R19 K121 ["thoughts"]
      789 SETLIST                          R3 R4 16 [17]
      791 DUPTABLE                         R4 K314 [{["delaySeconds"] = 0.6, ["progress"] = 0.42, ["step"] = "segment_propagate_3d:shoes", ["updates"], ["thoughts"]}]
      792 NEWTABLE                         R7 0 1
      794 LOADK                            R8 K66 ["segment_3d_seed:head_accessories"]
      795 SETLIST                          R7 R8 1 [1]
      797 NEWTABLE                         R8 0 0
      799 MOVE                             R9 R7
      800 LOADNIL                          R10
      801 LOADNIL                          R11
      802 FORGPREP                         R9
      803 LOADK                            R14 K123 ["running"]
      804 SETTABLE                         R14 R8 R13
      805 FORGLOOP                         R9 2 ; [-3]
      807 MOVE                             R6 R8
      808 NEWTABLE                         R8 0 1
      810 LOADK                            R9 K64 ["render_one_piece:head_accessories"]
      811 SETLIST                          R8 R9 1 [1]
      813 NEWTABLE                         R9 0 0
      815 MOVE                             R10 R8
      816 LOADNIL                          R11
      817 LOADNIL                          R12
      818 FORGPREP                         R10
      819 LOADK                            R15 K158 ["completed"]
      820 SETTABLE                         R15 R9 R14
      821 FORGLOOP                         R10 2 ; [-3]
      823 MOVE                             R7 R9
      824 GETIMPORT                        R8 K180 [table.clone]
      826 MOVE                             R9 R6
      827 CALL                             R8 1 1
      828 MOVE                             R9 R7
      829 LOADNIL                          R10
      830 LOADNIL                          R11
      831 FORGPREP                         R9
      832 JUMPIFEQKS                       R13 K123 ["running"] ; [+3]
      834 JUMPIFNOTEQKS                    R13 K158 ["completed"] ; [+2]
      836 SETTABLE                         R13 R8 R12
      837 FORGLOOP                         R9 2 ; [-6]
      839 MOVE                             R5 R8
      840 SETTABLEKS                       R5 R4 K120 ["updates"]
      842 NEWTABLE                         R5 0 2
      844 DUPTABLE                         R6 K315 [{["Node"] = "align_body:head_accessories", ["Text"] = "A fit nudge so clothing doesn't float."}]
      845 DUPTABLE                         R7 K316 [{["Node"] = "segment_3d_seed:head_accessories", ["Text"] = "Cutting the 3D seed into parts."}]
      846 SETLIST                          R5 R6 2 [1]
      848 SETTABLEKS                       R5 R4 K121 ["thoughts"]
      850 DUPTABLE                         R5 K317 [{["delaySeconds"] = 0.6, ["progress"] = 0.42, ["step"] = "mesh_generation_composite:bottoms", ["thoughts"]}]
      851 NEWTABLE                         R6 0 3
      853 DUPTABLE                         R7 K319 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Should be wrapping mesh generation composite:tops soon; it's past the usual mark."}]
      854 DUPTABLE                         R8 K321 [{["Node"] = "segment_propagate_3d:shoes", ["Text"] = "Hanging in on segment propagate 3d:shoes; this pass is running long."}]
      855 DUPTABLE                         R9 K323 [{["Node"] = "segment_3d_seed:head_accessories", ["Text"] = "Still on segment 3d seed:head accessories (12s in) — still in the middle of the interesting part."}]
      856 SETLIST                          R6 R7 3 [1]
      858 SETTABLEKS                       R6 R5 K121 ["thoughts"]
      860 DUPTABLE                         R6 K324 [{["delaySeconds"] = 0.6, ["progress"] = 0.42, ["step"] = "segment_propagate_3d:shoes", ["thoughts"]}]
      861 NEWTABLE                         R7 0 3
      863 DUPTABLE                         R8 K326 [{["Node"] = "align_body:shoes", ["Text"] = "Still on align body:shoes (55s in) — another pass before we move on."}]
      864 DUPTABLE                         R9 K328 [{["Node"] = "autosetup_original_body", ["Text"] = "Putting this mesh on the avatar rig."}]
      865 DUPTABLE                         R10 K329 [{["Node"] = "align_body:head_accessories", ["Text"] = "The body should agree with the drawing."}]
      866 SETLIST                          R7 R8 3 [1]
      868 SETTABLEKS                       R7 R6 K121 ["thoughts"]
      870 DUPTABLE                         R7 K331 [{["delaySeconds"] = 0.6, ["progress"] = 0.43, ["step"] = "fit_parts:shoes", ["updates"], ["thoughts"]}]
      871 NEWTABLE                         R10 0 1
      873 LOADK                            R11 K74 ["fit_parts:shoes"]
      874 SETLIST                          R10 R11 1 [1]
      876 NEWTABLE                         R11 0 0
      878 MOVE                             R12 R10
      879 LOADNIL                          R13
      880 LOADNIL                          R14
      881 FORGPREP                         R12
      882 LOADK                            R17 K123 ["running"]
      883 SETTABLE                         R17 R11 R16
      884 FORGLOOP                         R12 2 ; [-3]
      886 MOVE                             R9 R11
      887 NEWTABLE                         R11 0 1
      889 LOADK                            R12 K88 ["segment_propagate_3d:shoes"]
      890 SETLIST                          R11 R12 1 [1]
      892 NEWTABLE                         R12 0 0
      894 MOVE                             R13 R11
      895 LOADNIL                          R14
      896 LOADNIL                          R15
      897 FORGPREP                         R13
      898 LOADK                            R18 K158 ["completed"]
      899 SETTABLE                         R18 R12 R17
      900 FORGLOOP                         R13 2 ; [-3]
      902 MOVE                             R10 R12
      903 GETIMPORT                        R11 K180 [table.clone]
      905 MOVE                             R12 R9
      906 CALL                             R11 1 1
      907 MOVE                             R12 R10
      908 LOADNIL                          R13
      909 LOADNIL                          R14
      910 FORGPREP                         R12
      911 JUMPIFEQKS                       R16 K123 ["running"] ; [+3]
      913 JUMPIFNOTEQKS                    R16 K158 ["completed"] ; [+2]
      915 SETTABLE                         R16 R11 R15
      916 FORGLOOP                         R12 2 ; [-6]
      918 MOVE                             R8 R11
      919 SETTABLEKS                       R8 R7 K120 ["updates"]
      921 NEWTABLE                         R8 0 2
      923 DUPTABLE                         R9 K333 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "Should be wrapping mesh generation composite:bottoms soon; it's past the usual mark."}]
      924 DUPTABLE                         R10 K335 [{["Node"] = "fit_parts:shoes", ["Text"] = "Getting garments onto the body."}]
      925 SETLIST                          R8 R9 2 [1]
      927 SETTABLEKS                       R8 R7 K121 ["thoughts"]
      929 DUPTABLE                         R8 K337 [{["delaySeconds"] = 0.6, ["progress"] = 0.47, ["step"] = "mesh_generation_composite:bottoms", ["updates"], ["thoughts"]}]
      930 NEWTABLE                         R11 0 2
      932 LOADK                            R12 K68 ["segment_propagate_3d:head_accessories"]
      933 LOADK                            R13 K72 ["cage_body:shoes"]
      934 SETLIST                          R11 R12 2 [1]
      936 NEWTABLE                         R12 0 0
      938 MOVE                             R13 R11
      939 LOADNIL                          R14
      940 LOADNIL                          R15
      941 FORGPREP                         R13
      942 LOADK                            R18 K123 ["running"]
      943 SETTABLE                         R18 R12 R17
      944 FORGLOOP                         R13 2 ; [-3]
      946 MOVE                             R10 R12
      947 NEWTABLE                         R12 0 2
      949 LOADK                            R13 K66 ["segment_3d_seed:head_accessories"]
      950 LOADK                            R14 K70 ["align_body:shoes"]
      951 SETLIST                          R12 R13 2 [1]
      953 NEWTABLE                         R13 0 0
      955 MOVE                             R14 R12
      956 LOADNIL                          R15
      957 LOADNIL                          R16
      958 FORGPREP                         R14
      959 LOADK                            R19 K158 ["completed"]
      960 SETTABLE                         R19 R13 R18
      961 FORGLOOP                         R14 2 ; [-3]
      963 MOVE                             R11 R13
      964 GETIMPORT                        R12 K180 [table.clone]
      966 MOVE                             R13 R10
      967 CALL                             R12 1 1
      968 MOVE                             R13 R11
      969 LOADNIL                          R14
      970 LOADNIL                          R15
      971 FORGPREP                         R13
      972 JUMPIFEQKS                       R17 K123 ["running"] ; [+3]
      974 JUMPIFNOTEQKS                    R17 K158 ["completed"] ; [+2]
      976 SETTABLE                         R17 R12 R16
      977 FORGLOOP                         R13 2 ; [-6]
      979 MOVE                             R9 R12
      980 SETTABLEKS                       R9 R8 K120 ["updates"]
      982 NEWTABLE                         R9 0 4
      984 DUPTABLE                         R10 K339 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Holding for mesh generation composite:tops a little longer than the usual cadence."}]
      985 DUPTABLE                         R11 K341 [{["Node"] = "autosetup_original_body", ["Text"] = "Making sure the silhouette survives setup."}]
      986 DUPTABLE                         R12 K342 [{["Node"] = "segment_propagate_3d:head_accessories", ["Text"] = "Spreading segmentation across the mesh."}]
      987 DUPTABLE                         R13 K344 [{["Node"] = "cage_body:shoes", ["Text"] = "Wrapping a cage around the body."}]
      988 SETLIST                          R9 R10 4 [1]
      990 SETTABLEKS                       R9 R8 K121 ["thoughts"]
      992 DUPTABLE                         R9 K346 [{["delaySeconds"] = 0.6, ["progress"] = 0.5, ["step"] = "render_one_piece:bottoms", ["updates"], ["thoughts"]}]
      993 NEWTABLE                         R12 0 2
      995 LOADK                            R13 K23 ["align_body:bottoms"]
      996 LOADK                            R14 K41 ["render_one_piece:bottoms"]
      997 SETLIST                          R12 R13 2 [1]
      999 NEWTABLE                         R13 0 0
     1001 MOVE                             R14 R12
     1002 LOADNIL                          R15
     1003 LOADNIL                          R16
     1004 FORGPREP                         R14
     1005 LOADK                            R19 K123 ["running"]
     1006 SETTABLE                         R19 R13 R18
     1007 FORGLOOP                         R14 2 ; [-3]
     1009 MOVE                             R11 R13
     1010 NEWTABLE                         R13 0 1
     1012 LOADK                            R14 K36 ["mesh_generation_composite:bottoms"]
     1013 SETLIST                          R13 R14 1 [1]
     1015 NEWTABLE                         R14 0 0
     1017 MOVE                             R15 R13
     1018 LOADNIL                          R16
     1019 LOADNIL                          R17
     1020 FORGPREP                         R15
     1021 LOADK                            R20 K158 ["completed"]
     1022 SETTABLE                         R20 R14 R19
     1023 FORGLOOP                         R15 2 ; [-3]
     1025 MOVE                             R12 R14
     1026 GETIMPORT                        R13 K180 [table.clone]
     1028 MOVE                             R14 R11
     1029 CALL                             R13 1 1
     1030 MOVE                             R14 R12
     1031 LOADNIL                          R15
     1032 LOADNIL                          R16
     1033 FORGPREP                         R14
     1034 JUMPIFEQKS                       R18 K123 ["running"] ; [+3]
     1036 JUMPIFNOTEQKS                    R18 K158 ["completed"] ; [+2]
     1038 SETTABLE                         R18 R13 R17
     1039 FORGLOOP                         R14 2 ; [-6]
     1041 MOVE                             R10 R13
     1042 SETTABLEKS                       R10 R9 K120 ["updates"]
     1044 NEWTABLE                         R10 0 4
     1046 DUPTABLE                         R11 K347 [{["Node"] = "align_body:head_accessories", ["Text"] = "Settling the stance so the clothes hang right."}]
     1047 DUPTABLE                         R12 K349 [{["Node"] = "fit_parts:shoes", ["Text"] = "Nudge the pieces so they don't collide."}]
     1048 DUPTABLE                         R13 K350 [{["Node"] = "align_body:bottoms", ["Text"] = "Matching body to clothing."}]
     1049 DUPTABLE                         R14 K351 [{["Node"] = "render_one_piece:bottoms", ["Text"] = "Drawing a one-piece preview."}]
     1050 SETLIST                          R10 R11 4 [1]
     1052 SETTABLEKS                       R10 R9 K121 ["thoughts"]
     1054 DUPTABLE                         R10 K353 [{["delaySeconds"] = 0.6, ["progress"] = 0.51, ["step"] = "align_body:bottoms", ["updates"], ["thoughts"]}]
     1055 NEWTABLE                         R13 0 1
     1057 LOADK                            R14 K54 ["fit_parts:head_accessories"]
     1058 SETLIST                          R13 R14 1 [1]
     1060 NEWTABLE                         R14 0 0
     1062 MOVE                             R15 R13
     1063 LOADNIL                          R16
     1064 LOADNIL                          R17
     1065 FORGPREP                         R15
     1066 LOADK                            R20 K123 ["running"]
     1067 SETTABLE                         R20 R14 R19
     1068 FORGLOOP                         R15 2 ; [-3]
     1070 MOVE                             R12 R14
     1071 NEWTABLE                         R14 0 1
     1073 LOADK                            R15 K68 ["segment_propagate_3d:head_accessories"]
     1074 SETLIST                          R14 R15 1 [1]
     1076 NEWTABLE                         R15 0 0
     1078 MOVE                             R16 R14
     1079 LOADNIL                          R17
     1080 LOADNIL                          R18
     1081 FORGPREP                         R16
     1082 LOADK                            R21 K158 ["completed"]
     1083 SETTABLE                         R21 R15 R20
     1084 FORGLOOP                         R16 2 ; [-3]
     1086 MOVE                             R13 R15
     1087 GETIMPORT                        R14 K180 [table.clone]
     1089 MOVE                             R15 R12
     1090 CALL                             R14 1 1
     1091 MOVE                             R15 R13
     1092 LOADNIL                          R16
     1093 LOADNIL                          R17
     1094 FORGPREP                         R15
     1095 JUMPIFEQKS                       R19 K123 ["running"] ; [+3]
     1097 JUMPIFNOTEQKS                    R19 K158 ["completed"] ; [+2]
     1099 SETTABLE                         R19 R14 R18
     1100 FORGLOOP                         R15 2 ; [-6]
     1102 MOVE                             R11 R14
     1103 SETTABLEKS                       R11 R10 K120 ["updates"]
     1105 NEWTABLE                         R11 0 2
     1107 DUPTABLE                         R12 K355 [{["Node"] = "cage_body:shoes", ["Text"] = "Still fitting the cage to the mesh."}]
     1108 DUPTABLE                         R13 K356 [{["Node"] = "fit_parts:head_accessories", ["Text"] = "Getting garments onto the body."}]
     1109 SETLIST                          R11 R12 2 [1]
     1111 SETTABLEKS                       R11 R10 K121 ["thoughts"]
     1113 DUPTABLE                         R11 K358 [{["delaySeconds"] = 0.6, ["progress"] = 0.52, ["step"] = "fit_parts:head_accessories", ["updates"], ["thoughts"]}]
     1114 NEWTABLE                         R14 0 1
     1116 LOADK                            R15 K44 ["segment_3d_seed:bottoms"]
     1117 SETLIST                          R14 R15 1 [1]
     1119 NEWTABLE                         R15 0 0
     1121 MOVE                             R16 R14
     1122 LOADNIL                          R17
     1123 LOADNIL                          R18
     1124 FORGPREP                         R16
     1125 LOADK                            R21 K123 ["running"]
     1126 SETTABLE                         R21 R15 R20
     1127 FORGLOOP                         R16 2 ; [-3]
     1129 MOVE                             R13 R15
     1130 NEWTABLE                         R15 0 1
     1132 LOADK                            R16 K41 ["render_one_piece:bottoms"]
     1133 SETLIST                          R15 R16 1 [1]
     1135 NEWTABLE                         R16 0 0
     1137 MOVE                             R17 R15
     1138 LOADNIL                          R18
     1139 LOADNIL                          R19
     1140 FORGPREP                         R17
     1141 LOADK                            R22 K158 ["completed"]
     1142 SETTABLE                         R22 R16 R21
     1143 FORGLOOP                         R17 2 ; [-3]
     1145 MOVE                             R14 R16
     1146 GETIMPORT                        R15 K180 [table.clone]
     1148 MOVE                             R16 R13
     1149 CALL                             R15 1 1
     1150 MOVE                             R16 R14
     1151 LOADNIL                          R17
     1152 LOADNIL                          R18
     1153 FORGPREP                         R16
     1154 JUMPIFEQKS                       R20 K123 ["running"] ; [+3]
     1156 JUMPIFNOTEQKS                    R20 K158 ["completed"] ; [+2]
     1158 SETTABLE                         R20 R15 R19
     1159 FORGLOOP                         R16 2 ; [-6]
     1161 MOVE                             R12 R15
     1162 SETTABLEKS                       R12 R11 K120 ["updates"]
     1164 NEWTABLE                         R12 0 4
     1166 DUPTABLE                         R13 K360 [{["Node"] = "autosetup_original_body", ["Text"] = "Skinning the source mesh."}]
     1167 DUPTABLE                         R14 K362 [{["Node"] = "align_body:head_accessories", ["Text"] = "Still on align body:head accessories (55s in) — another pass before we move on."}]
     1168 DUPTABLE                         R15 K364 [{["Node"] = "fit_parts:shoes", ["Text"] = "Tucking clothes into a pose you could actually wear."}]
     1169 DUPTABLE                         R16 K365 [{["Node"] = "segment_3d_seed:bottoms", ["Text"] = "Cutting the 3D seed into parts."}]
     1170 SETLIST                          R12 R13 4 [1]
     1172 SETTABLEKS                       R12 R11 K121 ["thoughts"]
     1174 DUPTABLE                         R12 K366 [{["delaySeconds"] = 0.6, ["progress"] = 0.52, ["step"] = "cage_body:shoes", ["thoughts"]}]
     1175 NEWTABLE                         R13 0 1
     1177 DUPTABLE                         R14 K367 [{["Node"] = "align_body:bottoms", ["Text"] = "A fit nudge so clothing doesn't float."}]
     1178 SETLIST                          R13 R14 1 [1]
     1180 SETTABLEKS                       R13 R12 K121 ["thoughts"]
     1182 DUPTABLE                         R13 K368 [{["delaySeconds"] = 0.6, ["progress"] = 0.52, ["step"] = "fit_parts:head_accessories", ["thoughts"]}]
     1183 NEWTABLE                         R14 0 2
     1185 DUPTABLE                         R15 K370 [{["Node"] = "cage_body:shoes", ["Text"] = "A last tighten on the cage."}]
     1186 DUPTABLE                         R16 K371 [{["Node"] = "fit_parts:head_accessories", ["Text"] = "Nudge the pieces so they don't collide."}]
     1187 SETLIST                          R14 R15 2 [1]
     1189 SETTABLEKS                       R14 R13 K121 ["thoughts"]
     1191 DUPTABLE                         R14 K373 [{["delaySeconds"] = 0.6, ["progress"] = 0.55, ["step"] = "segment_3d_seed:bottoms", ["updates"], ["thoughts"]}]
     1192 NEWTABLE                         R17 0 1
     1194 LOADK                            R18 K52 ["cage_body:head_accessories"]
     1195 SETLIST                          R17 R18 1 [1]
     1197 NEWTABLE                         R18 0 0
     1199 MOVE                             R19 R17
     1200 LOADNIL                          R20
     1201 LOADNIL                          R21
     1202 FORGPREP                         R19
     1203 LOADK                            R24 K123 ["running"]
     1204 SETTABLE                         R24 R18 R23
     1205 FORGLOOP                         R19 2 ; [-3]
     1207 MOVE                             R16 R18
     1208 NEWTABLE                         R18 0 1
     1210 LOADK                            R19 K50 ["align_body:head_accessories"]
     1211 SETLIST                          R18 R19 1 [1]
     1213 NEWTABLE                         R19 0 0
     1215 MOVE                             R20 R18
     1216 LOADNIL                          R21
     1217 LOADNIL                          R22
     1218 FORGPREP                         R20
     1219 LOADK                            R25 K158 ["completed"]
     1220 SETTABLE                         R25 R19 R24
     1221 FORGLOOP                         R20 2 ; [-3]
     1223 MOVE                             R17 R19
     1224 GETIMPORT                        R18 K180 [table.clone]
     1226 MOVE                             R19 R16
     1227 CALL                             R18 1 1
     1228 MOVE                             R19 R17
     1229 LOADNIL                          R20
     1230 LOADNIL                          R21
     1231 FORGPREP                         R19
     1232 JUMPIFEQKS                       R23 K123 ["running"] ; [+3]
     1234 JUMPIFNOTEQKS                    R23 K158 ["completed"] ; [+2]
     1236 SETTABLE                         R23 R18 R22
     1237 FORGLOOP                         R19 2 ; [-6]
     1239 MOVE                             R15 R18
     1240 SETTABLEKS                       R15 R14 K120 ["updates"]
     1242 NEWTABLE                         R15 0 4
     1244 DUPTABLE                         R16 K375 [{["Node"] = "autosetup_original_body", ["Text"] = "A weight cleanup on the source body."}]
     1245 DUPTABLE                         R17 K377 [{["Node"] = "fit_parts:shoes", ["Text"] = "Still on fit parts:shoes (40s in) — checking that the form is landing cleanly."}]
     1246 DUPTABLE                         R18 K379 [{["Node"] = "segment_3d_seed:bottoms", ["Text"] = "Still on segment 3d seed:bottoms (12s in) — still in the middle of the interesting part."}]
     1247 DUPTABLE                         R19 K380 [{["Node"] = "cage_body:head_accessories", ["Text"] = "Wrapping a cage around the body."}]
     1248 SETLIST                          R15 R16 4 [1]
     1250 SETTABLEKS                       R15 R14 K121 ["thoughts"]
     1252 DUPTABLE                         R15 K382 [{["delaySeconds"] = 0.6, ["progress"] = 0.56, ["step"] = "segment_3d_seed:bottoms", ["updates"], ["thoughts"]}]
     1253 NEWTABLE                         R17 0 2
     1255 LOADK                            R18 K44 ["segment_3d_seed:bottoms"]
     1256 LOADK                            R19 K72 ["cage_body:shoes"]
     1257 SETLIST                          R17 R18 2 [1]
     1259 NEWTABLE                         R18 0 0
     1261 MOVE                             R19 R17
     1262 LOADNIL                          R20
     1263 LOADNIL                          R21
     1264 FORGPREP                         R19
     1265 LOADK                            R24 K158 ["completed"]
     1266 SETTABLE                         R24 R18 R23
     1267 FORGLOOP                         R19 2 ; [-3]
     1269 MOVE                             R16 R18
     1270 SETTABLEKS                       R16 R15 K120 ["updates"]
     1272 NEWTABLE                         R16 0 1
     1274 DUPTABLE                         R17 K383 [{["Node"] = "align_body:bottoms", ["Text"] = "The body should agree with the drawing."}]
     1275 SETLIST                          R16 R17 1 [1]
     1277 SETTABLEKS                       R16 R15 K121 ["thoughts"]
     1279 DUPTABLE                         R16 K385 [{["delaySeconds"] = 0.6, ["progress"] = 0.57, ["step"] = "mesh_generation_composite:tops", ["updates"], ["thoughts"]}]
     1280 NEWTABLE                         R18 0 1
     1282 LOADK                            R19 K47 ["segment_propagate_3d:bottoms"]
     1283 SETLIST                          R18 R19 1 [1]
     1285 NEWTABLE                         R19 0 0
     1287 MOVE                             R20 R18
     1288 LOADNIL                          R21
     1289 LOADNIL                          R22
     1290 FORGPREP                         R20
     1291 LOADK                            R25 K123 ["running"]
     1292 SETTABLE                         R25 R19 R24
     1293 FORGLOOP                         R20 2 ; [-3]
     1295 MOVE                             R17 R19
     1296 SETTABLEKS                       R17 R16 K120 ["updates"]
     1298 NEWTABLE                         R17 0 3
     1300 DUPTABLE                         R18 K387 [{["Node"] = "autosetup_original_body", ["Text"] = "Bind-pose check."}]
     1301 DUPTABLE                         R19 K388 [{["Node"] = "fit_parts:head_accessories", ["Text"] = "Tucking clothes into a pose you could actually wear."}]
     1302 DUPTABLE                         R20 K389 [{["Node"] = "segment_propagate_3d:bottoms", ["Text"] = "Spreading segmentation across the mesh."}]
     1303 SETLIST                          R17 R18 3 [1]
     1305 SETTABLEKS                       R17 R16 K121 ["thoughts"]
     1307 DUPTABLE                         R17 K390 [{["delaySeconds"] = 0.6, ["progress"] = 0.57, ["step"] = "cage_body:head_accessories", ["thoughts"]}]
     1308 NEWTABLE                         R18 0 3
     1310 DUPTABLE                         R19 K392 [{["Node"] = "fit_parts:shoes", ["Text"] = "Hanging in on fit parts:shoes; this pass is running long."}]
     1311 DUPTABLE                         R20 K393 [{["Node"] = "align_body:bottoms", ["Text"] = "Settling the stance so the clothes hang right."}]
     1312 DUPTABLE                         R21 K394 [{["Node"] = "cage_body:head_accessories", ["Text"] = "Still fitting the cage to the mesh."}]
     1313 SETLIST                          R18 R19 3 [1]
     1315 SETTABLEKS                       R18 R17 K121 ["thoughts"]
     1317 DUPTABLE                         R18 K395 [{["delaySeconds"] = 0.6, ["progress"] = 0.6, ["step"] = "autosetup_original_body", ["updates"]}]
     1318 NEWTABLE                         R20 0 1
     1320 LOADK                            R21 K5 ["autosetup_original_body"]
     1321 SETLIST                          R20 R21 1 [1]
     1323 NEWTABLE                         R21 0 0
     1325 MOVE                             R22 R20
     1326 LOADNIL                          R23
     1327 LOADNIL                          R24
     1328 FORGPREP                         R22
     1329 LOADK                            R27 K158 ["completed"]
     1330 SETTABLE                         R27 R21 R26
     1331 FORGLOOP                         R22 2 ; [-3]
     1333 MOVE                             R19 R21
     1334 SETTABLEKS                       R19 R18 K120 ["updates"]
     1336 DUPTABLE                         R19 K397 [{["delaySeconds"] = 0.6, ["progress"] = 0.62, ["step"] = "segment_propagate_3d:bottoms", ["updates"], ["thoughts"]}]
     1337 NEWTABLE                         R22 0 1
     1339 LOADK                            R23 K76 ["intersection_fixing:shoes"]
     1340 SETLIST                          R22 R23 1 [1]
     1342 NEWTABLE                         R23 0 0
     1344 MOVE                             R24 R22
     1345 LOADNIL                          R25
     1346 LOADNIL                          R26
     1347 FORGPREP                         R24
     1348 LOADK                            R29 K123 ["running"]
     1349 SETTABLE                         R29 R23 R28
     1350 FORGLOOP                         R24 2 ; [-3]
     1352 MOVE                             R21 R23
     1353 NEWTABLE                         R23 0 1
     1355 LOADK                            R24 K74 ["fit_parts:shoes"]
     1356 SETLIST                          R23 R24 1 [1]
     1358 NEWTABLE                         R24 0 0
     1360 MOVE                             R25 R23
     1361 LOADNIL                          R26
     1362 LOADNIL                          R27
     1363 FORGPREP                         R25
     1364 LOADK                            R30 K158 ["completed"]
     1365 SETTABLE                         R30 R24 R29
     1366 FORGLOOP                         R25 2 ; [-3]
     1368 MOVE                             R22 R24
     1369 GETIMPORT                        R23 K180 [table.clone]
     1371 MOVE                             R24 R21
     1372 CALL                             R23 1 1
     1373 MOVE                             R24 R22
     1374 LOADNIL                          R25
     1375 LOADNIL                          R26
     1376 FORGPREP                         R24
     1377 JUMPIFEQKS                       R28 K123 ["running"] ; [+3]
     1379 JUMPIFNOTEQKS                    R28 K158 ["completed"] ; [+2]
     1381 SETTABLE                         R28 R23 R27
     1382 FORGLOOP                         R24 2 ; [-6]
     1384 MOVE                             R20 R23
     1385 SETTABLEKS                       R20 R19 K120 ["updates"]
     1387 NEWTABLE                         R20 0 4
     1389 DUPTABLE                         R21 K399 [{["Node"] = "fit_parts:head_accessories", ["Text"] = "Still on fit parts:head accessories (40s in) — checking that the form is landing cleanly."}]
     1390 DUPTABLE                         R22 K400 [{["Node"] = "cage_body:head_accessories", ["Text"] = "A last tighten on the cage."}]
     1391 DUPTABLE                         R23 K402 [{["Node"] = "segment_propagate_3d:bottoms", ["Text"] = "Hanging in on segment propagate 3d:bottoms; this pass is running long."}]
     1392 DUPTABLE                         R24 K404 [{["Node"] = "intersection_fixing:shoes", ["Text"] = "Cleaning intersections between clothes and body."}]
     1393 SETLIST                          R20 R21 4 [1]
     1395 SETTABLEKS                       R20 R19 K121 ["thoughts"]
     1397 SETLIST                          R3 R4 16 [33]
     1399 DUPTABLE                         R4 K406 [{["delaySeconds"] = 0.6, ["progress"] = 0.63, ["step"] = "intersection_fixing:shoes", ["updates"], ["thoughts"]}]
     1400 NEWTABLE                         R6 0 1
     1402 LOADK                            R7 K52 ["cage_body:head_accessories"]
     1403 SETLIST                          R6 R7 1 [1]
     1405 NEWTABLE                         R7 0 0
     1407 MOVE                             R8 R6
     1408 LOADNIL                          R9
     1409 LOADNIL                          R10
     1410 FORGPREP                         R8
     1411 LOADK                            R13 K158 ["completed"]
     1412 SETTABLE                         R13 R7 R12
     1413 FORGLOOP                         R8 2 ; [-3]
     1415 MOVE                             R5 R7
     1416 SETTABLEKS                       R5 R4 K120 ["updates"]
     1418 NEWTABLE                         R5 0 1
     1420 DUPTABLE                         R6 K408 [{["Node"] = "align_body:bottoms", ["Text"] = "Still on align body:bottoms (55s in) — another pass before we move on."}]
     1421 SETLIST                          R5 R6 1 [1]
     1423 SETTABLEKS                       R5 R4 K121 ["thoughts"]
     1425 DUPTABLE                         R5 K410 [{["delaySeconds"] = 0.6, ["progress"] = 0.67, ["step"] = "fit_parts:head_accessories", ["updates"], ["thoughts"]}]
     1426 NEWTABLE                         R8 0 2
     1428 LOADK                            R9 K90 ["align_body:tops"]
     1429 LOADK                            R10 K104 ["render_one_piece:tops"]
     1430 SETLIST                          R8 R9 2 [1]
     1432 NEWTABLE                         R9 0 0
     1434 MOVE                             R10 R8
     1435 LOADNIL                          R11
     1436 LOADNIL                          R12
     1437 FORGPREP                         R10
     1438 LOADK                            R15 K123 ["running"]
     1439 SETTABLE                         R15 R9 R14
     1440 FORGLOOP                         R10 2 ; [-3]
     1442 MOVE                             R7 R9
     1443 NEWTABLE                         R9 0 2
     1445 LOADK                            R10 K54 ["fit_parts:head_accessories"]
     1446 LOADK                            R11 K100 ["mesh_generation_composite:tops"]
     1447 SETLIST                          R9 R10 2 [1]
     1449 NEWTABLE                         R10 0 0
     1451 MOVE                             R11 R9
     1452 LOADNIL                          R12
     1453 LOADNIL                          R13
     1454 FORGPREP                         R11
     1455 LOADK                            R16 K158 ["completed"]
     1456 SETTABLE                         R16 R10 R15
     1457 FORGLOOP                         R11 2 ; [-3]
     1459 MOVE                             R8 R10
     1460 GETIMPORT                        R9 K180 [table.clone]
     1462 MOVE                             R10 R7
     1463 CALL                             R9 1 1
     1464 MOVE                             R10 R8
     1465 LOADNIL                          R11
     1466 LOADNIL                          R12
     1467 FORGPREP                         R10
     1468 JUMPIFEQKS                       R14 K123 ["running"] ; [+3]
     1470 JUMPIFNOTEQKS                    R14 K158 ["completed"] ; [+2]
     1472 SETTABLE                         R14 R9 R13
     1473 FORGLOOP                         R10 2 ; [-6]
     1475 MOVE                             R6 R9
     1476 SETTABLEKS                       R6 R5 K120 ["updates"]
     1478 NEWTABLE                         R6 0 3
     1480 DUPTABLE                         R7 K412 [{["Node"] = "segment_propagate_3d:bottoms", ["Text"] = "Still on segment propagate 3d:bottoms after the typical wait."}]
     1481 DUPTABLE                         R8 K413 [{["Node"] = "align_body:tops", ["Text"] = "Matching body to clothing."}]
     1482 DUPTABLE                         R9 K414 [{["Node"] = "render_one_piece:tops", ["Text"] = "Drawing a one-piece preview."}]
     1483 SETLIST                          R6 R7 3 [1]
     1485 SETTABLEKS                       R6 R5 K121 ["thoughts"]
     1487 DUPTABLE                         R6 K416 [{["delaySeconds"] = 0.6, ["progress"] = 0.7, ["step"] = "intersection_fixing:head_accessories", ["updates"], ["thoughts"]}]
     1488 NEWTABLE                         R9 0 2
     1490 LOADK                            R10 K26 ["cage_body:bottoms"]
     1491 LOADK                            R11 K56 ["intersection_fixing:head_accessories"]
     1492 SETLIST                          R9 R10 2 [1]
     1494 NEWTABLE                         R10 0 0
     1496 MOVE                             R11 R9
     1497 LOADNIL                          R12
     1498 LOADNIL                          R13
     1499 FORGPREP                         R11
     1500 LOADK                            R16 K123 ["running"]
     1501 SETTABLE                         R16 R10 R15
     1502 FORGLOOP                         R11 2 ; [-3]
     1504 MOVE                             R8 R10
     1505 NEWTABLE                         R10 0 1
     1507 LOADK                            R11 K23 ["align_body:bottoms"]
     1508 SETLIST                          R10 R11 1 [1]
     1510 NEWTABLE                         R11 0 0
     1512 MOVE                             R12 R10
     1513 LOADNIL                          R13
     1514 LOADNIL                          R14
     1515 FORGPREP                         R12
     1516 LOADK                            R17 K158 ["completed"]
     1517 SETTABLE                         R17 R11 R16
     1518 FORGLOOP                         R12 2 ; [-3]
     1520 MOVE                             R9 R11
     1521 GETIMPORT                        R10 K180 [table.clone]
     1523 MOVE                             R11 R8
     1524 CALL                             R10 1 1
     1525 MOVE                             R11 R9
     1526 LOADNIL                          R12
     1527 LOADNIL                          R13
     1528 FORGPREP                         R11
     1529 JUMPIFEQKS                       R15 K123 ["running"] ; [+3]
     1531 JUMPIFNOTEQKS                    R15 K158 ["completed"] ; [+2]
     1533 SETTABLE                         R15 R10 R14
     1534 FORGLOOP                         R11 2 ; [-6]
     1536 MOVE                             R7 R10
     1537 SETTABLEKS                       R7 R6 K120 ["updates"]
     1539 NEWTABLE                         R7 0 3
     1541 DUPTABLE                         R8 K418 [{["Node"] = "intersection_fixing:shoes", ["Text"] = "Still pulling overlapping geo apart."}]
     1542 DUPTABLE                         R9 K419 [{["Node"] = "intersection_fixing:head_accessories", ["Text"] = "Cleaning intersections between clothes and body."}]
     1543 DUPTABLE                         R10 K420 [{["Node"] = "cage_body:bottoms", ["Text"] = "Wrapping a cage around the body."}]
     1544 SETLIST                          R7 R8 3 [1]
     1546 SETTABLEKS                       R7 R6 K121 ["thoughts"]
     1548 DUPTABLE                         R7 K422 [{["delaySeconds"] = 0.6, ["progress"] = 0.71, ["step"] = "align_body:tops", ["updates"], ["thoughts"]}]
     1549 NEWTABLE                         R10 0 1
     1551 LOADK                            R11 K106 ["segment_3d_seed:tops"]
     1552 SETLIST                          R10 R11 1 [1]
     1554 NEWTABLE                         R11 0 0
     1556 MOVE                             R12 R10
     1557 LOADNIL                          R13
     1558 LOADNIL                          R14
     1559 FORGPREP                         R12
     1560 LOADK                            R17 K123 ["running"]
     1561 SETTABLE                         R17 R11 R16
     1562 FORGLOOP                         R12 2 ; [-3]
     1564 MOVE                             R9 R11
     1565 NEWTABLE                         R11 0 1
     1567 LOADK                            R12 K104 ["render_one_piece:tops"]
     1568 SETLIST                          R11 R12 1 [1]
     1570 NEWTABLE                         R12 0 0
     1572 MOVE                             R13 R11
     1573 LOADNIL                          R14
     1574 LOADNIL                          R15
     1575 FORGPREP                         R13
     1576 LOADK                            R18 K158 ["completed"]
     1577 SETTABLE                         R18 R12 R17
     1578 FORGLOOP                         R13 2 ; [-3]
     1580 MOVE                             R10 R12
     1581 GETIMPORT                        R11 K180 [table.clone]
     1583 MOVE                             R12 R9
     1584 CALL                             R11 1 1
     1585 MOVE                             R12 R10
     1586 LOADNIL                          R13
     1587 LOADNIL                          R14
     1588 FORGPREP                         R12
     1589 JUMPIFEQKS                       R16 K123 ["running"] ; [+3]
     1591 JUMPIFNOTEQKS                    R16 K158 ["completed"] ; [+2]
     1593 SETTABLE                         R16 R11 R15
     1594 FORGLOOP                         R12 2 ; [-6]
     1596 MOVE                             R8 R11
     1597 SETTABLEKS                       R8 R7 K120 ["updates"]
     1599 NEWTABLE                         R8 0 4
     1601 DUPTABLE                         R9 K424 [{["Node"] = "segment_propagate_3d:bottoms", ["Text"] = "Still working through segment propagate 3d:bottoms — it's a long one."}]
     1602 DUPTABLE                         R10 K426 [{["Node"] = "render_one_piece:tops", ["Text"] = "Hanging in on render one piece:tops; this pass is running long."}]
     1603 DUPTABLE                         R11 K427 [{["Node"] = "intersection_fixing:head_accessories", ["Text"] = "Still pulling overlapping geo apart."}]
     1604 DUPTABLE                         R12 K428 [{["Node"] = "segment_3d_seed:tops", ["Text"] = "Cutting the 3D seed into parts."}]
     1605 SETLIST                          R8 R9 4 [1]
     1607 SETTABLEKS                       R8 R7 K121 ["thoughts"]
     1609 DUPTABLE                         R8 K430 [{["delaySeconds"] = 0.6, ["progress"] = 0.72, ["step"] = "align_body:tops", ["updates"], ["thoughts"]}]
     1610 NEWTABLE                         R11 0 1
     1612 LOADK                            R12 K82 ["prep_autosetup:shoes"]
     1613 SETLIST                          R11 R12 1 [1]
     1615 NEWTABLE                         R12 0 0
     1617 MOVE                             R13 R11
     1618 LOADNIL                          R14
     1619 LOADNIL                          R15
     1620 FORGPREP                         R13
     1621 LOADK                            R18 K123 ["running"]
     1622 SETTABLE                         R18 R12 R17
     1623 FORGLOOP                         R13 2 ; [-3]
     1625 MOVE                             R10 R12
     1626 NEWTABLE                         R12 0 1
     1628 LOADK                            R13 K76 ["intersection_fixing:shoes"]
     1629 SETLIST                          R12 R13 1 [1]
     1631 NEWTABLE                         R13 0 0
     1633 MOVE                             R14 R12
     1634 LOADNIL                          R15
     1635 LOADNIL                          R16
     1636 FORGPREP                         R14
     1637 LOADK                            R19 K158 ["completed"]
     1638 SETTABLE                         R19 R13 R18
     1639 FORGLOOP                         R14 2 ; [-3]
     1641 MOVE                             R11 R13
     1642 GETIMPORT                        R12 K180 [table.clone]
     1644 MOVE                             R13 R10
     1645 CALL                             R12 1 1
     1646 MOVE                             R13 R11
     1647 LOADNIL                          R14
     1648 LOADNIL                          R15
     1649 FORGPREP                         R13
     1650 JUMPIFEQKS                       R17 K123 ["running"] ; [+3]
     1652 JUMPIFNOTEQKS                    R17 K158 ["completed"] ; [+2]
     1654 SETTABLE                         R17 R12 R16
     1655 FORGLOOP                         R13 2 ; [-6]
     1657 MOVE                             R9 R12
     1658 SETTABLEKS                       R9 R8 K120 ["updates"]
     1660 NEWTABLE                         R9 0 4
     1662 DUPTABLE                         R10 K432 [{["Node"] = "intersection_fixing:shoes", ["Text"] = "Still on intersection fixing:shoes (24s in) — hanging in — good work doesn't rush."}]
     1663 DUPTABLE                         R11 K433 [{["Node"] = "align_body:tops", ["Text"] = "A fit nudge so clothing doesn't float."}]
     1664 DUPTABLE                         R12 K434 [{["Node"] = "cage_body:bottoms", ["Text"] = "Still fitting the cage to the mesh."}]
     1665 DUPTABLE                         R13 K436 [{["Node"] = "prep_autosetup:shoes", ["Text"] = "Getting meshes ready for autosetup."}]
     1666 SETLIST                          R9 R10 4 [1]
     1668 SETTABLEKS                       R9 R8 K121 ["thoughts"]
     1670 DUPTABLE                         R9 K438 [{["delaySeconds"] = 0.6, ["progress"] = 0.74, ["step"] = "align_body:tops", ["updates"], ["thoughts"]}]
     1671 NEWTABLE                         R12 0 1
     1673 LOADK                            R13 K28 ["fit_parts:bottoms"]
     1674 SETLIST                          R12 R13 1 [1]
     1676 NEWTABLE                         R13 0 0
     1678 MOVE                             R14 R12
     1679 LOADNIL                          R15
     1680 LOADNIL                          R16
     1681 FORGPREP                         R14
     1682 LOADK                            R19 K123 ["running"]
     1683 SETTABLE                         R19 R13 R18
     1684 FORGLOOP                         R14 2 ; [-3]
     1686 MOVE                             R11 R13
     1687 NEWTABLE                         R13 0 1
     1689 LOADK                            R14 K47 ["segment_propagate_3d:bottoms"]
     1690 SETLIST                          R13 R14 1 [1]
     1692 NEWTABLE                         R14 0 0
     1694 MOVE                             R15 R13
     1695 LOADNIL                          R16
     1696 LOADNIL                          R17
     1697 FORGPREP                         R15
     1698 LOADK                            R20 K158 ["completed"]
     1699 SETTABLE                         R20 R14 R19
     1700 FORGLOOP                         R15 2 ; [-3]
     1702 MOVE                             R12 R14
     1703 GETIMPORT                        R13 K180 [table.clone]
     1705 MOVE                             R14 R11
     1706 CALL                             R13 1 1
     1707 MOVE                             R14 R12
     1708 LOADNIL                          R15
     1709 LOADNIL                          R16
     1710 FORGPREP                         R14
     1711 JUMPIFEQKS                       R18 K123 ["running"] ; [+3]
     1713 JUMPIFNOTEQKS                    R18 K158 ["completed"] ; [+2]
     1715 SETTABLE                         R18 R13 R17
     1716 FORGLOOP                         R14 2 ; [-6]
     1718 MOVE                             R10 R13
     1719 SETTABLEKS                       R10 R9 K120 ["updates"]
     1721 NEWTABLE                         R10 0 2
     1723 DUPTABLE                         R11 K440 [{["Node"] = "segment_3d_seed:tops", ["Text"] = "Still on segment 3d seed:tops (12s in) — still in the middle of the interesting part."}]
     1724 DUPTABLE                         R12 K441 [{["Node"] = "fit_parts:bottoms", ["Text"] = "Getting garments onto the body."}]
     1725 SETLIST                          R10 R11 2 [1]
     1727 SETTABLEKS                       R10 R9 K121 ["thoughts"]
     1729 DUPTABLE                         R10 K443 [{["delaySeconds"] = 0.6, ["progress"] = 0.75, ["step"] = "intersection_fixing:head_accessories", ["updates"], ["thoughts"]}]
     1730 NEWTABLE                         R12 0 1
     1732 LOADK                            R13 K56 ["intersection_fixing:head_accessories"]
     1733 SETLIST                          R12 R13 1 [1]
     1735 NEWTABLE                         R13 0 0
     1737 MOVE                             R14 R12
     1738 LOADNIL                          R15
     1739 LOADNIL                          R16
     1740 FORGPREP                         R14
     1741 LOADK                            R19 K158 ["completed"]
     1742 SETTABLE                         R19 R13 R18
     1743 FORGLOOP                         R14 2 ; [-3]
     1745 MOVE                             R11 R13
     1746 SETTABLEKS                       R11 R10 K120 ["updates"]
     1748 NEWTABLE                         R11 0 3
     1750 DUPTABLE                         R12 K445 [{["Node"] = "intersection_fixing:head_accessories", ["Text"] = "Still on intersection fixing:head accessories (24s in) — hanging in — good work doesn't rush."}]
     1751 DUPTABLE                         R13 K446 [{["Node"] = "cage_body:bottoms", ["Text"] = "A last tighten on the cage."}]
     1752 DUPTABLE                         R14 K448 [{["Node"] = "prep_autosetup:shoes", ["Text"] = "Still on prep autosetup:shoes (12s in) — still in the middle of the interesting part."}]
     1753 SETLIST                          R11 R12 3 [1]
     1755 SETTABLEKS                       R11 R10 K121 ["thoughts"]
     1757 DUPTABLE                         R11 K449 [{["delaySeconds"] = 0.6, ["progress"] = 0.75, ["step"] = "segment_3d_seed:tops", ["updates"], ["thoughts"]}]
     1758 NEWTABLE                         R13 0 1
     1760 LOADK                            R14 K62 ["prep_autosetup:head_accessories"]
     1761 SETLIST                          R13 R14 1 [1]
     1763 NEWTABLE                         R14 0 0
     1765 MOVE                             R15 R13
     1766 LOADNIL                          R16
     1767 LOADNIL                          R17
     1768 FORGPREP                         R15
     1769 LOADK                            R20 K123 ["running"]
     1770 SETTABLE                         R20 R14 R19
     1771 FORGLOOP                         R15 2 ; [-3]
     1773 MOVE                             R12 R14
     1774 SETTABLEKS                       R12 R11 K120 ["updates"]
     1776 NEWTABLE                         R12 0 4
     1778 DUPTABLE                         R13 K450 [{["Node"] = "align_body:tops", ["Text"] = "The body should agree with the drawing."}]
     1779 DUPTABLE                         R14 K452 [{["Node"] = "segment_3d_seed:tops", ["Text"] = "Hanging in on segment 3d seed:tops; this pass is running long."}]
     1780 DUPTABLE                         R15 K453 [{["Node"] = "fit_parts:bottoms", ["Text"] = "Nudge the pieces so they don't collide."}]
     1781 DUPTABLE                         R16 K454 [{["Node"] = "prep_autosetup:head_accessories", ["Text"] = "Getting meshes ready for autosetup."}]
     1782 SETLIST                          R12 R13 4 [1]
     1784 SETTABLEKS                       R12 R11 K121 ["thoughts"]
     1786 DUPTABLE                         R12 K456 [{["delaySeconds"] = 0.6, ["progress"] = 0.77, ["step"] = "segment_3d_seed:tops", ["updates"]}]
     1787 NEWTABLE                         R14 0 2
     1789 LOADK                            R15 K26 ["cage_body:bottoms"]
     1790 LOADK                            R16 K106 ["segment_3d_seed:tops"]
     1791 SETLIST                          R14 R15 2 [1]
     1793 NEWTABLE                         R15 0 0
     1795 MOVE                             R16 R14
     1796 LOADNIL                          R17
     1797 LOADNIL                          R18
     1798 FORGPREP                         R16
     1799 LOADK                            R21 K158 ["completed"]
     1800 SETTABLE                         R21 R15 R20
     1801 FORGLOOP                         R16 2 ; [-3]
     1803 MOVE                             R13 R15
     1804 SETTABLEKS                       R13 R12 K120 ["updates"]
     1806 DUPTABLE                         R13 K457 [{["delaySeconds"] = 0.6, ["progress"] = 0.77, ["step"] = "align_body:tops", ["updates"], ["thoughts"]}]
     1807 NEWTABLE                         R15 0 1
     1809 LOADK                            R16 K108 ["segment_propagate_3d:tops"]
     1810 SETLIST                          R15 R16 1 [1]
     1812 NEWTABLE                         R16 0 0
     1814 MOVE                             R17 R15
     1815 LOADNIL                          R18
     1816 LOADNIL                          R19
     1817 FORGPREP                         R17
     1818 LOADK                            R22 K123 ["running"]
     1819 SETTABLE                         R22 R16 R21
     1820 FORGLOOP                         R17 2 ; [-3]
     1822 MOVE                             R14 R16
     1823 SETTABLEKS                       R14 R13 K120 ["updates"]
     1825 NEWTABLE                         R14 0 3
     1827 DUPTABLE                         R15 K458 [{["Node"] = "align_body:tops", ["Text"] = "Settling the stance so the clothes hang right."}]
     1828 DUPTABLE                         R16 K460 [{["Node"] = "prep_autosetup:shoes", ["Text"] = "Hanging in on prep autosetup:shoes; this pass is running long."}]
     1829 DUPTABLE                         R17 K461 [{["Node"] = "segment_propagate_3d:tops", ["Text"] = "Spreading segmentation across the mesh."}]
     1830 SETLIST                          R14 R15 3 [1]
     1832 SETTABLEKS                       R14 R13 K121 ["thoughts"]
     1834 DUPTABLE                         R14 K463 [{["delaySeconds"] = 0.6, ["progress"] = 0.79, ["step"] = "prep_autosetup:head_accessories", ["updates"], ["thoughts"]}]
     1835 NEWTABLE                         R16 0 2
     1837 LOADK                            R17 K62 ["prep_autosetup:head_accessories"]
     1838 LOADK                            R18 K82 ["prep_autosetup:shoes"]
     1839 SETLIST                          R16 R17 2 [1]
     1841 NEWTABLE                         R17 0 0
     1843 MOVE                             R18 R16
     1844 LOADNIL                          R19
     1845 LOADNIL                          R20
     1846 FORGPREP                         R18
     1847 LOADK                            R23 K158 ["completed"]
     1848 SETTABLE                         R23 R17 R22
     1849 FORGLOOP                         R18 2 ; [-3]
     1851 MOVE                             R15 R17
     1852 SETTABLEKS                       R15 R14 K120 ["updates"]
     1854 NEWTABLE                         R15 0 2
     1856 DUPTABLE                         R16 K464 [{["Node"] = "fit_parts:bottoms", ["Text"] = "Tucking clothes into a pose you could actually wear."}]
     1857 DUPTABLE                         R17 K466 [{["Node"] = "prep_autosetup:head_accessories", ["Text"] = "Still on prep autosetup:head accessories (12s in) — still in the middle of the interesting part."}]
     1858 SETLIST                          R15 R16 2 [1]
     1860 SETTABLEKS                       R15 R14 K121 ["thoughts"]
     1862 DUPTABLE                         R15 K468 [{["delaySeconds"] = 0.6, ["progress"] = 0.8, ["step"] = "fit_parts:tops", ["updates"], ["thoughts"]}]
     1863 NEWTABLE                         R18 0 1
     1865 LOADK                            R19 K94 ["fit_parts:tops"]
     1866 SETLIST                          R18 R19 1 [1]
     1868 NEWTABLE                         R19 0 0
     1870 MOVE                             R20 R18
     1871 LOADNIL                          R21
     1872 LOADNIL                          R22
     1873 FORGPREP                         R20
     1874 LOADK                            R25 K123 ["running"]
     1875 SETTABLE                         R25 R19 R24
     1876 FORGLOOP                         R20 2 ; [-3]
     1878 MOVE                             R17 R19
     1879 NEWTABLE                         R19 0 1
     1881 LOADK                            R20 K108 ["segment_propagate_3d:tops"]
     1882 SETLIST                          R19 R20 1 [1]
     1884 NEWTABLE                         R20 0 0
     1886 MOVE                             R21 R19
     1887 LOADNIL                          R22
     1888 LOADNIL                          R23
     1889 FORGPREP                         R21
     1890 LOADK                            R26 K158 ["completed"]
     1891 SETTABLE                         R26 R20 R25
     1892 FORGLOOP                         R21 2 ; [-3]
     1894 MOVE                             R18 R20
     1895 GETIMPORT                        R19 K180 [table.clone]
     1897 MOVE                             R20 R17
     1898 CALL                             R19 1 1
     1899 MOVE                             R20 R18
     1900 LOADNIL                          R21
     1901 LOADNIL                          R22
     1902 FORGPREP                         R20
     1903 JUMPIFEQKS                       R24 K123 ["running"] ; [+3]
     1905 JUMPIFNOTEQKS                    R24 K158 ["completed"] ; [+2]
     1907 SETTABLE                         R24 R19 R23
     1908 FORGLOOP                         R20 2 ; [-6]
     1910 MOVE                             R16 R19
     1911 SETTABLEKS                       R16 R15 K120 ["updates"]
     1913 NEWTABLE                         R16 0 3
     1915 DUPTABLE                         R17 K470 [{["Node"] = "align_body:tops", ["Text"] = "Still on align body:tops (55s in) — another pass before we move on."}]
     1916 DUPTABLE                         R18 K472 [{["Node"] = "segment_propagate_3d:tops", ["Text"] = "Hanging in on segment propagate 3d:tops; this pass is running long."}]
     1917 DUPTABLE                         R19 K473 [{["Node"] = "fit_parts:tops", ["Text"] = "Getting garments onto the body."}]
     1918 SETLIST                          R16 R17 3 [1]
     1920 SETTABLEKS                       R16 R15 K121 ["thoughts"]
     1922 DUPTABLE                         R16 K474 [{["delaySeconds"] = 0.6, ["progress"] = 0.8, ["step"] = "align_body:tops", ["thoughts"]}]
     1923 NEWTABLE                         R17 0 1
     1925 DUPTABLE                         R18 K476 [{["Node"] = "fit_parts:bottoms", ["Text"] = "Still on fit parts:bottoms (40s in) — checking that the form is landing cleanly."}]
     1926 SETLIST                          R17 R18 1 [1]
     1928 SETTABLEKS                       R17 R16 K121 ["thoughts"]
     1930 DUPTABLE                         R17 K474 [{["delaySeconds"] = 0.6, ["progress"] = 0.8, ["step"] = "align_body:tops", ["thoughts"]}]
     1931 NEWTABLE                         R18 0 1
     1933 DUPTABLE                         R19 K477 [{["Node"] = "fit_parts:tops", ["Text"] = "Nudge the pieces so they don't collide."}]
     1934 SETLIST                          R18 R19 1 [1]
     1936 SETTABLEKS                       R18 R17 K121 ["thoughts"]
     1938 DUPTABLE                         R18 K478 [{["delaySeconds"] = 0.6, ["progress"] = 0.8, ["step"] = "fit_parts:bottoms", ["thoughts"]}]
     1939 NEWTABLE                         R19 0 1
     1941 DUPTABLE                         R20 K480 [{["Node"] = "align_body:tops", ["Text"] = "Hanging in on align body:tops; this pass is running long."}]
     1942 SETLIST                          R19 R20 1 [1]
     1944 SETTABLEKS                       R19 R18 K121 ["thoughts"]
     1946 DUPTABLE                         R19 K482 [{["delaySeconds"] = 0.6, ["progress"] = 0.82, ["step"] = "intersection_fixing:bottoms", ["updates"], ["thoughts"]}]
     1947 NEWTABLE                         R22 0 1
     1949 LOADK                            R23 K31 ["intersection_fixing:bottoms"]
     1950 SETLIST                          R22 R23 1 [1]
     1952 NEWTABLE                         R23 0 0
     1954 MOVE                             R24 R22
     1955 LOADNIL                          R25
     1956 LOADNIL                          R26
     1957 FORGPREP                         R24
     1958 LOADK                            R29 K123 ["running"]
     1959 SETTABLE                         R29 R23 R28
     1960 FORGLOOP                         R24 2 ; [-3]
     1962 MOVE                             R21 R23
     1963 NEWTABLE                         R23 0 1
     1965 LOADK                            R24 K28 ["fit_parts:bottoms"]
     1966 SETLIST                          R23 R24 1 [1]
     1968 NEWTABLE                         R24 0 0
     1970 MOVE                             R25 R23
     1971 LOADNIL                          R26
     1972 LOADNIL                          R27
     1973 FORGPREP                         R25
     1974 LOADK                            R30 K158 ["completed"]
     1975 SETTABLE                         R30 R24 R29
     1976 FORGLOOP                         R25 2 ; [-3]
     1978 MOVE                             R22 R24
     1979 GETIMPORT                        R23 K180 [table.clone]
     1981 MOVE                             R24 R21
     1982 CALL                             R23 1 1
     1983 MOVE                             R24 R22
     1984 LOADNIL                          R25
     1985 LOADNIL                          R26
     1986 FORGPREP                         R24
     1987 JUMPIFEQKS                       R28 K123 ["running"] ; [+3]
     1989 JUMPIFNOTEQKS                    R28 K158 ["completed"] ; [+2]
     1991 SETTABLE                         R28 R23 R27
     1992 FORGLOOP                         R24 2 ; [-6]
     1994 MOVE                             R20 R23
     1995 SETTABLEKS                       R20 R19 K120 ["updates"]
     1997 NEWTABLE                         R20 0 1
     1999 DUPTABLE                         R21 K483 [{["Node"] = "intersection_fixing:bottoms", ["Text"] = "Cleaning intersections between clothes and body."}]
     2000 SETLIST                          R20 R21 1 [1]
     2002 SETTABLEKS                       R20 R19 K121 ["thoughts"]
     2004 SETLIST                          R3 R4 16 [49]
     2006 DUPTABLE                         R4 K485 [{["delaySeconds"] = 0.6, ["progress"] = 0.85, ["step"] = "cage_body:tops", ["updates"], ["thoughts"]}]
     2007 NEWTABLE                         R7 0 1
     2009 LOADK                            R8 K92 ["cage_body:tops"]
     2010 SETLIST                          R7 R8 1 [1]
     2012 NEWTABLE                         R8 0 0
     2014 MOVE                             R9 R7
     2015 LOADNIL                          R10
     2016 LOADNIL                          R11
     2017 FORGPREP                         R9
     2018 LOADK                            R14 K123 ["running"]
     2019 SETTABLE                         R14 R8 R13
     2020 FORGLOOP                         R9 2 ; [-3]
     2022 MOVE                             R6 R8
     2023 NEWTABLE                         R8 0 1
     2025 LOADK                            R9 K90 ["align_body:tops"]
     2026 SETLIST                          R8 R9 1 [1]
     2028 NEWTABLE                         R9 0 0
     2030 MOVE                             R10 R8
     2031 LOADNIL                          R11
     2032 LOADNIL                          R12
     2033 FORGPREP                         R10
     2034 LOADK                            R15 K158 ["completed"]
     2035 SETTABLE                         R15 R9 R14
     2036 FORGLOOP                         R10 2 ; [-3]
     2038 MOVE                             R7 R9
     2039 GETIMPORT                        R8 K180 [table.clone]
     2041 MOVE                             R9 R6
     2042 CALL                             R8 1 1
     2043 MOVE                             R9 R7
     2044 LOADNIL                          R10
     2045 LOADNIL                          R11
     2046 FORGPREP                         R9
     2047 JUMPIFEQKS                       R13 K123 ["running"] ; [+3]
     2049 JUMPIFNOTEQKS                    R13 K158 ["completed"] ; [+2]
     2051 SETTABLE                         R13 R8 R12
     2052 FORGLOOP                         R9 2 ; [-6]
     2054 MOVE                             R5 R8
     2055 SETTABLEKS                       R5 R4 K120 ["updates"]
     2057 NEWTABLE                         R5 0 2
     2059 DUPTABLE                         R6 K486 [{["Node"] = "fit_parts:tops", ["Text"] = "Tucking clothes into a pose you could actually wear."}]
     2060 DUPTABLE                         R7 K487 [{["Node"] = "cage_body:tops", ["Text"] = "Wrapping a cage around the body."}]
     2061 SETLIST                          R5 R6 2 [1]
     2063 SETTABLEKS                       R5 R4 K121 ["thoughts"]
     2065 DUPTABLE                         R5 K488 [{["delaySeconds"] = 0.6, ["progress"] = 0.85, ["step"] = "intersection_fixing:bottoms", ["thoughts"]}]
     2066 NEWTABLE                         R6 0 1
     2068 DUPTABLE                         R7 K489 [{["Node"] = "intersection_fixing:bottoms", ["Text"] = "Still pulling overlapping geo apart."}]
     2069 SETLIST                          R6 R7 1 [1]
     2071 SETTABLEKS                       R6 R5 K121 ["thoughts"]
     2073 DUPTABLE                         R6 K490 [{["delaySeconds"] = 1.2, ["progress"] = 0.85, ["step"] = "intersection_fixing:bottoms", ["thoughts"]}]
     2074 NEWTABLE                         R7 0 3
     2076 DUPTABLE                         R8 K492 [{["Node"] = "fit_parts:tops", ["Text"] = "Still on fit parts:tops (40s in) — checking that the form is landing cleanly."}]
     2077 DUPTABLE                         R9 K494 [{["Node"] = "intersection_fixing:bottoms", ["Text"] = "Still on intersection fixing:bottoms (24s in) — hanging in — good work doesn't rush."}]
     2078 DUPTABLE                         R10 K495 [{["Node"] = "cage_body:tops", ["Text"] = "Still fitting the cage to the mesh."}]
     2079 SETLIST                          R7 R8 3 [1]
     2081 SETTABLEKS                       R7 R6 K121 ["thoughts"]
     2083 DUPTABLE                         R7 K497 [{["delaySeconds"] = 0.6, ["progress"] = 0.87, ["step"] = "intersection_fixing:bottoms", ["updates"]}]
     2084 NEWTABLE                         R9 0 2
     2086 LOADK                            R10 K31 ["intersection_fixing:bottoms"]
     2087 LOADK                            R11 K94 ["fit_parts:tops"]
     2088 SETLIST                          R9 R10 2 [1]
     2090 NEWTABLE                         R10 0 0
     2092 MOVE                             R11 R9
     2093 LOADNIL                          R12
     2094 LOADNIL                          R13
     2095 FORGPREP                         R11
     2096 LOADK                            R16 K158 ["completed"]
     2097 SETTABLE                         R16 R10 R15
     2098 FORGLOOP                         R11 2 ; [-3]
     2100 MOVE                             R8 R10
     2101 SETTABLEKS                       R8 R7 K120 ["updates"]
     2103 DUPTABLE                         R8 K499 [{["delaySeconds"] = 0.6, ["progress"] = 0.89, ["step"] = "intersection_fixing:tops", ["updates"], ["thoughts"]}]
     2104 NEWTABLE                         R10 0 2
     2106 LOADK                            R11 K38 ["prep_autosetup:bottoms"]
     2107 LOADK                            R12 K96 ["intersection_fixing:tops"]
     2108 SETLIST                          R10 R11 2 [1]
     2110 NEWTABLE                         R11 0 0
     2112 MOVE                             R12 R10
     2113 LOADNIL                          R13
     2114 LOADNIL                          R14
     2115 FORGPREP                         R12
     2116 LOADK                            R17 K123 ["running"]
     2117 SETTABLE                         R17 R11 R16
     2118 FORGLOOP                         R12 2 ; [-3]
     2120 MOVE                             R9 R11
     2121 SETTABLEKS                       R9 R8 K120 ["updates"]
     2123 NEWTABLE                         R9 0 3
     2125 DUPTABLE                         R10 K500 [{["Node"] = "cage_body:tops", ["Text"] = "A last tighten on the cage."}]
     2126 DUPTABLE                         R11 K501 [{["Node"] = "intersection_fixing:tops", ["Text"] = "Cleaning intersections between clothes and body."}]
     2127 DUPTABLE                         R12 K502 [{["Node"] = "prep_autosetup:bottoms", ["Text"] = "Getting meshes ready for autosetup."}]
     2128 SETLIST                          R9 R10 3 [1]
     2130 SETTABLEKS                       R9 R8 K121 ["thoughts"]
     2132 DUPTABLE                         R9 K503 [{["delaySeconds"] = 0.6, ["progress"] = 0.89, ["step"] = "intersection_fixing:tops", ["thoughts"]}]
     2133 NEWTABLE                         R10 0 1
     2135 DUPTABLE                         R11 K504 [{["Node"] = "intersection_fixing:tops", ["Text"] = "Still pulling overlapping geo apart."}]
     2136 SETLIST                          R10 R11 1 [1]
     2138 SETTABLEKS                       R10 R9 K121 ["thoughts"]
     2140 DUPTABLE                         R10 K506 [{["delaySeconds"] = 0.6, ["progress"] = 0.9, ["step"] = "cage_body:tops", ["updates"], ["thoughts"]}]
     2141 NEWTABLE                         R12 0 1
     2143 LOADK                            R13 K92 ["cage_body:tops"]
     2144 SETLIST                          R12 R13 1 [1]
     2146 NEWTABLE                         R13 0 0
     2148 MOVE                             R14 R12
     2149 LOADNIL                          R15
     2150 LOADNIL                          R16
     2151 FORGPREP                         R14
     2152 LOADK                            R19 K158 ["completed"]
     2153 SETTABLE                         R19 R13 R18
     2154 FORGLOOP                         R14 2 ; [-3]
     2156 MOVE                             R11 R13
     2157 SETTABLEKS                       R11 R10 K120 ["updates"]
     2159 NEWTABLE                         R11 0 1
     2161 DUPTABLE                         R12 K508 [{["Node"] = "prep_autosetup:bottoms", ["Text"] = "Still on prep autosetup:bottoms (12s in) — still in the middle of the interesting part."}]
     2162 SETLIST                          R11 R12 1 [1]
     2164 SETTABLEKS                       R11 R10 K121 ["thoughts"]
     2166 DUPTABLE                         R11 K509 [{["delaySeconds"] = 0.6, ["progress"] = 0.9, ["step"] = "intersection_fixing:tops", ["updates"]}]
     2167 NEWTABLE                         R13 0 1
     2169 LOADK                            R14 K38 ["prep_autosetup:bottoms"]
     2170 SETLIST                          R13 R14 1 [1]
     2172 NEWTABLE                         R14 0 0
     2174 MOVE                             R15 R13
     2175 LOADNIL                          R16
     2176 LOADNIL                          R17
     2177 FORGPREP                         R15
     2178 LOADK                            R20 K158 ["completed"]
     2179 SETTABLE                         R20 R14 R19
     2180 FORGLOOP                         R15 2 ; [-3]
     2182 MOVE                             R12 R14
     2183 SETTABLEKS                       R12 R11 K120 ["updates"]
     2185 DUPTABLE                         R12 K510 [{["delaySeconds"] = 0.6, ["progress"] = 0.9, ["step"] = "intersection_fixing:tops", ["thoughts"]}]
     2186 NEWTABLE                         R13 0 1
     2188 DUPTABLE                         R14 K512 [{["Node"] = "intersection_fixing:tops", ["Text"] = "Still on intersection fixing:tops (24s in) — hanging in — good work doesn't rush."}]
     2189 SETLIST                          R13 R14 1 [1]
     2191 SETTABLEKS                       R13 R12 K121 ["thoughts"]
     2193 DUPTABLE                         R13 K510 [{["delaySeconds"] = 0.6, ["progress"] = 0.9, ["step"] = "intersection_fixing:tops", ["thoughts"]}]
     2194 NEWTABLE                         R14 0 1
     2196 DUPTABLE                         R15 K514 [{["Node"] = "intersection_fixing:tops", ["Text"] = "Hanging in on intersection fixing:tops; this pass is running long."}]
     2197 SETLIST                          R14 R15 1 [1]
     2199 SETTABLEKS                       R14 R13 K121 ["thoughts"]
     2201 DUPTABLE                         R14 K516 [{["delaySeconds"] = 0.6, ["progress"] = 0.91, ["step"] = "intersection_fixing:tops", ["updates"]}]
     2202 NEWTABLE                         R16 0 1
     2204 LOADK                            R17 K96 ["intersection_fixing:tops"]
     2205 SETLIST                          R16 R17 1 [1]
     2207 NEWTABLE                         R17 0 0
     2209 MOVE                             R18 R16
     2210 LOADNIL                          R19
     2211 LOADNIL                          R20
     2212 FORGPREP                         R18
     2213 LOADK                            R23 K158 ["completed"]
     2214 SETTABLE                         R23 R17 R22
     2215 FORGLOOP                         R18 2 ; [-3]
     2217 MOVE                             R15 R17
     2218 SETTABLEKS                       R15 R14 K120 ["updates"]
     2220 DUPTABLE                         R15 K518 [{["delaySeconds"] = 0.6, ["progress"] = 0.92, ["step"] = "prep_autosetup:tops", ["updates"], ["thoughts"]}]
     2221 NEWTABLE                         R17 0 1
     2223 LOADK                            R18 K102 ["prep_autosetup:tops"]
     2224 SETLIST                          R17 R18 1 [1]
     2226 NEWTABLE                         R18 0 0
     2228 MOVE                             R19 R17
     2229 LOADNIL                          R20
     2230 LOADNIL                          R21
     2231 FORGPREP                         R19
     2232 LOADK                            R24 K123 ["running"]
     2233 SETTABLE                         R24 R18 R23
     2234 FORGLOOP                         R19 2 ; [-3]
     2236 MOVE                             R16 R18
     2237 SETTABLEKS                       R16 R15 K120 ["updates"]
     2239 NEWTABLE                         R16 0 1
     2241 DUPTABLE                         R17 K519 [{["Node"] = "prep_autosetup:tops", ["Text"] = "Getting meshes ready for autosetup."}]
     2242 SETLIST                          R16 R17 1 [1]
     2244 SETTABLEKS                       R16 R15 K121 ["thoughts"]
     2246 DUPTABLE                         R16 K520 [{["delaySeconds"] = 0.6, ["progress"] = 0.92, ["step"] = "prep_autosetup:tops", ["thoughts"]}]
     2247 NEWTABLE                         R17 0 1
     2249 DUPTABLE                         R18 K522 [{["Node"] = "prep_autosetup:tops", ["Text"] = "Still on prep autosetup:tops (12s in) — still in the middle of the interesting part."}]
     2250 SETLIST                          R17 R18 1 [1]
     2252 SETTABLEKS                       R17 R16 K121 ["thoughts"]
     2254 DUPTABLE                         R17 K523 [{["delaySeconds"] = 0.6, ["progress"] = 0.92, ["step"] = "prep_autosetup:tops", ["updates"]}]
     2255 NEWTABLE                         R19 0 1
     2257 LOADK                            R20 K102 ["prep_autosetup:tops"]
     2258 SETLIST                          R19 R20 1 [1]
     2260 NEWTABLE                         R20 0 0
     2262 MOVE                             R21 R19
     2263 LOADNIL                          R22
     2264 LOADNIL                          R23
     2265 FORGPREP                         R21
     2266 LOADK                            R26 K158 ["completed"]
     2267 SETTABLE                         R26 R20 R25
     2268 FORGLOOP                         R21 2 ; [-3]
     2270 MOVE                             R18 R20
     2271 SETTABLEKS                       R18 R17 K120 ["updates"]
     2273 DUPTABLE                         R18 K526 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["updates"], ["thoughts"]}]
     2274 NEWTABLE                         R20 0 1
     2276 LOADK                            R21 K9 ["clothing_autosetup"]
     2277 SETLIST                          R20 R21 1 [1]
     2279 NEWTABLE                         R21 0 0
     2281 MOVE                             R22 R20
     2282 LOADNIL                          R23
     2283 LOADNIL                          R24
     2284 FORGPREP                         R22
     2285 LOADK                            R27 K123 ["running"]
     2286 SETTABLE                         R27 R21 R26
     2287 FORGLOOP                         R22 2 ; [-3]
     2289 MOVE                             R19 R21
     2290 SETTABLEKS                       R19 R18 K120 ["updates"]
     2292 NEWTABLE                         R19 0 1
     2294 DUPTABLE                         R20 K528 [{["Node"] = "clothing_autosetup", ["Text"] = "Still binding the garments."}]
     2295 SETLIST                          R19 R20 1 [1]
     2297 SETTABLEKS                       R19 R18 K121 ["thoughts"]
     2299 DUPTABLE                         R19 K529 [{["delaySeconds"] = 1.2, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2300 NEWTABLE                         R20 0 1
     2302 DUPTABLE                         R21 K531 [{["Node"] = "clothing_autosetup", ["Text"] = "Garments going onto the body."}]
     2303 SETLIST                          R20 R21 1 [1]
     2305 SETTABLEKS                       R20 R19 K121 ["thoughts"]
     2307 SETLIST                          R3 R4 16 [65]
     2309 DUPTABLE                         R4 K532 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2310 NEWTABLE                         R5 0 1
     2312 DUPTABLE                         R6 K534 [{["Node"] = "clothing_autosetup", ["Text"] = "Shirts and pants should follow the torso."}]
     2313 SETLIST                          R5 R6 1 [1]
     2315 SETTABLEKS                       R5 R4 K121 ["thoughts"]
     2317 DUPTABLE                         R5 K532 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2318 NEWTABLE                         R6 0 1
     2320 DUPTABLE                         R7 K536 [{["Node"] = "clothing_autosetup", ["Text"] = "A clip check for movement."}]
     2321 SETLIST                          R6 R7 1 [1]
     2323 SETTABLEKS                       R6 R5 K121 ["thoughts"]
     2325 DUPTABLE                         R6 K532 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2326 NEWTABLE                         R7 0 1
     2328 DUPTABLE                         R8 K538 [{["Node"] = "clothing_autosetup", ["Text"] = "Skinning the clothes at the joints."}]
     2329 SETLIST                          R7 R8 1 [1]
     2331 SETTABLEKS                       R7 R6 K121 ["thoughts"]
     2333 DUPTABLE                         R7 K529 [{["delaySeconds"] = 1.2, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2334 NEWTABLE                         R8 0 1
     2336 DUPTABLE                         R9 K540 [{["Node"] = "clothing_autosetup", ["Text"] = "Sleeves and hems getting a fit pass."}]
     2337 SETLIST                          R8 R9 1 [1]
     2339 SETTABLEKS                       R8 R7 K121 ["thoughts"]
     2341 DUPTABLE                         R8 K532 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2342 NEWTABLE                         R9 0 1
     2344 DUPTABLE                         R10 K542 [{["Node"] = "clothing_autosetup", ["Text"] = "Clothing setup is wrapping up."}]
     2345 SETLIST                          R9 R10 1 [1]
     2347 SETTABLEKS                       R9 R8 K121 ["thoughts"]
     2349 DUPTABLE                         R9 K532 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2350 NEWTABLE                         R10 0 1
     2352 DUPTABLE                         R11 K544 [{["Node"] = "clothing_autosetup", ["Text"] = "Hanging in on clothing autosetup; this pass is running long."}]
     2353 SETLIST                          R10 R11 1 [1]
     2355 SETTABLEKS                       R10 R9 K121 ["thoughts"]
     2357 DUPTABLE                         R10 K529 [{["delaySeconds"] = 1.2, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2358 NEWTABLE                         R11 0 1
     2360 DUPTABLE                         R12 K546 [{["Node"] = "clothing_autosetup", ["Text"] = "Still on clothing autosetup after the typical wait."}]
     2361 SETLIST                          R11 R12 1 [1]
     2363 SETTABLEKS                       R11 R10 K121 ["thoughts"]
     2365 DUPTABLE                         R11 K532 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2366 NEWTABLE                         R12 0 1
     2368 DUPTABLE                         R13 K548 [{["Node"] = "clothing_autosetup", ["Text"] = "Still working through clothing autosetup — it's a long one."}]
     2369 SETLIST                          R12 R13 1 [1]
     2371 SETTABLEKS                       R12 R11 K121 ["thoughts"]
     2373 DUPTABLE                         R12 K532 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2374 NEWTABLE                         R13 0 1
     2376 DUPTABLE                         R14 K550 [{["Node"] = "clothing_autosetup", ["Text"] = "Not done with clothing autosetup yet — longer than the typical pass."}]
     2377 SETLIST                          R13 R14 1 [1]
     2379 SETTABLEKS                       R13 R12 K121 ["thoughts"]
     2381 DUPTABLE                         R13 K552 [{["delaySeconds"] = 1.8, ["progress"] = 0.97, ["step"] = "clothing_autosetup", ["updates"]}]
     2382 NEWTABLE                         R15 0 1
     2384 LOADK                            R16 K9 ["clothing_autosetup"]
     2385 SETLIST                          R15 R16 1 [1]
     2387 NEWTABLE                         R16 0 0
     2389 MOVE                             R17 R15
     2390 LOADNIL                          R18
     2391 LOADNIL                          R19
     2392 FORGPREP                         R17
     2393 LOADK                            R22 K158 ["completed"]
     2394 SETTABLE                         R22 R16 R21
     2395 FORGLOOP                         R17 2 ; [-3]
     2397 MOVE                             R14 R16
     2398 SETTABLEKS                       R14 R13 K120 ["updates"]
     2400 DUPTABLE                         R14 K554 [{["delaySeconds"] = 2.3, ["progress"] = 0.97, ["step"] = "export", ["updates"], ["thoughts"]}]
     2401 NEWTABLE                         R16 0 1
     2403 LOADK                            R17 K11 ["export"]
     2404 SETLIST                          R16 R17 1 [1]
     2406 NEWTABLE                         R17 0 0
     2408 MOVE                             R18 R16
     2409 LOADNIL                          R19
     2410 LOADNIL                          R20
     2411 FORGPREP                         R18
     2412 LOADK                            R23 K123 ["running"]
     2413 SETTABLE                         R23 R17 R22
     2414 FORGLOOP                         R18 2 ; [-3]
     2416 MOVE                             R15 R17
     2417 SETTABLEKS                       R15 R14 K120 ["updates"]
     2419 NEWTABLE                         R15 0 1
     2421 DUPTABLE                         R16 K556 [{["Node"] = "export", ["Text"] = "Should be wrapping export soon; it's past the usual mark."}]
     2422 SETLIST                          R15 R16 1 [1]
     2424 SETTABLEKS                       R15 R14 K121 ["thoughts"]
     2426 DUPTABLE                         R15 K557 [{["delaySeconds"] = 1.8, ["progress"] = 0.97, ["step"] = "export", ["thoughts"]}]
     2427 NEWTABLE                         R16 0 1
     2429 DUPTABLE                         R17 K559 [{["Node"] = "export", ["Text"] = "Holding for export a little longer than the usual cadence."}]
     2430 SETLIST                          R16 R17 1 [1]
     2432 SETTABLEKS                       R16 R15 K121 ["thoughts"]
     2434 DUPTABLE                         R16 K562 [{["delaySeconds"] = 2.3, ["progress"] = 1, ["clearDetails"] = True}]
     2435 SETLIST                          R3 R4 13 [81]
     2437 DUPTABLE                         R4 K565 [{"nodes", "snapshots"}]
     2438 SETTABLEKS                       R0 R4 K563 ["nodes"]
     2440 SETTABLEKS                       R3 R4 K564 ["snapshots"]
     2442 RETURN                           R4 1
