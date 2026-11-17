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
       72 NEWTABLE                         R6 0 0
       74 MOVE                             R8 R7
       75 LOADNIL                          R9
       76 LOADNIL                          R10
       77 FORGPREP                         R8
       78 LOADK                            R13 K123 ["running"]
       79 SETTABLE                         R13 R6 R12
       80 FORGLOOP                         R8 2 ; [-3]
       82 SETTABLEKS                       R6 R5 K120 ["updates"]
       84 NEWTABLE                         R6 0 2
       86 DUPTABLE                         R7 K127 [{["Node"] = "describe_outfit", ["Text"] = "Picking out this NPC's gear from the look."}]
       87 DUPTABLE                         R8 K129 [{["Node"] = "generate_part_designs", ["Text"] = "Turning the 2D look into part views."}]
       88 SETLIST                          R6 R7 2 [1]
       90 SETTABLEKS                       R6 R5 K121 ["thoughts"]
       92 DUPTABLE                         R6 K131 [{["delaySeconds"] = 1.2, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
       93 NEWTABLE                         R7 0 1
       95 DUPTABLE                         R8 K133 [{["Node"] = "generate_part_designs", ["Text"] = "Still drawing the remaining parts."}]
       96 SETLIST                          R7 R8 1 [1]
       98 SETTABLEKS                       R7 R6 K121 ["thoughts"]
      100 DUPTABLE                         R7 K134 [{["delaySeconds"] = 0.6, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      101 NEWTABLE                         R8 0 1
      103 DUPTABLE                         R9 K136 [{["Node"] = "describe_outfit", ["Text"] = "Still on this NPC — shape, gear, and materials."}]
      104 SETLIST                          R8 R9 1 [1]
      106 SETTABLEKS                       R8 R7 K121 ["thoughts"]
      108 DUPTABLE                         R8 K134 [{["delaySeconds"] = 0.6, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      109 NEWTABLE                         R9 0 1
      111 DUPTABLE                         R10 K138 [{["Node"] = "describe_outfit", ["Text"] = "Splitting this NPC into body, clothes, and gear."}]
      112 SETLIST                          R9 R10 1 [1]
      114 SETTABLEKS                       R9 R8 K121 ["thoughts"]
      116 DUPTABLE                         R9 K134 [{["delaySeconds"] = 0.6, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      117 NEWTABLE                         R10 0 1
      119 DUPTABLE                         R11 K140 [{["Node"] = "generate_part_designs", ["Text"] = "The last few part views are landing."}]
      120 SETLIST                          R10 R11 1 [1]
      122 SETTABLEKS                       R10 R9 K121 ["thoughts"]
      124 DUPTABLE                         R10 K134 [{["delaySeconds"] = 0.6, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      125 NEWTABLE                         R11 0 1
      127 DUPTABLE                         R12 K142 [{["Node"] = "describe_outfit", ["Text"] = "Color and trim notes so the rest of the pipeline matches."}]
      128 SETLIST                          R11 R12 1 [1]
      130 SETTABLEKS                       R11 R10 K121 ["thoughts"]
      132 DUPTABLE                         R11 K131 [{["delaySeconds"] = 1.2, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      133 NEWTABLE                         R12 0 1
      135 DUPTABLE                         R13 K144 [{["Node"] = "generate_part_designs", ["Text"] = "Each part needs a readable front and back."}]
      136 SETLIST                          R12 R13 1 [1]
      138 SETTABLEKS                       R12 R11 K121 ["thoughts"]
      140 DUPTABLE                         R12 K134 [{["delaySeconds"] = 0.6, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      141 NEWTABLE                         R13 0 1
      143 DUPTABLE                         R14 K146 [{["Node"] = "describe_outfit", ["Text"] = "One NPC look, or stacked accessories?"}]
      144 SETLIST                          R13 R14 1 [1]
      146 SETTABLEKS                       R13 R12 K121 ["thoughts"]
      148 DUPTABLE                         R13 K131 [{["delaySeconds"] = 1.2, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      149 NEWTABLE                         R14 0 1
      151 DUPTABLE                         R15 K148 [{["Node"] = "generate_part_designs", ["Text"] = "Trim and material going down so sculpting has a target."}]
      152 SETLIST                          R14 R15 1 [1]
      154 SETTABLEKS                       R14 R13 K121 ["thoughts"]
      156 DUPTABLE                         R14 K134 [{["delaySeconds"] = 0.6, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      157 NEWTABLE                         R15 0 1
      159 DUPTABLE                         R16 K150 [{["Node"] = "describe_outfit", ["Text"] = "Still on describe outfit (64s in) — this is the slow, careful stretch."}]
      160 SETLIST                          R15 R16 1 [1]
      162 SETTABLEKS                       R15 R14 K121 ["thoughts"]
      164 DUPTABLE                         R15 K131 [{["delaySeconds"] = 1.2, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      165 NEWTABLE                         R16 0 1
      167 DUPTABLE                         R17 K152 [{["Node"] = "generate_part_designs", ["Text"] = "A cohesion check across the part sheets."}]
      168 SETLIST                          R16 R17 1 [1]
      170 SETTABLEKS                       R16 R15 K121 ["thoughts"]
      172 DUPTABLE                         R16 K134 [{["delaySeconds"] = 0.6, ["progress"] = 0, ["step"] = "describe_outfit", ["thoughts"]}]
      173 NEWTABLE                         R17 0 1
      175 DUPTABLE                         R18 K154 [{["Node"] = "describe_outfit", ["Text"] = "Hanging in on describe outfit; this pass is running long."}]
      176 SETLIST                          R17 R18 1 [1]
      178 SETTABLEKS                       R17 R16 K121 ["thoughts"]
      180 DUPTABLE                         R17 K157 [{["delaySeconds"] = 0.6, ["progress"] = 0.08, ["step"] = "generate_part_designs", ["planPending"] = False, ["updates"]}]
      181 NEWTABLE                         R19 0 2
      183 LOADK                            R20 K1 ["describe_outfit"]
      184 LOADK                            R21 K3 ["generate_part_designs"]
      185 SETLIST                          R19 R20 2 [1]
      187 NEWTABLE                         R18 0 0
      189 MOVE                             R20 R19
      190 LOADNIL                          R21
      191 LOADNIL                          R22
      192 FORGPREP                         R20
      193 LOADK                            R25 K158 ["completed"]
      194 SETTABLE                         R25 R18 R24
      195 FORGLOOP                         R20 2 ; [-3]
      197 SETTABLEKS                       R18 R17 K120 ["updates"]
      199 DUPTABLE                         R18 K160 [{["delaySeconds"] = 0.6, ["progress"] = 0.15, ["step"] = "mesh_generation_clothing:head_accessories", ["updates"], ["thoughts"]}]
      200 NEWTABLE                         R20 0 5
      202 LOADK                            R21 K14 ["generate_body"]
      203 LOADK                            R22 K16 ["generate_combined_2d"]
      204 LOADK                            R23 K18 ["mesh_generation_bald_body"]
      205 LOADK                            R24 K34 ["mesh_generation_clothing:bottoms"]
      206 LOADK                            R25 K58 ["mesh_generation_clothing:head_accessories"]
      207 SETLIST                          R20 R21 5 [1]
      209 NEWTABLE                         R19 0 0
      211 MOVE                             R21 R20
      212 LOADNIL                          R22
      213 LOADNIL                          R23
      214 FORGPREP                         R21
      215 LOADK                            R26 K123 ["running"]
      216 SETTABLE                         R26 R19 R25
      217 FORGLOOP                         R21 2 ; [-3]
      219 SETTABLEKS                       R19 R18 K120 ["updates"]
      221 NEWTABLE                         R19 0 5
      223 DUPTABLE                         R20 K162 [{["Node"] = "generate_body", ["Text"] = "Starting an NPC body sculpt from the sheet."}]
      224 DUPTABLE                         R21 K164 [{["Node"] = "generate_combined_2d", ["Text"] = "Putting the outfit into one 2D view."}]
      225 DUPTABLE                         R22 K166 [{["Node"] = "mesh_generation_bald_body", ["Text"] = "Sculpting the bald-body mesh."}]
      226 DUPTABLE                         R23 K168 [{["Node"] = "mesh_generation_clothing:bottoms", ["Text"] = "Sculpting garments from the design sheets."}]
      227 DUPTABLE                         R24 K169 [{["Node"] = "mesh_generation_clothing:head_accessories", ["Text"] = "Sculpting garments from the design sheets."}]
      228 SETLIST                          R19 R20 5 [1]
      230 SETTABLEKS                       R19 R18 K121 ["thoughts"]
      232 DUPTABLE                         R19 K171 [{["delaySeconds"] = 0.6, ["progress"] = 0.18, ["step"] = "mesh_generation_clothing:tops", ["updates"], ["thoughts"]}]
      233 NEWTABLE                         R21 0 2
      235 LOADK                            R22 K78 ["mesh_generation_clothing:shoes"]
      236 LOADK                            R23 K98 ["mesh_generation_clothing:tops"]
      237 SETLIST                          R21 R22 2 [1]
      239 NEWTABLE                         R20 0 0
      241 MOVE                             R22 R21
      242 LOADNIL                          R23
      243 LOADNIL                          R24
      244 FORGPREP                         R22
      245 LOADK                            R27 K123 ["running"]
      246 SETTABLE                         R27 R20 R26
      247 FORGLOOP                         R22 2 ; [-3]
      249 SETTABLEKS                       R20 R19 K120 ["updates"]
      251 NEWTABLE                         R20 0 3
      253 DUPTABLE                         R21 K173 [{["Node"] = "generate_combined_2d", ["Text"] = "Still on generate combined 2d (10s in) — still in the middle of the interesting part."}]
      254 DUPTABLE                         R22 K174 [{["Node"] = "mesh_generation_clothing:shoes", ["Text"] = "Sculpting garments from the design sheets."}]
      255 DUPTABLE                         R23 K175 [{["Node"] = "mesh_generation_clothing:tops", ["Text"] = "Sculpting garments from the design sheets."}]
      256 SETLIST                          R20 R21 3 [1]
      258 SETTABLEKS                       R20 R19 K121 ["thoughts"]
      260 SETLIST                          R3 R4 16 [1]
      262 DUPTABLE                         R4 K177 [{["delaySeconds"] = 0.6, ["progress"] = 0.19, ["step"] = "generate_combined_2d", ["updates"], ["thoughts"]}]
      263 NEWTABLE                         R7 0 1
      265 LOADK                            R8 K21 ["rig_source_body"]
      266 SETLIST                          R7 R8 1 [1]
      268 NEWTABLE                         R6 0 0
      270 MOVE                             R8 R7
      271 LOADNIL                          R9
      272 LOADNIL                          R10
      273 FORGPREP                         R8
      274 LOADK                            R13 K123 ["running"]
      275 SETTABLE                         R13 R6 R12
      276 FORGLOOP                         R8 2 ; [-3]
      278 NEWTABLE                         R8 0 1
      280 LOADK                            R9 K18 ["mesh_generation_bald_body"]
      281 SETLIST                          R8 R9 1 [1]
      283 NEWTABLE                         R7 0 0
      285 MOVE                             R9 R8
      286 LOADNIL                          R10
      287 LOADNIL                          R11
      288 FORGPREP                         R9
      289 LOADK                            R14 K158 ["completed"]
      290 SETTABLE                         R14 R7 R13
      291 FORGLOOP                         R9 2 ; [-3]
      293 GETIMPORT                        R8 K180 [table.clone]
      295 MOVE                             R9 R6
      296 CALL                             R8 1 1
      297 MOVE                             R5 R8
      298 MOVE                             R8 R7
      299 LOADNIL                          R9
      300 LOADNIL                          R10
      301 FORGPREP                         R8
      302 JUMPIFEQKS                       R12 K123 ["running"] ; [+3]
      304 JUMPIFNOTEQKS                    R12 K158 ["completed"] ; [+2]
      306 SETTABLE                         R12 R5 R11
      307 FORGLOOP                         R8 2 ; [-6]
      309 SETTABLEKS                       R5 R4 K120 ["updates"]
      311 NEWTABLE                         R5 0 6
      313 DUPTABLE                         R6 K182 [{["Node"] = "generate_body", ["Text"] = "NPC proportion pass so gear has a place to sit."}]
      314 DUPTABLE                         R7 K184 [{["Node"] = "mesh_generation_clothing:bottoms", ["Text"] = "Still on garment sculpt — the slow step."}]
      315 DUPTABLE                         R8 K185 [{["Node"] = "mesh_generation_clothing:head_accessories", ["Text"] = "Still on garment sculpt — the slow step."}]
      316 DUPTABLE                         R9 K186 [{["Node"] = "mesh_generation_clothing:shoes", ["Text"] = "Still on garment sculpt — the slow step."}]
      317 DUPTABLE                         R10 K187 [{["Node"] = "mesh_generation_clothing:tops", ["Text"] = "Still on garment sculpt — the slow step."}]
      318 DUPTABLE                         R11 K189 [{["Node"] = "rig_source_body", ["Text"] = "Putting a rig on the source body."}]
      319 SETLIST                          R5 R6 6 [1]
      321 SETTABLEKS                       R5 R4 K121 ["thoughts"]
      323 DUPTABLE                         R5 K190 [{["delaySeconds"] = 0.6, ["progress"] = 0.19, ["step"] = "mesh_generation_clothing:bottoms", ["thoughts"]}]
      324 NEWTABLE                         R6 0 1
      326 DUPTABLE                         R7 K192 [{["Node"] = "generate_combined_2d", ["Text"] = "Hanging in on generate combined 2d; this pass is running long."}]
      327 SETLIST                          R6 R7 1 [1]
      329 SETTABLEKS                       R6 R5 K121 ["thoughts"]
      331 DUPTABLE                         R6 K194 [{["delaySeconds"] = 0.6, ["progress"] = 0.22, ["step"] = "mesh_generation_clothing:shoes", ["updates"], ["thoughts"]}]
      332 NEWTABLE                         R9 0 4
      334 LOADK                            R10 K36 ["mesh_generation_composite:bottoms"]
      335 LOADK                            R11 K60 ["mesh_generation_composite:head_accessories"]
      336 LOADK                            R12 K80 ["mesh_generation_composite:shoes"]
      337 LOADK                            R13 K100 ["mesh_generation_composite:tops"]
      338 SETLIST                          R9 R10 4 [1]
      340 NEWTABLE                         R8 0 0
      342 MOVE                             R10 R9
      343 LOADNIL                          R11
      344 LOADNIL                          R12
      345 FORGPREP                         R10
      346 LOADK                            R15 K123 ["running"]
      347 SETTABLE                         R15 R8 R14
      348 FORGLOOP                         R10 2 ; [-3]
      350 NEWTABLE                         R10 0 1
      352 LOADK                            R11 K16 ["generate_combined_2d"]
      353 SETLIST                          R10 R11 1 [1]
      355 NEWTABLE                         R9 0 0
      357 MOVE                             R11 R10
      358 LOADNIL                          R12
      359 LOADNIL                          R13
      360 FORGPREP                         R11
      361 LOADK                            R16 K158 ["completed"]
      362 SETTABLE                         R16 R9 R15
      363 FORGLOOP                         R11 2 ; [-3]
      365 GETIMPORT                        R10 K180 [table.clone]
      367 MOVE                             R11 R8
      368 CALL                             R10 1 1
      369 MOVE                             R7 R10
      370 MOVE                             R10 R9
      371 LOADNIL                          R11
      372 LOADNIL                          R12
      373 FORGPREP                         R10
      374 JUMPIFEQKS                       R14 K123 ["running"] ; [+3]
      376 JUMPIFNOTEQKS                    R14 K158 ["completed"] ; [+2]
      378 SETTABLE                         R14 R7 R13
      379 FORGLOOP                         R10 2 ; [-6]
      381 SETTABLEKS                       R7 R6 K120 ["updates"]
      383 NEWTABLE                         R7 0 10
      385 DUPTABLE                         R8 K196 [{["Node"] = "generate_body", ["Text"] = "Massing an NPC torso that can hold accessories."}]
      386 DUPTABLE                         R9 K198 [{["Node"] = "mesh_generation_clothing:bottoms", ["Text"] = "Tidying clothing topology."}]
      387 DUPTABLE                         R10 K199 [{["Node"] = "mesh_generation_clothing:head_accessories", ["Text"] = "Tidying clothing topology."}]
      388 DUPTABLE                         R11 K200 [{["Node"] = "mesh_generation_clothing:shoes", ["Text"] = "Tidying clothing topology."}]
      389 DUPTABLE                         R12 K201 [{["Node"] = "mesh_generation_clothing:tops", ["Text"] = "Tidying clothing topology."}]
      390 DUPTABLE                         R13 K203 [{["Node"] = "rig_source_body", ["Text"] = "Still placing joints on the source."}]
      391 DUPTABLE                         R14 K205 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "A one-piece preview mesh for this garment."}]
      392 DUPTABLE                         R15 K206 [{["Node"] = "mesh_generation_composite:head_accessories", ["Text"] = "A one-piece preview mesh for this garment."}]
      393 DUPTABLE                         R16 K207 [{["Node"] = "mesh_generation_composite:shoes", ["Text"] = "A one-piece preview mesh for this garment."}]
      394 DUPTABLE                         R17 K208 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "A one-piece preview mesh for this garment."}]
      395 SETLIST                          R7 R8 10 [1]
      397 SETTABLEKS                       R7 R6 K121 ["thoughts"]
      399 DUPTABLE                         R7 K210 [{["delaySeconds"] = 0.6, ["progress"] = 0.23, ["step"] = "generate_body", ["updates"], ["thoughts"]}]
      400 NEWTABLE                         R9 0 1
      402 LOADK                            R10 K58 ["mesh_generation_clothing:head_accessories"]
      403 SETLIST                          R9 R10 1 [1]
      405 NEWTABLE                         R8 0 0
      407 MOVE                             R10 R9
      408 LOADNIL                          R11
      409 LOADNIL                          R12
      410 FORGPREP                         R10
      411 LOADK                            R15 K158 ["completed"]
      412 SETTABLE                         R15 R8 R14
      413 FORGLOOP                         R10 2 ; [-3]
      415 SETTABLEKS                       R8 R7 K120 ["updates"]
      417 NEWTABLE                         R8 0 3
      419 DUPTABLE                         R9 K212 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "Putting the garment on the body for a preview."}]
      420 DUPTABLE                         R10 K213 [{["Node"] = "mesh_generation_composite:head_accessories", ["Text"] = "Putting the garment on the body for a preview."}]
      421 DUPTABLE                         R11 K214 [{["Node"] = "mesh_generation_composite:shoes", ["Text"] = "Putting the garment on the body for a preview."}]
      422 SETLIST                          R8 R9 3 [1]
      424 SETTABLEKS                       R8 R7 K121 ["thoughts"]
      426 DUPTABLE                         R8 K216 [{["delaySeconds"] = 0.6, ["progress"] = 0.25, ["step"] = "mesh_generation_clothing:tops", ["updates"], ["thoughts"]}]
      427 NEWTABLE                         R10 0 1
      429 LOADK                            R11 K98 ["mesh_generation_clothing:tops"]
      430 SETLIST                          R10 R11 1 [1]
      432 NEWTABLE                         R9 0 0
      434 MOVE                             R11 R10
      435 LOADNIL                          R12
      436 LOADNIL                          R13
      437 FORGPREP                         R11
      438 LOADK                            R16 K158 ["completed"]
      439 SETTABLE                         R16 R9 R15
      440 FORGLOOP                         R11 2 ; [-3]
      442 SETTABLEKS                       R9 R8 K120 ["updates"]
      444 NEWTABLE                         R9 0 3
      446 DUPTABLE                         R10 K218 [{["Node"] = "generate_body", ["Text"] = "Evening this NPC before clothes and gear go on."}]
      447 DUPTABLE                         R11 K220 [{["Node"] = "rig_source_body", ["Text"] = "Still on rig source body (21s in) — hanging in — good work doesn't rush."}]
      448 DUPTABLE                         R12 K221 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Putting the garment on the body for a preview."}]
      449 SETLIST                          R9 R10 3 [1]
      451 SETTABLEKS                       R9 R8 K121 ["thoughts"]
      453 DUPTABLE                         R9 K222 [{["delaySeconds"] = 0.6, ["progress"] = 0.25, ["step"] = "mesh_generation_composite:tops", ["updates"], ["thoughts"]}]
      454 NEWTABLE                         R11 0 1
      456 LOADK                            R12 K21 ["rig_source_body"]
      457 SETLIST                          R11 R12 1 [1]
      459 NEWTABLE                         R10 0 0
      461 MOVE                             R12 R11
      462 LOADNIL                          R13
      463 LOADNIL                          R14
      464 FORGPREP                         R12
      465 LOADK                            R17 K158 ["completed"]
      466 SETTABLE                         R17 R10 R16
      467 FORGLOOP                         R12 2 ; [-3]
      469 SETTABLEKS                       R10 R9 K120 ["updates"]
      471 NEWTABLE                         R10 0 7
      473 DUPTABLE                         R11 K224 [{["Node"] = "mesh_generation_clothing:bottoms", ["Text"] = "Folds and hems should read in 3D."}]
      474 DUPTABLE                         R12 K225 [{["Node"] = "mesh_generation_clothing:shoes", ["Text"] = "Folds and hems should read in 3D."}]
      475 DUPTABLE                         R13 K227 [{["Node"] = "rig_source_body", ["Text"] = "Hanging in on rig source body; this pass is running long."}]
      476 DUPTABLE                         R14 K229 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "Still on mesh generation composite:bottoms (21s in) — hanging in — good work doesn't rush."}]
      477 DUPTABLE                         R15 K231 [{["Node"] = "mesh_generation_composite:head_accessories", ["Text"] = "Still on mesh generation composite:head accessories (21s in) — hanging in — good work doesn't rush."}]
      478 DUPTABLE                         R16 K233 [{["Node"] = "mesh_generation_composite:shoes", ["Text"] = "Still on mesh generation composite:shoes (21s in) — hanging in — good work doesn't rush."}]
      479 DUPTABLE                         R17 K235 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Still on mesh generation composite:tops (21s in) — hanging in — good work doesn't rush."}]
      480 SETLIST                          R10 R11 7 [1]
      482 SETTABLEKS                       R10 R9 K121 ["thoughts"]
      484 DUPTABLE                         R10 K236 [{["delaySeconds"] = 0.6, ["progress"] = 0.25, ["step"] = "generate_body", ["thoughts"]}]
      485 NEWTABLE                         R11 0 1
      487 DUPTABLE                         R12 K238 [{["Node"] = "generate_body", ["Text"] = "The silhouette should agree with the sheet."}]
      488 SETLIST                          R11 R12 1 [1]
      490 SETTABLEKS                       R11 R10 K121 ["thoughts"]
      492 DUPTABLE                         R11 K240 [{["delaySeconds"] = 0.6, ["progress"] = 0.27, ["step"] = "mesh_generation_clothing:shoes", ["updates"], ["thoughts"]}]
      493 NEWTABLE                         R13 0 1
      495 LOADK                            R14 K78 ["mesh_generation_clothing:shoes"]
      496 SETLIST                          R13 R14 1 [1]
      498 NEWTABLE                         R12 0 0
      500 MOVE                             R14 R13
      501 LOADNIL                          R15
      502 LOADNIL                          R16
      503 FORGPREP                         R14
      504 LOADK                            R19 K158 ["completed"]
      505 SETTABLE                         R19 R12 R18
      506 FORGLOOP                         R14 2 ; [-3]
      508 SETTABLEKS                       R12 R11 K120 ["updates"]
      510 NEWTABLE                         R12 0 2
      512 DUPTABLE                         R13 K242 [{["Node"] = "mesh_generation_composite:head_accessories", ["Text"] = "Hanging in on mesh generation composite:head accessories; this pass is running long."}]
      513 DUPTABLE                         R14 K244 [{["Node"] = "mesh_generation_composite:shoes", ["Text"] = "Hanging in on mesh generation composite:shoes; this pass is running long."}]
      514 SETLIST                          R12 R13 2 [1]
      516 SETTABLEKS                       R12 R11 K121 ["thoughts"]
      518 DUPTABLE                         R12 K245 [{["delaySeconds"] = 0.6, ["progress"] = 0.27, ["step"] = "mesh_generation_clothing:bottoms", ["thoughts"]}]
      519 NEWTABLE                         R13 0 4
      521 DUPTABLE                         R14 K247 [{["Node"] = "generate_body", ["Text"] = "Are the legs and arms the length the drawing promised?"}]
      522 DUPTABLE                         R15 K249 [{["Node"] = "mesh_generation_clothing:bottoms", ["Text"] = "Hanging in on mesh generation clothing:bottoms; this pass is running long."}]
      523 DUPTABLE                         R16 K251 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "Hanging in on mesh generation composite:bottoms; this pass is running long."}]
      524 DUPTABLE                         R17 K253 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Hanging in on mesh generation composite:tops; this pass is running long."}]
      525 SETLIST                          R13 R14 4 [1]
      527 SETTABLEKS                       R13 R12 K121 ["thoughts"]
      529 DUPTABLE                         R13 K256 [{["delaySeconds"] = 0.6, ["progress"] = 0.29, ["step"] = "align_body:shoes", ["showPreview"] = True, ["updates"], ["thoughts"]}]
      530 NEWTABLE                         R16 0 2
      532 LOADK                            R17 K70 ["align_body:shoes"]
      533 LOADK                            R18 K84 ["render_one_piece:shoes"]
      534 SETLIST                          R16 R17 2 [1]
      536 NEWTABLE                         R15 0 0
      538 MOVE                             R17 R16
      539 LOADNIL                          R18
      540 LOADNIL                          R19
      541 FORGPREP                         R17
      542 LOADK                            R22 K123 ["running"]
      543 SETTABLE                         R22 R15 R21
      544 FORGLOOP                         R17 2 ; [-3]
      546 NEWTABLE                         R17 0 1
      548 LOADK                            R18 K80 ["mesh_generation_composite:shoes"]
      549 SETLIST                          R17 R18 1 [1]
      551 NEWTABLE                         R16 0 0
      553 MOVE                             R18 R17
      554 LOADNIL                          R19
      555 LOADNIL                          R20
      556 FORGPREP                         R18
      557 LOADK                            R23 K158 ["completed"]
      558 SETTABLE                         R23 R16 R22
      559 FORGLOOP                         R18 2 ; [-3]
      561 GETIMPORT                        R17 K180 [table.clone]
      563 MOVE                             R18 R15
      564 CALL                             R17 1 1
      565 MOVE                             R14 R17
      566 MOVE                             R17 R16
      567 LOADNIL                          R18
      568 LOADNIL                          R19
      569 FORGPREP                         R17
      570 JUMPIFEQKS                       R21 K123 ["running"] ; [+3]
      572 JUMPIFNOTEQKS                    R21 K158 ["completed"] ; [+2]
      574 SETTABLE                         R21 R14 R20
      575 FORGLOOP                         R17 2 ; [-6]
      577 SETTABLEKS                       R14 R13 K120 ["updates"]
      579 NEWTABLE                         R14 0 2
      581 DUPTABLE                         R15 K258 [{["Node"] = "align_body:shoes", ["Text"] = "Matching body to clothing."}]
      582 DUPTABLE                         R16 K260 [{["Node"] = "render_one_piece:shoes", ["Text"] = "Drawing a one-piece preview."}]
      583 SETLIST                          R14 R15 2 [1]
      585 SETTABLEKS                       R14 R13 K121 ["thoughts"]
      587 DUPTABLE                         R14 K261 [{["delaySeconds"] = 0.6, ["progress"] = 0.29, ["step"] = "mesh_generation_clothing:bottoms", ["thoughts"]}]
      588 NEWTABLE                         R15 0 1
      590 DUPTABLE                         R16 K263 [{["Node"] = "mesh_generation_composite:head_accessories", ["Text"] = "Still on mesh generation composite:head accessories after the typical wait."}]
      591 SETLIST                          R15 R16 1 [1]
      593 SETTABLEKS                       R15 R14 K121 ["thoughts"]
      595 DUPTABLE                         R15 K265 [{["delaySeconds"] = 0.6, ["progress"] = 0.37, ["step"] = "segment_3d_seed:shoes", ["updates"], ["thoughts"]}]
      596 NEWTABLE                         R18 0 2
      598 LOADK                            R19 K5 ["autosetup_original_body"]
      599 LOADK                            R20 K86 ["segment_3d_seed:shoes"]
      600 SETLIST                          R18 R19 2 [1]
      602 NEWTABLE                         R17 0 0
      604 MOVE                             R19 R18
      605 LOADNIL                          R20
      606 LOADNIL                          R21
      607 FORGPREP                         R19
      608 LOADK                            R24 K123 ["running"]
      609 SETTABLE                         R24 R17 R23
      610 FORGLOOP                         R19 2 ; [-3]
      612 NEWTABLE                         R19 0 3
      614 LOADK                            R20 K14 ["generate_body"]
      615 LOADK                            R21 K34 ["mesh_generation_clothing:bottoms"]
      616 LOADK                            R22 K84 ["render_one_piece:shoes"]
      617 SETLIST                          R19 R20 3 [1]
      619 NEWTABLE                         R18 0 0
      621 MOVE                             R20 R19
      622 LOADNIL                          R21
      623 LOADNIL                          R22
      624 FORGPREP                         R20
      625 LOADK                            R25 K158 ["completed"]
      626 SETTABLE                         R25 R18 R24
      627 FORGLOOP                         R20 2 ; [-3]
      629 GETIMPORT                        R19 K180 [table.clone]
      631 MOVE                             R20 R17
      632 CALL                             R19 1 1
      633 MOVE                             R16 R19
      634 MOVE                             R19 R18
      635 LOADNIL                          R20
      636 LOADNIL                          R21
      637 FORGPREP                         R19
      638 JUMPIFEQKS                       R23 K123 ["running"] ; [+3]
      640 JUMPIFNOTEQKS                    R23 K158 ["completed"] ; [+2]
      642 SETTABLE                         R23 R16 R22
      643 FORGLOOP                         R19 2 ; [-6]
      645 SETTABLEKS                       R16 R15 K120 ["updates"]
      647 NEWTABLE                         R16 0 8
      649 DUPTABLE                         R17 K267 [{["Node"] = "generate_body", ["Text"] = "NPC head and neck — hats need a place to land."}]
      650 DUPTABLE                         R18 K269 [{["Node"] = "mesh_generation_clothing:bottoms", ["Text"] = "Still on mesh generation clothing:bottoms after the typical wait."}]
      651 DUPTABLE                         R19 K271 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "Still on mesh generation composite:bottoms after the typical wait."}]
      652 DUPTABLE                         R20 K273 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Still on mesh generation composite:tops after the typical wait."}]
      653 DUPTABLE                         R21 K275 [{["Node"] = "align_body:shoes", ["Text"] = "A fit nudge so clothing doesn't float."}]
      654 DUPTABLE                         R22 K277 [{["Node"] = "render_one_piece:shoes", ["Text"] = "Hanging in on render one piece:shoes; this pass is running long."}]
      655 DUPTABLE                         R23 K279 [{["Node"] = "autosetup_original_body", ["Text"] = "Getting the source body ready for autosetup."}]
      656 DUPTABLE                         R24 K281 [{["Node"] = "segment_3d_seed:shoes", ["Text"] = "Cutting the 3D seed into parts."}]
      657 SETLIST                          R16 R17 8 [1]
      659 SETTABLEKS                       R16 R15 K121 ["thoughts"]
      661 DUPTABLE                         R16 K282 [{["delaySeconds"] = 1.2, ["progress"] = 0.37, ["step"] = "autosetup_original_body", ["thoughts"]}]
      662 NEWTABLE                         R17 0 4
      664 DUPTABLE                         R18 K284 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "Still working through mesh generation composite:bottoms — it's a long one."}]
      665 DUPTABLE                         R19 K286 [{["Node"] = "mesh_generation_composite:head_accessories", ["Text"] = "Still working through mesh generation composite:head accessories — it's a long one."}]
      666 DUPTABLE                         R20 K288 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Still working through mesh generation composite:tops — it's a long one."}]
      667 DUPTABLE                         R21 K290 [{["Node"] = "align_body:shoes", ["Text"] = "The body should agree with the drawing."}]
      668 SETLIST                          R17 R18 4 [1]
      670 SETTABLEKS                       R17 R16 K121 ["thoughts"]
      672 DUPTABLE                         R17 K291 [{["delaySeconds"] = 0.6, ["progress"] = 0.37, ["step"] = "mesh_generation_composite:bottoms", ["thoughts"]}]
      673 NEWTABLE                         R18 0 2
      675 DUPTABLE                         R19 K293 [{["Node"] = "autosetup_original_body", ["Text"] = "Still running the source body through setup."}]
      676 DUPTABLE                         R20 K295 [{["Node"] = "segment_3d_seed:shoes", ["Text"] = "Still on segment 3d seed:shoes (12s in) — still in the middle of the interesting part."}]
      677 SETLIST                          R18 R19 2 [1]
      679 SETTABLEKS                       R18 R17 K121 ["thoughts"]
      681 DUPTABLE                         R18 K297 [{["delaySeconds"] = 0.6, ["progress"] = 0.41, ["step"] = "segment_3d_seed:shoes", ["updates"], ["thoughts"]}]
      682 NEWTABLE                         R21 0 2
      684 LOADK                            R22 K50 ["align_body:head_accessories"]
      685 LOADK                            R23 K64 ["render_one_piece:head_accessories"]
      686 SETLIST                          R21 R22 2 [1]
      688 NEWTABLE                         R20 0 0
      690 MOVE                             R22 R21
      691 LOADNIL                          R23
      692 LOADNIL                          R24
      693 FORGPREP                         R22
      694 LOADK                            R27 K123 ["running"]
      695 SETTABLE                         R27 R20 R26
      696 FORGLOOP                         R22 2 ; [-3]
      698 NEWTABLE                         R22 0 2
      700 LOADK                            R23 K60 ["mesh_generation_composite:head_accessories"]
      701 LOADK                            R24 K86 ["segment_3d_seed:shoes"]
      702 SETLIST                          R22 R23 2 [1]
      704 NEWTABLE                         R21 0 0
      706 MOVE                             R23 R22
      707 LOADNIL                          R24
      708 LOADNIL                          R25
      709 FORGPREP                         R23
      710 LOADK                            R28 K158 ["completed"]
      711 SETTABLE                         R28 R21 R27
      712 FORGLOOP                         R23 2 ; [-3]
      714 GETIMPORT                        R22 K180 [table.clone]
      716 MOVE                             R23 R20
      717 CALL                             R22 1 1
      718 MOVE                             R19 R22
      719 MOVE                             R22 R21
      720 LOADNIL                          R23
      721 LOADNIL                          R24
      722 FORGPREP                         R22
      723 JUMPIFEQKS                       R26 K123 ["running"] ; [+3]
      725 JUMPIFNOTEQKS                    R26 K158 ["completed"] ; [+2]
      727 SETTABLE                         R26 R19 R25
      728 FORGLOOP                         R22 2 ; [-6]
      730 SETTABLEKS                       R19 R18 K120 ["updates"]
      732 NEWTABLE                         R19 0 2
      734 DUPTABLE                         R20 K298 [{["Node"] = "align_body:head_accessories", ["Text"] = "Matching body to clothing."}]
      735 DUPTABLE                         R21 K299 [{["Node"] = "render_one_piece:head_accessories", ["Text"] = "Drawing a one-piece preview."}]
      736 SETLIST                          R19 R20 2 [1]
      738 SETTABLEKS                       R19 R18 K121 ["thoughts"]
      740 DUPTABLE                         R19 K300 [{["delaySeconds"] = 0.6, ["progress"] = 0.41, ["step"] = "segment_propagate_3d:shoes", ["updates"], ["thoughts"]}]
      741 NEWTABLE                         R21 0 1
      743 LOADK                            R22 K88 ["segment_propagate_3d:shoes"]
      744 SETLIST                          R21 R22 1 [1]
      746 NEWTABLE                         R20 0 0
      748 MOVE                             R22 R21
      749 LOADNIL                          R23
      750 LOADNIL                          R24
      751 FORGPREP                         R22
      752 LOADK                            R27 K123 ["running"]
      753 SETTABLE                         R27 R20 R26
      754 FORGLOOP                         R22 2 ; [-3]
      756 SETTABLEKS                       R20 R19 K120 ["updates"]
      758 NEWTABLE                         R20 0 6
      760 DUPTABLE                         R21 K302 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "Not done with mesh generation composite:bottoms yet — longer than the typical pass."}]
      761 DUPTABLE                         R22 K304 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Not done with mesh generation composite:tops yet — longer than the typical pass."}]
      762 DUPTABLE                         R23 K306 [{["Node"] = "align_body:shoes", ["Text"] = "Settling the stance so the clothes hang right."}]
      763 DUPTABLE                         R24 K308 [{["Node"] = "autosetup_original_body", ["Text"] = "Keeping the original proportions as we bind."}]
      764 DUPTABLE                         R25 K310 [{["Node"] = "render_one_piece:head_accessories", ["Text"] = "Hanging in on render one piece:head accessories; this pass is running long."}]
      765 DUPTABLE                         R26 K312 [{["Node"] = "segment_propagate_3d:shoes", ["Text"] = "Spreading segmentation across the mesh."}]
      766 SETLIST                          R20 R21 6 [1]
      768 SETTABLEKS                       R20 R19 K121 ["thoughts"]
      770 SETLIST                          R3 R4 16 [17]
      772 DUPTABLE                         R4 K314 [{["delaySeconds"] = 0.6, ["progress"] = 0.42, ["step"] = "segment_propagate_3d:shoes", ["updates"], ["thoughts"]}]
      773 NEWTABLE                         R7 0 1
      775 LOADK                            R8 K66 ["segment_3d_seed:head_accessories"]
      776 SETLIST                          R7 R8 1 [1]
      778 NEWTABLE                         R6 0 0
      780 MOVE                             R8 R7
      781 LOADNIL                          R9
      782 LOADNIL                          R10
      783 FORGPREP                         R8
      784 LOADK                            R13 K123 ["running"]
      785 SETTABLE                         R13 R6 R12
      786 FORGLOOP                         R8 2 ; [-3]
      788 NEWTABLE                         R8 0 1
      790 LOADK                            R9 K64 ["render_one_piece:head_accessories"]
      791 SETLIST                          R8 R9 1 [1]
      793 NEWTABLE                         R7 0 0
      795 MOVE                             R9 R8
      796 LOADNIL                          R10
      797 LOADNIL                          R11
      798 FORGPREP                         R9
      799 LOADK                            R14 K158 ["completed"]
      800 SETTABLE                         R14 R7 R13
      801 FORGLOOP                         R9 2 ; [-3]
      803 GETIMPORT                        R8 K180 [table.clone]
      805 MOVE                             R9 R6
      806 CALL                             R8 1 1
      807 MOVE                             R5 R8
      808 MOVE                             R8 R7
      809 LOADNIL                          R9
      810 LOADNIL                          R10
      811 FORGPREP                         R8
      812 JUMPIFEQKS                       R12 K123 ["running"] ; [+3]
      814 JUMPIFNOTEQKS                    R12 K158 ["completed"] ; [+2]
      816 SETTABLE                         R12 R5 R11
      817 FORGLOOP                         R8 2 ; [-6]
      819 SETTABLEKS                       R5 R4 K120 ["updates"]
      821 NEWTABLE                         R5 0 2
      823 DUPTABLE                         R6 K315 [{["Node"] = "align_body:head_accessories", ["Text"] = "A fit nudge so clothing doesn't float."}]
      824 DUPTABLE                         R7 K316 [{["Node"] = "segment_3d_seed:head_accessories", ["Text"] = "Cutting the 3D seed into parts."}]
      825 SETLIST                          R5 R6 2 [1]
      827 SETTABLEKS                       R5 R4 K121 ["thoughts"]
      829 DUPTABLE                         R5 K317 [{["delaySeconds"] = 0.6, ["progress"] = 0.42, ["step"] = "mesh_generation_composite:bottoms", ["thoughts"]}]
      830 NEWTABLE                         R6 0 3
      832 DUPTABLE                         R7 K319 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Should be wrapping mesh generation composite:tops soon; it's past the usual mark."}]
      833 DUPTABLE                         R8 K321 [{["Node"] = "segment_propagate_3d:shoes", ["Text"] = "Hanging in on segment propagate 3d:shoes; this pass is running long."}]
      834 DUPTABLE                         R9 K323 [{["Node"] = "segment_3d_seed:head_accessories", ["Text"] = "Still on segment 3d seed:head accessories (12s in) — still in the middle of the interesting part."}]
      835 SETLIST                          R6 R7 3 [1]
      837 SETTABLEKS                       R6 R5 K121 ["thoughts"]
      839 DUPTABLE                         R6 K324 [{["delaySeconds"] = 0.6, ["progress"] = 0.42, ["step"] = "segment_propagate_3d:shoes", ["thoughts"]}]
      840 NEWTABLE                         R7 0 3
      842 DUPTABLE                         R8 K326 [{["Node"] = "align_body:shoes", ["Text"] = "Still on align body:shoes (55s in) — another pass before we move on."}]
      843 DUPTABLE                         R9 K328 [{["Node"] = "autosetup_original_body", ["Text"] = "Putting this mesh on the avatar rig."}]
      844 DUPTABLE                         R10 K329 [{["Node"] = "align_body:head_accessories", ["Text"] = "The body should agree with the drawing."}]
      845 SETLIST                          R7 R8 3 [1]
      847 SETTABLEKS                       R7 R6 K121 ["thoughts"]
      849 DUPTABLE                         R7 K331 [{["delaySeconds"] = 0.6, ["progress"] = 0.43, ["step"] = "fit_parts:shoes", ["updates"], ["thoughts"]}]
      850 NEWTABLE                         R10 0 1
      852 LOADK                            R11 K74 ["fit_parts:shoes"]
      853 SETLIST                          R10 R11 1 [1]
      855 NEWTABLE                         R9 0 0
      857 MOVE                             R11 R10
      858 LOADNIL                          R12
      859 LOADNIL                          R13
      860 FORGPREP                         R11
      861 LOADK                            R16 K123 ["running"]
      862 SETTABLE                         R16 R9 R15
      863 FORGLOOP                         R11 2 ; [-3]
      865 NEWTABLE                         R11 0 1
      867 LOADK                            R12 K88 ["segment_propagate_3d:shoes"]
      868 SETLIST                          R11 R12 1 [1]
      870 NEWTABLE                         R10 0 0
      872 MOVE                             R12 R11
      873 LOADNIL                          R13
      874 LOADNIL                          R14
      875 FORGPREP                         R12
      876 LOADK                            R17 K158 ["completed"]
      877 SETTABLE                         R17 R10 R16
      878 FORGLOOP                         R12 2 ; [-3]
      880 GETIMPORT                        R11 K180 [table.clone]
      882 MOVE                             R12 R9
      883 CALL                             R11 1 1
      884 MOVE                             R8 R11
      885 MOVE                             R11 R10
      886 LOADNIL                          R12
      887 LOADNIL                          R13
      888 FORGPREP                         R11
      889 JUMPIFEQKS                       R15 K123 ["running"] ; [+3]
      891 JUMPIFNOTEQKS                    R15 K158 ["completed"] ; [+2]
      893 SETTABLE                         R15 R8 R14
      894 FORGLOOP                         R11 2 ; [-6]
      896 SETTABLEKS                       R8 R7 K120 ["updates"]
      898 NEWTABLE                         R8 0 2
      900 DUPTABLE                         R9 K333 [{["Node"] = "mesh_generation_composite:bottoms", ["Text"] = "Should be wrapping mesh generation composite:bottoms soon; it's past the usual mark."}]
      901 DUPTABLE                         R10 K335 [{["Node"] = "fit_parts:shoes", ["Text"] = "Getting garments onto the body."}]
      902 SETLIST                          R8 R9 2 [1]
      904 SETTABLEKS                       R8 R7 K121 ["thoughts"]
      906 DUPTABLE                         R8 K337 [{["delaySeconds"] = 0.6, ["progress"] = 0.47, ["step"] = "mesh_generation_composite:bottoms", ["updates"], ["thoughts"]}]
      907 NEWTABLE                         R11 0 2
      909 LOADK                            R12 K68 ["segment_propagate_3d:head_accessories"]
      910 LOADK                            R13 K72 ["cage_body:shoes"]
      911 SETLIST                          R11 R12 2 [1]
      913 NEWTABLE                         R10 0 0
      915 MOVE                             R12 R11
      916 LOADNIL                          R13
      917 LOADNIL                          R14
      918 FORGPREP                         R12
      919 LOADK                            R17 K123 ["running"]
      920 SETTABLE                         R17 R10 R16
      921 FORGLOOP                         R12 2 ; [-3]
      923 NEWTABLE                         R12 0 2
      925 LOADK                            R13 K66 ["segment_3d_seed:head_accessories"]
      926 LOADK                            R14 K70 ["align_body:shoes"]
      927 SETLIST                          R12 R13 2 [1]
      929 NEWTABLE                         R11 0 0
      931 MOVE                             R13 R12
      932 LOADNIL                          R14
      933 LOADNIL                          R15
      934 FORGPREP                         R13
      935 LOADK                            R18 K158 ["completed"]
      936 SETTABLE                         R18 R11 R17
      937 FORGLOOP                         R13 2 ; [-3]
      939 GETIMPORT                        R12 K180 [table.clone]
      941 MOVE                             R13 R10
      942 CALL                             R12 1 1
      943 MOVE                             R9 R12
      944 MOVE                             R12 R11
      945 LOADNIL                          R13
      946 LOADNIL                          R14
      947 FORGPREP                         R12
      948 JUMPIFEQKS                       R16 K123 ["running"] ; [+3]
      950 JUMPIFNOTEQKS                    R16 K158 ["completed"] ; [+2]
      952 SETTABLE                         R16 R9 R15
      953 FORGLOOP                         R12 2 ; [-6]
      955 SETTABLEKS                       R9 R8 K120 ["updates"]
      957 NEWTABLE                         R9 0 4
      959 DUPTABLE                         R10 K339 [{["Node"] = "mesh_generation_composite:tops", ["Text"] = "Holding for mesh generation composite:tops a little longer than the usual cadence."}]
      960 DUPTABLE                         R11 K341 [{["Node"] = "autosetup_original_body", ["Text"] = "Making sure the silhouette survives setup."}]
      961 DUPTABLE                         R12 K342 [{["Node"] = "segment_propagate_3d:head_accessories", ["Text"] = "Spreading segmentation across the mesh."}]
      962 DUPTABLE                         R13 K344 [{["Node"] = "cage_body:shoes", ["Text"] = "Wrapping a cage around the body."}]
      963 SETLIST                          R9 R10 4 [1]
      965 SETTABLEKS                       R9 R8 K121 ["thoughts"]
      967 DUPTABLE                         R9 K346 [{["delaySeconds"] = 0.6, ["progress"] = 0.5, ["step"] = "render_one_piece:bottoms", ["updates"], ["thoughts"]}]
      968 NEWTABLE                         R12 0 2
      970 LOADK                            R13 K23 ["align_body:bottoms"]
      971 LOADK                            R14 K41 ["render_one_piece:bottoms"]
      972 SETLIST                          R12 R13 2 [1]
      974 NEWTABLE                         R11 0 0
      976 MOVE                             R13 R12
      977 LOADNIL                          R14
      978 LOADNIL                          R15
      979 FORGPREP                         R13
      980 LOADK                            R18 K123 ["running"]
      981 SETTABLE                         R18 R11 R17
      982 FORGLOOP                         R13 2 ; [-3]
      984 NEWTABLE                         R13 0 1
      986 LOADK                            R14 K36 ["mesh_generation_composite:bottoms"]
      987 SETLIST                          R13 R14 1 [1]
      989 NEWTABLE                         R12 0 0
      991 MOVE                             R14 R13
      992 LOADNIL                          R15
      993 LOADNIL                          R16
      994 FORGPREP                         R14
      995 LOADK                            R19 K158 ["completed"]
      996 SETTABLE                         R19 R12 R18
      997 FORGLOOP                         R14 2 ; [-3]
      999 GETIMPORT                        R13 K180 [table.clone]
     1001 MOVE                             R14 R11
     1002 CALL                             R13 1 1
     1003 MOVE                             R10 R13
     1004 MOVE                             R13 R12
     1005 LOADNIL                          R14
     1006 LOADNIL                          R15
     1007 FORGPREP                         R13
     1008 JUMPIFEQKS                       R17 K123 ["running"] ; [+3]
     1010 JUMPIFNOTEQKS                    R17 K158 ["completed"] ; [+2]
     1012 SETTABLE                         R17 R10 R16
     1013 FORGLOOP                         R13 2 ; [-6]
     1015 SETTABLEKS                       R10 R9 K120 ["updates"]
     1017 NEWTABLE                         R10 0 4
     1019 DUPTABLE                         R11 K347 [{["Node"] = "align_body:head_accessories", ["Text"] = "Settling the stance so the clothes hang right."}]
     1020 DUPTABLE                         R12 K349 [{["Node"] = "fit_parts:shoes", ["Text"] = "Nudge the pieces so they don't collide."}]
     1021 DUPTABLE                         R13 K350 [{["Node"] = "align_body:bottoms", ["Text"] = "Matching body to clothing."}]
     1022 DUPTABLE                         R14 K351 [{["Node"] = "render_one_piece:bottoms", ["Text"] = "Drawing a one-piece preview."}]
     1023 SETLIST                          R10 R11 4 [1]
     1025 SETTABLEKS                       R10 R9 K121 ["thoughts"]
     1027 DUPTABLE                         R10 K353 [{["delaySeconds"] = 0.6, ["progress"] = 0.51, ["step"] = "align_body:bottoms", ["updates"], ["thoughts"]}]
     1028 NEWTABLE                         R13 0 1
     1030 LOADK                            R14 K54 ["fit_parts:head_accessories"]
     1031 SETLIST                          R13 R14 1 [1]
     1033 NEWTABLE                         R12 0 0
     1035 MOVE                             R14 R13
     1036 LOADNIL                          R15
     1037 LOADNIL                          R16
     1038 FORGPREP                         R14
     1039 LOADK                            R19 K123 ["running"]
     1040 SETTABLE                         R19 R12 R18
     1041 FORGLOOP                         R14 2 ; [-3]
     1043 NEWTABLE                         R14 0 1
     1045 LOADK                            R15 K68 ["segment_propagate_3d:head_accessories"]
     1046 SETLIST                          R14 R15 1 [1]
     1048 NEWTABLE                         R13 0 0
     1050 MOVE                             R15 R14
     1051 LOADNIL                          R16
     1052 LOADNIL                          R17
     1053 FORGPREP                         R15
     1054 LOADK                            R20 K158 ["completed"]
     1055 SETTABLE                         R20 R13 R19
     1056 FORGLOOP                         R15 2 ; [-3]
     1058 GETIMPORT                        R14 K180 [table.clone]
     1060 MOVE                             R15 R12
     1061 CALL                             R14 1 1
     1062 MOVE                             R11 R14
     1063 MOVE                             R14 R13
     1064 LOADNIL                          R15
     1065 LOADNIL                          R16
     1066 FORGPREP                         R14
     1067 JUMPIFEQKS                       R18 K123 ["running"] ; [+3]
     1069 JUMPIFNOTEQKS                    R18 K158 ["completed"] ; [+2]
     1071 SETTABLE                         R18 R11 R17
     1072 FORGLOOP                         R14 2 ; [-6]
     1074 SETTABLEKS                       R11 R10 K120 ["updates"]
     1076 NEWTABLE                         R11 0 2
     1078 DUPTABLE                         R12 K355 [{["Node"] = "cage_body:shoes", ["Text"] = "Still fitting the cage to the mesh."}]
     1079 DUPTABLE                         R13 K356 [{["Node"] = "fit_parts:head_accessories", ["Text"] = "Getting garments onto the body."}]
     1080 SETLIST                          R11 R12 2 [1]
     1082 SETTABLEKS                       R11 R10 K121 ["thoughts"]
     1084 DUPTABLE                         R11 K358 [{["delaySeconds"] = 0.6, ["progress"] = 0.52, ["step"] = "fit_parts:head_accessories", ["updates"], ["thoughts"]}]
     1085 NEWTABLE                         R14 0 1
     1087 LOADK                            R15 K44 ["segment_3d_seed:bottoms"]
     1088 SETLIST                          R14 R15 1 [1]
     1090 NEWTABLE                         R13 0 0
     1092 MOVE                             R15 R14
     1093 LOADNIL                          R16
     1094 LOADNIL                          R17
     1095 FORGPREP                         R15
     1096 LOADK                            R20 K123 ["running"]
     1097 SETTABLE                         R20 R13 R19
     1098 FORGLOOP                         R15 2 ; [-3]
     1100 NEWTABLE                         R15 0 1
     1102 LOADK                            R16 K41 ["render_one_piece:bottoms"]
     1103 SETLIST                          R15 R16 1 [1]
     1105 NEWTABLE                         R14 0 0
     1107 MOVE                             R16 R15
     1108 LOADNIL                          R17
     1109 LOADNIL                          R18
     1110 FORGPREP                         R16
     1111 LOADK                            R21 K158 ["completed"]
     1112 SETTABLE                         R21 R14 R20
     1113 FORGLOOP                         R16 2 ; [-3]
     1115 GETIMPORT                        R15 K180 [table.clone]
     1117 MOVE                             R16 R13
     1118 CALL                             R15 1 1
     1119 MOVE                             R12 R15
     1120 MOVE                             R15 R14
     1121 LOADNIL                          R16
     1122 LOADNIL                          R17
     1123 FORGPREP                         R15
     1124 JUMPIFEQKS                       R19 K123 ["running"] ; [+3]
     1126 JUMPIFNOTEQKS                    R19 K158 ["completed"] ; [+2]
     1128 SETTABLE                         R19 R12 R18
     1129 FORGLOOP                         R15 2 ; [-6]
     1131 SETTABLEKS                       R12 R11 K120 ["updates"]
     1133 NEWTABLE                         R12 0 4
     1135 DUPTABLE                         R13 K360 [{["Node"] = "autosetup_original_body", ["Text"] = "Skinning the source mesh."}]
     1136 DUPTABLE                         R14 K362 [{["Node"] = "align_body:head_accessories", ["Text"] = "Still on align body:head accessories (55s in) — another pass before we move on."}]
     1137 DUPTABLE                         R15 K364 [{["Node"] = "fit_parts:shoes", ["Text"] = "Tucking clothes into a pose you could actually wear."}]
     1138 DUPTABLE                         R16 K365 [{["Node"] = "segment_3d_seed:bottoms", ["Text"] = "Cutting the 3D seed into parts."}]
     1139 SETLIST                          R12 R13 4 [1]
     1141 SETTABLEKS                       R12 R11 K121 ["thoughts"]
     1143 DUPTABLE                         R12 K366 [{["delaySeconds"] = 0.6, ["progress"] = 0.52, ["step"] = "cage_body:shoes", ["thoughts"]}]
     1144 NEWTABLE                         R13 0 1
     1146 DUPTABLE                         R14 K367 [{["Node"] = "align_body:bottoms", ["Text"] = "A fit nudge so clothing doesn't float."}]
     1147 SETLIST                          R13 R14 1 [1]
     1149 SETTABLEKS                       R13 R12 K121 ["thoughts"]
     1151 DUPTABLE                         R13 K368 [{["delaySeconds"] = 0.6, ["progress"] = 0.52, ["step"] = "fit_parts:head_accessories", ["thoughts"]}]
     1152 NEWTABLE                         R14 0 2
     1154 DUPTABLE                         R15 K370 [{["Node"] = "cage_body:shoes", ["Text"] = "A last tighten on the cage."}]
     1155 DUPTABLE                         R16 K371 [{["Node"] = "fit_parts:head_accessories", ["Text"] = "Nudge the pieces so they don't collide."}]
     1156 SETLIST                          R14 R15 2 [1]
     1158 SETTABLEKS                       R14 R13 K121 ["thoughts"]
     1160 DUPTABLE                         R14 K373 [{["delaySeconds"] = 0.6, ["progress"] = 0.55, ["step"] = "segment_3d_seed:bottoms", ["updates"], ["thoughts"]}]
     1161 NEWTABLE                         R17 0 1
     1163 LOADK                            R18 K52 ["cage_body:head_accessories"]
     1164 SETLIST                          R17 R18 1 [1]
     1166 NEWTABLE                         R16 0 0
     1168 MOVE                             R18 R17
     1169 LOADNIL                          R19
     1170 LOADNIL                          R20
     1171 FORGPREP                         R18
     1172 LOADK                            R23 K123 ["running"]
     1173 SETTABLE                         R23 R16 R22
     1174 FORGLOOP                         R18 2 ; [-3]
     1176 NEWTABLE                         R18 0 1
     1178 LOADK                            R19 K50 ["align_body:head_accessories"]
     1179 SETLIST                          R18 R19 1 [1]
     1181 NEWTABLE                         R17 0 0
     1183 MOVE                             R19 R18
     1184 LOADNIL                          R20
     1185 LOADNIL                          R21
     1186 FORGPREP                         R19
     1187 LOADK                            R24 K158 ["completed"]
     1188 SETTABLE                         R24 R17 R23
     1189 FORGLOOP                         R19 2 ; [-3]
     1191 GETIMPORT                        R18 K180 [table.clone]
     1193 MOVE                             R19 R16
     1194 CALL                             R18 1 1
     1195 MOVE                             R15 R18
     1196 MOVE                             R18 R17
     1197 LOADNIL                          R19
     1198 LOADNIL                          R20
     1199 FORGPREP                         R18
     1200 JUMPIFEQKS                       R22 K123 ["running"] ; [+3]
     1202 JUMPIFNOTEQKS                    R22 K158 ["completed"] ; [+2]
     1204 SETTABLE                         R22 R15 R21
     1205 FORGLOOP                         R18 2 ; [-6]
     1207 SETTABLEKS                       R15 R14 K120 ["updates"]
     1209 NEWTABLE                         R15 0 4
     1211 DUPTABLE                         R16 K375 [{["Node"] = "autosetup_original_body", ["Text"] = "A weight cleanup on the source body."}]
     1212 DUPTABLE                         R17 K377 [{["Node"] = "fit_parts:shoes", ["Text"] = "Still on fit parts:shoes (40s in) — checking that the form is landing cleanly."}]
     1213 DUPTABLE                         R18 K379 [{["Node"] = "segment_3d_seed:bottoms", ["Text"] = "Still on segment 3d seed:bottoms (12s in) — still in the middle of the interesting part."}]
     1214 DUPTABLE                         R19 K380 [{["Node"] = "cage_body:head_accessories", ["Text"] = "Wrapping a cage around the body."}]
     1215 SETLIST                          R15 R16 4 [1]
     1217 SETTABLEKS                       R15 R14 K121 ["thoughts"]
     1219 DUPTABLE                         R15 K382 [{["delaySeconds"] = 0.6, ["progress"] = 0.56, ["step"] = "segment_3d_seed:bottoms", ["updates"], ["thoughts"]}]
     1220 NEWTABLE                         R17 0 2
     1222 LOADK                            R18 K44 ["segment_3d_seed:bottoms"]
     1223 LOADK                            R19 K72 ["cage_body:shoes"]
     1224 SETLIST                          R17 R18 2 [1]
     1226 NEWTABLE                         R16 0 0
     1228 MOVE                             R18 R17
     1229 LOADNIL                          R19
     1230 LOADNIL                          R20
     1231 FORGPREP                         R18
     1232 LOADK                            R23 K158 ["completed"]
     1233 SETTABLE                         R23 R16 R22
     1234 FORGLOOP                         R18 2 ; [-3]
     1236 SETTABLEKS                       R16 R15 K120 ["updates"]
     1238 NEWTABLE                         R16 0 1
     1240 DUPTABLE                         R17 K383 [{["Node"] = "align_body:bottoms", ["Text"] = "The body should agree with the drawing."}]
     1241 SETLIST                          R16 R17 1 [1]
     1243 SETTABLEKS                       R16 R15 K121 ["thoughts"]
     1245 DUPTABLE                         R16 K385 [{["delaySeconds"] = 0.6, ["progress"] = 0.57, ["step"] = "mesh_generation_composite:tops", ["updates"], ["thoughts"]}]
     1246 NEWTABLE                         R18 0 1
     1248 LOADK                            R19 K47 ["segment_propagate_3d:bottoms"]
     1249 SETLIST                          R18 R19 1 [1]
     1251 NEWTABLE                         R17 0 0
     1253 MOVE                             R19 R18
     1254 LOADNIL                          R20
     1255 LOADNIL                          R21
     1256 FORGPREP                         R19
     1257 LOADK                            R24 K123 ["running"]
     1258 SETTABLE                         R24 R17 R23
     1259 FORGLOOP                         R19 2 ; [-3]
     1261 SETTABLEKS                       R17 R16 K120 ["updates"]
     1263 NEWTABLE                         R17 0 3
     1265 DUPTABLE                         R18 K387 [{["Node"] = "autosetup_original_body", ["Text"] = "Bind-pose check."}]
     1266 DUPTABLE                         R19 K388 [{["Node"] = "fit_parts:head_accessories", ["Text"] = "Tucking clothes into a pose you could actually wear."}]
     1267 DUPTABLE                         R20 K389 [{["Node"] = "segment_propagate_3d:bottoms", ["Text"] = "Spreading segmentation across the mesh."}]
     1268 SETLIST                          R17 R18 3 [1]
     1270 SETTABLEKS                       R17 R16 K121 ["thoughts"]
     1272 DUPTABLE                         R17 K390 [{["delaySeconds"] = 0.6, ["progress"] = 0.57, ["step"] = "cage_body:head_accessories", ["thoughts"]}]
     1273 NEWTABLE                         R18 0 3
     1275 DUPTABLE                         R19 K392 [{["Node"] = "fit_parts:shoes", ["Text"] = "Hanging in on fit parts:shoes; this pass is running long."}]
     1276 DUPTABLE                         R20 K393 [{["Node"] = "align_body:bottoms", ["Text"] = "Settling the stance so the clothes hang right."}]
     1277 DUPTABLE                         R21 K394 [{["Node"] = "cage_body:head_accessories", ["Text"] = "Still fitting the cage to the mesh."}]
     1278 SETLIST                          R18 R19 3 [1]
     1280 SETTABLEKS                       R18 R17 K121 ["thoughts"]
     1282 DUPTABLE                         R18 K395 [{["delaySeconds"] = 0.6, ["progress"] = 0.6, ["step"] = "autosetup_original_body", ["updates"]}]
     1283 NEWTABLE                         R20 0 1
     1285 LOADK                            R21 K5 ["autosetup_original_body"]
     1286 SETLIST                          R20 R21 1 [1]
     1288 NEWTABLE                         R19 0 0
     1290 MOVE                             R21 R20
     1291 LOADNIL                          R22
     1292 LOADNIL                          R23
     1293 FORGPREP                         R21
     1294 LOADK                            R26 K158 ["completed"]
     1295 SETTABLE                         R26 R19 R25
     1296 FORGLOOP                         R21 2 ; [-3]
     1298 SETTABLEKS                       R19 R18 K120 ["updates"]
     1300 DUPTABLE                         R19 K397 [{["delaySeconds"] = 0.6, ["progress"] = 0.62, ["step"] = "segment_propagate_3d:bottoms", ["updates"], ["thoughts"]}]
     1301 NEWTABLE                         R22 0 1
     1303 LOADK                            R23 K76 ["intersection_fixing:shoes"]
     1304 SETLIST                          R22 R23 1 [1]
     1306 NEWTABLE                         R21 0 0
     1308 MOVE                             R23 R22
     1309 LOADNIL                          R24
     1310 LOADNIL                          R25
     1311 FORGPREP                         R23
     1312 LOADK                            R28 K123 ["running"]
     1313 SETTABLE                         R28 R21 R27
     1314 FORGLOOP                         R23 2 ; [-3]
     1316 NEWTABLE                         R23 0 1
     1318 LOADK                            R24 K74 ["fit_parts:shoes"]
     1319 SETLIST                          R23 R24 1 [1]
     1321 NEWTABLE                         R22 0 0
     1323 MOVE                             R24 R23
     1324 LOADNIL                          R25
     1325 LOADNIL                          R26
     1326 FORGPREP                         R24
     1327 LOADK                            R29 K158 ["completed"]
     1328 SETTABLE                         R29 R22 R28
     1329 FORGLOOP                         R24 2 ; [-3]
     1331 GETIMPORT                        R23 K180 [table.clone]
     1333 MOVE                             R24 R21
     1334 CALL                             R23 1 1
     1335 MOVE                             R20 R23
     1336 MOVE                             R23 R22
     1337 LOADNIL                          R24
     1338 LOADNIL                          R25
     1339 FORGPREP                         R23
     1340 JUMPIFEQKS                       R27 K123 ["running"] ; [+3]
     1342 JUMPIFNOTEQKS                    R27 K158 ["completed"] ; [+2]
     1344 SETTABLE                         R27 R20 R26
     1345 FORGLOOP                         R23 2 ; [-6]
     1347 SETTABLEKS                       R20 R19 K120 ["updates"]
     1349 NEWTABLE                         R20 0 4
     1351 DUPTABLE                         R21 K399 [{["Node"] = "fit_parts:head_accessories", ["Text"] = "Still on fit parts:head accessories (40s in) — checking that the form is landing cleanly."}]
     1352 DUPTABLE                         R22 K400 [{["Node"] = "cage_body:head_accessories", ["Text"] = "A last tighten on the cage."}]
     1353 DUPTABLE                         R23 K402 [{["Node"] = "segment_propagate_3d:bottoms", ["Text"] = "Hanging in on segment propagate 3d:bottoms; this pass is running long."}]
     1354 DUPTABLE                         R24 K404 [{["Node"] = "intersection_fixing:shoes", ["Text"] = "Cleaning intersections between clothes and body."}]
     1355 SETLIST                          R20 R21 4 [1]
     1357 SETTABLEKS                       R20 R19 K121 ["thoughts"]
     1359 SETLIST                          R3 R4 16 [33]
     1361 DUPTABLE                         R4 K406 [{["delaySeconds"] = 0.6, ["progress"] = 0.63, ["step"] = "intersection_fixing:shoes", ["updates"], ["thoughts"]}]
     1362 NEWTABLE                         R6 0 1
     1364 LOADK                            R7 K52 ["cage_body:head_accessories"]
     1365 SETLIST                          R6 R7 1 [1]
     1367 NEWTABLE                         R5 0 0
     1369 MOVE                             R7 R6
     1370 LOADNIL                          R8
     1371 LOADNIL                          R9
     1372 FORGPREP                         R7
     1373 LOADK                            R12 K158 ["completed"]
     1374 SETTABLE                         R12 R5 R11
     1375 FORGLOOP                         R7 2 ; [-3]
     1377 SETTABLEKS                       R5 R4 K120 ["updates"]
     1379 NEWTABLE                         R5 0 1
     1381 DUPTABLE                         R6 K408 [{["Node"] = "align_body:bottoms", ["Text"] = "Still on align body:bottoms (55s in) — another pass before we move on."}]
     1382 SETLIST                          R5 R6 1 [1]
     1384 SETTABLEKS                       R5 R4 K121 ["thoughts"]
     1386 DUPTABLE                         R5 K410 [{["delaySeconds"] = 0.6, ["progress"] = 0.67, ["step"] = "fit_parts:head_accessories", ["updates"], ["thoughts"]}]
     1387 NEWTABLE                         R8 0 2
     1389 LOADK                            R9 K90 ["align_body:tops"]
     1390 LOADK                            R10 K104 ["render_one_piece:tops"]
     1391 SETLIST                          R8 R9 2 [1]
     1393 NEWTABLE                         R7 0 0
     1395 MOVE                             R9 R8
     1396 LOADNIL                          R10
     1397 LOADNIL                          R11
     1398 FORGPREP                         R9
     1399 LOADK                            R14 K123 ["running"]
     1400 SETTABLE                         R14 R7 R13
     1401 FORGLOOP                         R9 2 ; [-3]
     1403 NEWTABLE                         R9 0 2
     1405 LOADK                            R10 K54 ["fit_parts:head_accessories"]
     1406 LOADK                            R11 K100 ["mesh_generation_composite:tops"]
     1407 SETLIST                          R9 R10 2 [1]
     1409 NEWTABLE                         R8 0 0
     1411 MOVE                             R10 R9
     1412 LOADNIL                          R11
     1413 LOADNIL                          R12
     1414 FORGPREP                         R10
     1415 LOADK                            R15 K158 ["completed"]
     1416 SETTABLE                         R15 R8 R14
     1417 FORGLOOP                         R10 2 ; [-3]
     1419 GETIMPORT                        R9 K180 [table.clone]
     1421 MOVE                             R10 R7
     1422 CALL                             R9 1 1
     1423 MOVE                             R6 R9
     1424 MOVE                             R9 R8
     1425 LOADNIL                          R10
     1426 LOADNIL                          R11
     1427 FORGPREP                         R9
     1428 JUMPIFEQKS                       R13 K123 ["running"] ; [+3]
     1430 JUMPIFNOTEQKS                    R13 K158 ["completed"] ; [+2]
     1432 SETTABLE                         R13 R6 R12
     1433 FORGLOOP                         R9 2 ; [-6]
     1435 SETTABLEKS                       R6 R5 K120 ["updates"]
     1437 NEWTABLE                         R6 0 3
     1439 DUPTABLE                         R7 K412 [{["Node"] = "segment_propagate_3d:bottoms", ["Text"] = "Still on segment propagate 3d:bottoms after the typical wait."}]
     1440 DUPTABLE                         R8 K413 [{["Node"] = "align_body:tops", ["Text"] = "Matching body to clothing."}]
     1441 DUPTABLE                         R9 K414 [{["Node"] = "render_one_piece:tops", ["Text"] = "Drawing a one-piece preview."}]
     1442 SETLIST                          R6 R7 3 [1]
     1444 SETTABLEKS                       R6 R5 K121 ["thoughts"]
     1446 DUPTABLE                         R6 K416 [{["delaySeconds"] = 0.6, ["progress"] = 0.7, ["step"] = "intersection_fixing:head_accessories", ["updates"], ["thoughts"]}]
     1447 NEWTABLE                         R9 0 2
     1449 LOADK                            R10 K26 ["cage_body:bottoms"]
     1450 LOADK                            R11 K56 ["intersection_fixing:head_accessories"]
     1451 SETLIST                          R9 R10 2 [1]
     1453 NEWTABLE                         R8 0 0
     1455 MOVE                             R10 R9
     1456 LOADNIL                          R11
     1457 LOADNIL                          R12
     1458 FORGPREP                         R10
     1459 LOADK                            R15 K123 ["running"]
     1460 SETTABLE                         R15 R8 R14
     1461 FORGLOOP                         R10 2 ; [-3]
     1463 NEWTABLE                         R10 0 1
     1465 LOADK                            R11 K23 ["align_body:bottoms"]
     1466 SETLIST                          R10 R11 1 [1]
     1468 NEWTABLE                         R9 0 0
     1470 MOVE                             R11 R10
     1471 LOADNIL                          R12
     1472 LOADNIL                          R13
     1473 FORGPREP                         R11
     1474 LOADK                            R16 K158 ["completed"]
     1475 SETTABLE                         R16 R9 R15
     1476 FORGLOOP                         R11 2 ; [-3]
     1478 GETIMPORT                        R10 K180 [table.clone]
     1480 MOVE                             R11 R8
     1481 CALL                             R10 1 1
     1482 MOVE                             R7 R10
     1483 MOVE                             R10 R9
     1484 LOADNIL                          R11
     1485 LOADNIL                          R12
     1486 FORGPREP                         R10
     1487 JUMPIFEQKS                       R14 K123 ["running"] ; [+3]
     1489 JUMPIFNOTEQKS                    R14 K158 ["completed"] ; [+2]
     1491 SETTABLE                         R14 R7 R13
     1492 FORGLOOP                         R10 2 ; [-6]
     1494 SETTABLEKS                       R7 R6 K120 ["updates"]
     1496 NEWTABLE                         R7 0 3
     1498 DUPTABLE                         R8 K418 [{["Node"] = "intersection_fixing:shoes", ["Text"] = "Still pulling overlapping geo apart."}]
     1499 DUPTABLE                         R9 K419 [{["Node"] = "intersection_fixing:head_accessories", ["Text"] = "Cleaning intersections between clothes and body."}]
     1500 DUPTABLE                         R10 K420 [{["Node"] = "cage_body:bottoms", ["Text"] = "Wrapping a cage around the body."}]
     1501 SETLIST                          R7 R8 3 [1]
     1503 SETTABLEKS                       R7 R6 K121 ["thoughts"]
     1505 DUPTABLE                         R7 K422 [{["delaySeconds"] = 0.6, ["progress"] = 0.71, ["step"] = "align_body:tops", ["updates"], ["thoughts"]}]
     1506 NEWTABLE                         R10 0 1
     1508 LOADK                            R11 K106 ["segment_3d_seed:tops"]
     1509 SETLIST                          R10 R11 1 [1]
     1511 NEWTABLE                         R9 0 0
     1513 MOVE                             R11 R10
     1514 LOADNIL                          R12
     1515 LOADNIL                          R13
     1516 FORGPREP                         R11
     1517 LOADK                            R16 K123 ["running"]
     1518 SETTABLE                         R16 R9 R15
     1519 FORGLOOP                         R11 2 ; [-3]
     1521 NEWTABLE                         R11 0 1
     1523 LOADK                            R12 K104 ["render_one_piece:tops"]
     1524 SETLIST                          R11 R12 1 [1]
     1526 NEWTABLE                         R10 0 0
     1528 MOVE                             R12 R11
     1529 LOADNIL                          R13
     1530 LOADNIL                          R14
     1531 FORGPREP                         R12
     1532 LOADK                            R17 K158 ["completed"]
     1533 SETTABLE                         R17 R10 R16
     1534 FORGLOOP                         R12 2 ; [-3]
     1536 GETIMPORT                        R11 K180 [table.clone]
     1538 MOVE                             R12 R9
     1539 CALL                             R11 1 1
     1540 MOVE                             R8 R11
     1541 MOVE                             R11 R10
     1542 LOADNIL                          R12
     1543 LOADNIL                          R13
     1544 FORGPREP                         R11
     1545 JUMPIFEQKS                       R15 K123 ["running"] ; [+3]
     1547 JUMPIFNOTEQKS                    R15 K158 ["completed"] ; [+2]
     1549 SETTABLE                         R15 R8 R14
     1550 FORGLOOP                         R11 2 ; [-6]
     1552 SETTABLEKS                       R8 R7 K120 ["updates"]
     1554 NEWTABLE                         R8 0 4
     1556 DUPTABLE                         R9 K424 [{["Node"] = "segment_propagate_3d:bottoms", ["Text"] = "Still working through segment propagate 3d:bottoms — it's a long one."}]
     1557 DUPTABLE                         R10 K426 [{["Node"] = "render_one_piece:tops", ["Text"] = "Hanging in on render one piece:tops; this pass is running long."}]
     1558 DUPTABLE                         R11 K427 [{["Node"] = "intersection_fixing:head_accessories", ["Text"] = "Still pulling overlapping geo apart."}]
     1559 DUPTABLE                         R12 K428 [{["Node"] = "segment_3d_seed:tops", ["Text"] = "Cutting the 3D seed into parts."}]
     1560 SETLIST                          R8 R9 4 [1]
     1562 SETTABLEKS                       R8 R7 K121 ["thoughts"]
     1564 DUPTABLE                         R8 K430 [{["delaySeconds"] = 0.6, ["progress"] = 0.72, ["step"] = "align_body:tops", ["updates"], ["thoughts"]}]
     1565 NEWTABLE                         R11 0 1
     1567 LOADK                            R12 K82 ["prep_autosetup:shoes"]
     1568 SETLIST                          R11 R12 1 [1]
     1570 NEWTABLE                         R10 0 0
     1572 MOVE                             R12 R11
     1573 LOADNIL                          R13
     1574 LOADNIL                          R14
     1575 FORGPREP                         R12
     1576 LOADK                            R17 K123 ["running"]
     1577 SETTABLE                         R17 R10 R16
     1578 FORGLOOP                         R12 2 ; [-3]
     1580 NEWTABLE                         R12 0 1
     1582 LOADK                            R13 K76 ["intersection_fixing:shoes"]
     1583 SETLIST                          R12 R13 1 [1]
     1585 NEWTABLE                         R11 0 0
     1587 MOVE                             R13 R12
     1588 LOADNIL                          R14
     1589 LOADNIL                          R15
     1590 FORGPREP                         R13
     1591 LOADK                            R18 K158 ["completed"]
     1592 SETTABLE                         R18 R11 R17
     1593 FORGLOOP                         R13 2 ; [-3]
     1595 GETIMPORT                        R12 K180 [table.clone]
     1597 MOVE                             R13 R10
     1598 CALL                             R12 1 1
     1599 MOVE                             R9 R12
     1600 MOVE                             R12 R11
     1601 LOADNIL                          R13
     1602 LOADNIL                          R14
     1603 FORGPREP                         R12
     1604 JUMPIFEQKS                       R16 K123 ["running"] ; [+3]
     1606 JUMPIFNOTEQKS                    R16 K158 ["completed"] ; [+2]
     1608 SETTABLE                         R16 R9 R15
     1609 FORGLOOP                         R12 2 ; [-6]
     1611 SETTABLEKS                       R9 R8 K120 ["updates"]
     1613 NEWTABLE                         R9 0 4
     1615 DUPTABLE                         R10 K432 [{["Node"] = "intersection_fixing:shoes", ["Text"] = "Still on intersection fixing:shoes (24s in) — hanging in — good work doesn't rush."}]
     1616 DUPTABLE                         R11 K433 [{["Node"] = "align_body:tops", ["Text"] = "A fit nudge so clothing doesn't float."}]
     1617 DUPTABLE                         R12 K434 [{["Node"] = "cage_body:bottoms", ["Text"] = "Still fitting the cage to the mesh."}]
     1618 DUPTABLE                         R13 K436 [{["Node"] = "prep_autosetup:shoes", ["Text"] = "Getting meshes ready for autosetup."}]
     1619 SETLIST                          R9 R10 4 [1]
     1621 SETTABLEKS                       R9 R8 K121 ["thoughts"]
     1623 DUPTABLE                         R9 K438 [{["delaySeconds"] = 0.6, ["progress"] = 0.74, ["step"] = "align_body:tops", ["updates"], ["thoughts"]}]
     1624 NEWTABLE                         R12 0 1
     1626 LOADK                            R13 K28 ["fit_parts:bottoms"]
     1627 SETLIST                          R12 R13 1 [1]
     1629 NEWTABLE                         R11 0 0
     1631 MOVE                             R13 R12
     1632 LOADNIL                          R14
     1633 LOADNIL                          R15
     1634 FORGPREP                         R13
     1635 LOADK                            R18 K123 ["running"]
     1636 SETTABLE                         R18 R11 R17
     1637 FORGLOOP                         R13 2 ; [-3]
     1639 NEWTABLE                         R13 0 1
     1641 LOADK                            R14 K47 ["segment_propagate_3d:bottoms"]
     1642 SETLIST                          R13 R14 1 [1]
     1644 NEWTABLE                         R12 0 0
     1646 MOVE                             R14 R13
     1647 LOADNIL                          R15
     1648 LOADNIL                          R16
     1649 FORGPREP                         R14
     1650 LOADK                            R19 K158 ["completed"]
     1651 SETTABLE                         R19 R12 R18
     1652 FORGLOOP                         R14 2 ; [-3]
     1654 GETIMPORT                        R13 K180 [table.clone]
     1656 MOVE                             R14 R11
     1657 CALL                             R13 1 1
     1658 MOVE                             R10 R13
     1659 MOVE                             R13 R12
     1660 LOADNIL                          R14
     1661 LOADNIL                          R15
     1662 FORGPREP                         R13
     1663 JUMPIFEQKS                       R17 K123 ["running"] ; [+3]
     1665 JUMPIFNOTEQKS                    R17 K158 ["completed"] ; [+2]
     1667 SETTABLE                         R17 R10 R16
     1668 FORGLOOP                         R13 2 ; [-6]
     1670 SETTABLEKS                       R10 R9 K120 ["updates"]
     1672 NEWTABLE                         R10 0 2
     1674 DUPTABLE                         R11 K440 [{["Node"] = "segment_3d_seed:tops", ["Text"] = "Still on segment 3d seed:tops (12s in) — still in the middle of the interesting part."}]
     1675 DUPTABLE                         R12 K441 [{["Node"] = "fit_parts:bottoms", ["Text"] = "Getting garments onto the body."}]
     1676 SETLIST                          R10 R11 2 [1]
     1678 SETTABLEKS                       R10 R9 K121 ["thoughts"]
     1680 DUPTABLE                         R10 K443 [{["delaySeconds"] = 0.6, ["progress"] = 0.75, ["step"] = "intersection_fixing:head_accessories", ["updates"], ["thoughts"]}]
     1681 NEWTABLE                         R12 0 1
     1683 LOADK                            R13 K56 ["intersection_fixing:head_accessories"]
     1684 SETLIST                          R12 R13 1 [1]
     1686 NEWTABLE                         R11 0 0
     1688 MOVE                             R13 R12
     1689 LOADNIL                          R14
     1690 LOADNIL                          R15
     1691 FORGPREP                         R13
     1692 LOADK                            R18 K158 ["completed"]
     1693 SETTABLE                         R18 R11 R17
     1694 FORGLOOP                         R13 2 ; [-3]
     1696 SETTABLEKS                       R11 R10 K120 ["updates"]
     1698 NEWTABLE                         R11 0 3
     1700 DUPTABLE                         R12 K445 [{["Node"] = "intersection_fixing:head_accessories", ["Text"] = "Still on intersection fixing:head accessories (24s in) — hanging in — good work doesn't rush."}]
     1701 DUPTABLE                         R13 K446 [{["Node"] = "cage_body:bottoms", ["Text"] = "A last tighten on the cage."}]
     1702 DUPTABLE                         R14 K448 [{["Node"] = "prep_autosetup:shoes", ["Text"] = "Still on prep autosetup:shoes (12s in) — still in the middle of the interesting part."}]
     1703 SETLIST                          R11 R12 3 [1]
     1705 SETTABLEKS                       R11 R10 K121 ["thoughts"]
     1707 DUPTABLE                         R11 K449 [{["delaySeconds"] = 0.6, ["progress"] = 0.75, ["step"] = "segment_3d_seed:tops", ["updates"], ["thoughts"]}]
     1708 NEWTABLE                         R13 0 1
     1710 LOADK                            R14 K62 ["prep_autosetup:head_accessories"]
     1711 SETLIST                          R13 R14 1 [1]
     1713 NEWTABLE                         R12 0 0
     1715 MOVE                             R14 R13
     1716 LOADNIL                          R15
     1717 LOADNIL                          R16
     1718 FORGPREP                         R14
     1719 LOADK                            R19 K123 ["running"]
     1720 SETTABLE                         R19 R12 R18
     1721 FORGLOOP                         R14 2 ; [-3]
     1723 SETTABLEKS                       R12 R11 K120 ["updates"]
     1725 NEWTABLE                         R12 0 4
     1727 DUPTABLE                         R13 K450 [{["Node"] = "align_body:tops", ["Text"] = "The body should agree with the drawing."}]
     1728 DUPTABLE                         R14 K452 [{["Node"] = "segment_3d_seed:tops", ["Text"] = "Hanging in on segment 3d seed:tops; this pass is running long."}]
     1729 DUPTABLE                         R15 K453 [{["Node"] = "fit_parts:bottoms", ["Text"] = "Nudge the pieces so they don't collide."}]
     1730 DUPTABLE                         R16 K454 [{["Node"] = "prep_autosetup:head_accessories", ["Text"] = "Getting meshes ready for autosetup."}]
     1731 SETLIST                          R12 R13 4 [1]
     1733 SETTABLEKS                       R12 R11 K121 ["thoughts"]
     1735 DUPTABLE                         R12 K456 [{["delaySeconds"] = 0.6, ["progress"] = 0.77, ["step"] = "segment_3d_seed:tops", ["updates"]}]
     1736 NEWTABLE                         R14 0 2
     1738 LOADK                            R15 K26 ["cage_body:bottoms"]
     1739 LOADK                            R16 K106 ["segment_3d_seed:tops"]
     1740 SETLIST                          R14 R15 2 [1]
     1742 NEWTABLE                         R13 0 0
     1744 MOVE                             R15 R14
     1745 LOADNIL                          R16
     1746 LOADNIL                          R17
     1747 FORGPREP                         R15
     1748 LOADK                            R20 K158 ["completed"]
     1749 SETTABLE                         R20 R13 R19
     1750 FORGLOOP                         R15 2 ; [-3]
     1752 SETTABLEKS                       R13 R12 K120 ["updates"]
     1754 DUPTABLE                         R13 K457 [{["delaySeconds"] = 0.6, ["progress"] = 0.77, ["step"] = "align_body:tops", ["updates"], ["thoughts"]}]
     1755 NEWTABLE                         R15 0 1
     1757 LOADK                            R16 K108 ["segment_propagate_3d:tops"]
     1758 SETLIST                          R15 R16 1 [1]
     1760 NEWTABLE                         R14 0 0
     1762 MOVE                             R16 R15
     1763 LOADNIL                          R17
     1764 LOADNIL                          R18
     1765 FORGPREP                         R16
     1766 LOADK                            R21 K123 ["running"]
     1767 SETTABLE                         R21 R14 R20
     1768 FORGLOOP                         R16 2 ; [-3]
     1770 SETTABLEKS                       R14 R13 K120 ["updates"]
     1772 NEWTABLE                         R14 0 3
     1774 DUPTABLE                         R15 K458 [{["Node"] = "align_body:tops", ["Text"] = "Settling the stance so the clothes hang right."}]
     1775 DUPTABLE                         R16 K460 [{["Node"] = "prep_autosetup:shoes", ["Text"] = "Hanging in on prep autosetup:shoes; this pass is running long."}]
     1776 DUPTABLE                         R17 K461 [{["Node"] = "segment_propagate_3d:tops", ["Text"] = "Spreading segmentation across the mesh."}]
     1777 SETLIST                          R14 R15 3 [1]
     1779 SETTABLEKS                       R14 R13 K121 ["thoughts"]
     1781 DUPTABLE                         R14 K463 [{["delaySeconds"] = 0.6, ["progress"] = 0.79, ["step"] = "prep_autosetup:head_accessories", ["updates"], ["thoughts"]}]
     1782 NEWTABLE                         R16 0 2
     1784 LOADK                            R17 K62 ["prep_autosetup:head_accessories"]
     1785 LOADK                            R18 K82 ["prep_autosetup:shoes"]
     1786 SETLIST                          R16 R17 2 [1]
     1788 NEWTABLE                         R15 0 0
     1790 MOVE                             R17 R16
     1791 LOADNIL                          R18
     1792 LOADNIL                          R19
     1793 FORGPREP                         R17
     1794 LOADK                            R22 K158 ["completed"]
     1795 SETTABLE                         R22 R15 R21
     1796 FORGLOOP                         R17 2 ; [-3]
     1798 SETTABLEKS                       R15 R14 K120 ["updates"]
     1800 NEWTABLE                         R15 0 2
     1802 DUPTABLE                         R16 K464 [{["Node"] = "fit_parts:bottoms", ["Text"] = "Tucking clothes into a pose you could actually wear."}]
     1803 DUPTABLE                         R17 K466 [{["Node"] = "prep_autosetup:head_accessories", ["Text"] = "Still on prep autosetup:head accessories (12s in) — still in the middle of the interesting part."}]
     1804 SETLIST                          R15 R16 2 [1]
     1806 SETTABLEKS                       R15 R14 K121 ["thoughts"]
     1808 DUPTABLE                         R15 K468 [{["delaySeconds"] = 0.6, ["progress"] = 0.8, ["step"] = "fit_parts:tops", ["updates"], ["thoughts"]}]
     1809 NEWTABLE                         R18 0 1
     1811 LOADK                            R19 K94 ["fit_parts:tops"]
     1812 SETLIST                          R18 R19 1 [1]
     1814 NEWTABLE                         R17 0 0
     1816 MOVE                             R19 R18
     1817 LOADNIL                          R20
     1818 LOADNIL                          R21
     1819 FORGPREP                         R19
     1820 LOADK                            R24 K123 ["running"]
     1821 SETTABLE                         R24 R17 R23
     1822 FORGLOOP                         R19 2 ; [-3]
     1824 NEWTABLE                         R19 0 1
     1826 LOADK                            R20 K108 ["segment_propagate_3d:tops"]
     1827 SETLIST                          R19 R20 1 [1]
     1829 NEWTABLE                         R18 0 0
     1831 MOVE                             R20 R19
     1832 LOADNIL                          R21
     1833 LOADNIL                          R22
     1834 FORGPREP                         R20
     1835 LOADK                            R25 K158 ["completed"]
     1836 SETTABLE                         R25 R18 R24
     1837 FORGLOOP                         R20 2 ; [-3]
     1839 GETIMPORT                        R19 K180 [table.clone]
     1841 MOVE                             R20 R17
     1842 CALL                             R19 1 1
     1843 MOVE                             R16 R19
     1844 MOVE                             R19 R18
     1845 LOADNIL                          R20
     1846 LOADNIL                          R21
     1847 FORGPREP                         R19
     1848 JUMPIFEQKS                       R23 K123 ["running"] ; [+3]
     1850 JUMPIFNOTEQKS                    R23 K158 ["completed"] ; [+2]
     1852 SETTABLE                         R23 R16 R22
     1853 FORGLOOP                         R19 2 ; [-6]
     1855 SETTABLEKS                       R16 R15 K120 ["updates"]
     1857 NEWTABLE                         R16 0 3
     1859 DUPTABLE                         R17 K470 [{["Node"] = "align_body:tops", ["Text"] = "Still on align body:tops (55s in) — another pass before we move on."}]
     1860 DUPTABLE                         R18 K472 [{["Node"] = "segment_propagate_3d:tops", ["Text"] = "Hanging in on segment propagate 3d:tops; this pass is running long."}]
     1861 DUPTABLE                         R19 K473 [{["Node"] = "fit_parts:tops", ["Text"] = "Getting garments onto the body."}]
     1862 SETLIST                          R16 R17 3 [1]
     1864 SETTABLEKS                       R16 R15 K121 ["thoughts"]
     1866 DUPTABLE                         R16 K474 [{["delaySeconds"] = 0.6, ["progress"] = 0.8, ["step"] = "align_body:tops", ["thoughts"]}]
     1867 NEWTABLE                         R17 0 1
     1869 DUPTABLE                         R18 K476 [{["Node"] = "fit_parts:bottoms", ["Text"] = "Still on fit parts:bottoms (40s in) — checking that the form is landing cleanly."}]
     1870 SETLIST                          R17 R18 1 [1]
     1872 SETTABLEKS                       R17 R16 K121 ["thoughts"]
     1874 DUPTABLE                         R17 K474 [{["delaySeconds"] = 0.6, ["progress"] = 0.8, ["step"] = "align_body:tops", ["thoughts"]}]
     1875 NEWTABLE                         R18 0 1
     1877 DUPTABLE                         R19 K477 [{["Node"] = "fit_parts:tops", ["Text"] = "Nudge the pieces so they don't collide."}]
     1878 SETLIST                          R18 R19 1 [1]
     1880 SETTABLEKS                       R18 R17 K121 ["thoughts"]
     1882 DUPTABLE                         R18 K478 [{["delaySeconds"] = 0.6, ["progress"] = 0.8, ["step"] = "fit_parts:bottoms", ["thoughts"]}]
     1883 NEWTABLE                         R19 0 1
     1885 DUPTABLE                         R20 K480 [{["Node"] = "align_body:tops", ["Text"] = "Hanging in on align body:tops; this pass is running long."}]
     1886 SETLIST                          R19 R20 1 [1]
     1888 SETTABLEKS                       R19 R18 K121 ["thoughts"]
     1890 DUPTABLE                         R19 K482 [{["delaySeconds"] = 0.6, ["progress"] = 0.82, ["step"] = "intersection_fixing:bottoms", ["updates"], ["thoughts"]}]
     1891 NEWTABLE                         R22 0 1
     1893 LOADK                            R23 K31 ["intersection_fixing:bottoms"]
     1894 SETLIST                          R22 R23 1 [1]
     1896 NEWTABLE                         R21 0 0
     1898 MOVE                             R23 R22
     1899 LOADNIL                          R24
     1900 LOADNIL                          R25
     1901 FORGPREP                         R23
     1902 LOADK                            R28 K123 ["running"]
     1903 SETTABLE                         R28 R21 R27
     1904 FORGLOOP                         R23 2 ; [-3]
     1906 NEWTABLE                         R23 0 1
     1908 LOADK                            R24 K28 ["fit_parts:bottoms"]
     1909 SETLIST                          R23 R24 1 [1]
     1911 NEWTABLE                         R22 0 0
     1913 MOVE                             R24 R23
     1914 LOADNIL                          R25
     1915 LOADNIL                          R26
     1916 FORGPREP                         R24
     1917 LOADK                            R29 K158 ["completed"]
     1918 SETTABLE                         R29 R22 R28
     1919 FORGLOOP                         R24 2 ; [-3]
     1921 GETIMPORT                        R23 K180 [table.clone]
     1923 MOVE                             R24 R21
     1924 CALL                             R23 1 1
     1925 MOVE                             R20 R23
     1926 MOVE                             R23 R22
     1927 LOADNIL                          R24
     1928 LOADNIL                          R25
     1929 FORGPREP                         R23
     1930 JUMPIFEQKS                       R27 K123 ["running"] ; [+3]
     1932 JUMPIFNOTEQKS                    R27 K158 ["completed"] ; [+2]
     1934 SETTABLE                         R27 R20 R26
     1935 FORGLOOP                         R23 2 ; [-6]
     1937 SETTABLEKS                       R20 R19 K120 ["updates"]
     1939 NEWTABLE                         R20 0 1
     1941 DUPTABLE                         R21 K483 [{["Node"] = "intersection_fixing:bottoms", ["Text"] = "Cleaning intersections between clothes and body."}]
     1942 SETLIST                          R20 R21 1 [1]
     1944 SETTABLEKS                       R20 R19 K121 ["thoughts"]
     1946 SETLIST                          R3 R4 16 [49]
     1948 DUPTABLE                         R4 K485 [{["delaySeconds"] = 0.6, ["progress"] = 0.85, ["step"] = "cage_body:tops", ["updates"], ["thoughts"]}]
     1949 NEWTABLE                         R7 0 1
     1951 LOADK                            R8 K92 ["cage_body:tops"]
     1952 SETLIST                          R7 R8 1 [1]
     1954 NEWTABLE                         R6 0 0
     1956 MOVE                             R8 R7
     1957 LOADNIL                          R9
     1958 LOADNIL                          R10
     1959 FORGPREP                         R8
     1960 LOADK                            R13 K123 ["running"]
     1961 SETTABLE                         R13 R6 R12
     1962 FORGLOOP                         R8 2 ; [-3]
     1964 NEWTABLE                         R8 0 1
     1966 LOADK                            R9 K90 ["align_body:tops"]
     1967 SETLIST                          R8 R9 1 [1]
     1969 NEWTABLE                         R7 0 0
     1971 MOVE                             R9 R8
     1972 LOADNIL                          R10
     1973 LOADNIL                          R11
     1974 FORGPREP                         R9
     1975 LOADK                            R14 K158 ["completed"]
     1976 SETTABLE                         R14 R7 R13
     1977 FORGLOOP                         R9 2 ; [-3]
     1979 GETIMPORT                        R8 K180 [table.clone]
     1981 MOVE                             R9 R6
     1982 CALL                             R8 1 1
     1983 MOVE                             R5 R8
     1984 MOVE                             R8 R7
     1985 LOADNIL                          R9
     1986 LOADNIL                          R10
     1987 FORGPREP                         R8
     1988 JUMPIFEQKS                       R12 K123 ["running"] ; [+3]
     1990 JUMPIFNOTEQKS                    R12 K158 ["completed"] ; [+2]
     1992 SETTABLE                         R12 R5 R11
     1993 FORGLOOP                         R8 2 ; [-6]
     1995 SETTABLEKS                       R5 R4 K120 ["updates"]
     1997 NEWTABLE                         R5 0 2
     1999 DUPTABLE                         R6 K486 [{["Node"] = "fit_parts:tops", ["Text"] = "Tucking clothes into a pose you could actually wear."}]
     2000 DUPTABLE                         R7 K487 [{["Node"] = "cage_body:tops", ["Text"] = "Wrapping a cage around the body."}]
     2001 SETLIST                          R5 R6 2 [1]
     2003 SETTABLEKS                       R5 R4 K121 ["thoughts"]
     2005 DUPTABLE                         R5 K488 [{["delaySeconds"] = 0.6, ["progress"] = 0.85, ["step"] = "intersection_fixing:bottoms", ["thoughts"]}]
     2006 NEWTABLE                         R6 0 1
     2008 DUPTABLE                         R7 K489 [{["Node"] = "intersection_fixing:bottoms", ["Text"] = "Still pulling overlapping geo apart."}]
     2009 SETLIST                          R6 R7 1 [1]
     2011 SETTABLEKS                       R6 R5 K121 ["thoughts"]
     2013 DUPTABLE                         R6 K490 [{["delaySeconds"] = 1.2, ["progress"] = 0.85, ["step"] = "intersection_fixing:bottoms", ["thoughts"]}]
     2014 NEWTABLE                         R7 0 3
     2016 DUPTABLE                         R8 K492 [{["Node"] = "fit_parts:tops", ["Text"] = "Still on fit parts:tops (40s in) — checking that the form is landing cleanly."}]
     2017 DUPTABLE                         R9 K494 [{["Node"] = "intersection_fixing:bottoms", ["Text"] = "Still on intersection fixing:bottoms (24s in) — hanging in — good work doesn't rush."}]
     2018 DUPTABLE                         R10 K495 [{["Node"] = "cage_body:tops", ["Text"] = "Still fitting the cage to the mesh."}]
     2019 SETLIST                          R7 R8 3 [1]
     2021 SETTABLEKS                       R7 R6 K121 ["thoughts"]
     2023 DUPTABLE                         R7 K497 [{["delaySeconds"] = 0.6, ["progress"] = 0.87, ["step"] = "intersection_fixing:bottoms", ["updates"]}]
     2024 NEWTABLE                         R9 0 2
     2026 LOADK                            R10 K31 ["intersection_fixing:bottoms"]
     2027 LOADK                            R11 K94 ["fit_parts:tops"]
     2028 SETLIST                          R9 R10 2 [1]
     2030 NEWTABLE                         R8 0 0
     2032 MOVE                             R10 R9
     2033 LOADNIL                          R11
     2034 LOADNIL                          R12
     2035 FORGPREP                         R10
     2036 LOADK                            R15 K158 ["completed"]
     2037 SETTABLE                         R15 R8 R14
     2038 FORGLOOP                         R10 2 ; [-3]
     2040 SETTABLEKS                       R8 R7 K120 ["updates"]
     2042 DUPTABLE                         R8 K499 [{["delaySeconds"] = 0.6, ["progress"] = 0.89, ["step"] = "intersection_fixing:tops", ["updates"], ["thoughts"]}]
     2043 NEWTABLE                         R10 0 2
     2045 LOADK                            R11 K38 ["prep_autosetup:bottoms"]
     2046 LOADK                            R12 K96 ["intersection_fixing:tops"]
     2047 SETLIST                          R10 R11 2 [1]
     2049 NEWTABLE                         R9 0 0
     2051 MOVE                             R11 R10
     2052 LOADNIL                          R12
     2053 LOADNIL                          R13
     2054 FORGPREP                         R11
     2055 LOADK                            R16 K123 ["running"]
     2056 SETTABLE                         R16 R9 R15
     2057 FORGLOOP                         R11 2 ; [-3]
     2059 SETTABLEKS                       R9 R8 K120 ["updates"]
     2061 NEWTABLE                         R9 0 3
     2063 DUPTABLE                         R10 K500 [{["Node"] = "cage_body:tops", ["Text"] = "A last tighten on the cage."}]
     2064 DUPTABLE                         R11 K501 [{["Node"] = "intersection_fixing:tops", ["Text"] = "Cleaning intersections between clothes and body."}]
     2065 DUPTABLE                         R12 K502 [{["Node"] = "prep_autosetup:bottoms", ["Text"] = "Getting meshes ready for autosetup."}]
     2066 SETLIST                          R9 R10 3 [1]
     2068 SETTABLEKS                       R9 R8 K121 ["thoughts"]
     2070 DUPTABLE                         R9 K503 [{["delaySeconds"] = 0.6, ["progress"] = 0.89, ["step"] = "intersection_fixing:tops", ["thoughts"]}]
     2071 NEWTABLE                         R10 0 1
     2073 DUPTABLE                         R11 K504 [{["Node"] = "intersection_fixing:tops", ["Text"] = "Still pulling overlapping geo apart."}]
     2074 SETLIST                          R10 R11 1 [1]
     2076 SETTABLEKS                       R10 R9 K121 ["thoughts"]
     2078 DUPTABLE                         R10 K506 [{["delaySeconds"] = 0.6, ["progress"] = 0.9, ["step"] = "cage_body:tops", ["updates"], ["thoughts"]}]
     2079 NEWTABLE                         R12 0 1
     2081 LOADK                            R13 K92 ["cage_body:tops"]
     2082 SETLIST                          R12 R13 1 [1]
     2084 NEWTABLE                         R11 0 0
     2086 MOVE                             R13 R12
     2087 LOADNIL                          R14
     2088 LOADNIL                          R15
     2089 FORGPREP                         R13
     2090 LOADK                            R18 K158 ["completed"]
     2091 SETTABLE                         R18 R11 R17
     2092 FORGLOOP                         R13 2 ; [-3]
     2094 SETTABLEKS                       R11 R10 K120 ["updates"]
     2096 NEWTABLE                         R11 0 1
     2098 DUPTABLE                         R12 K508 [{["Node"] = "prep_autosetup:bottoms", ["Text"] = "Still on prep autosetup:bottoms (12s in) — still in the middle of the interesting part."}]
     2099 SETLIST                          R11 R12 1 [1]
     2101 SETTABLEKS                       R11 R10 K121 ["thoughts"]
     2103 DUPTABLE                         R11 K509 [{["delaySeconds"] = 0.6, ["progress"] = 0.9, ["step"] = "intersection_fixing:tops", ["updates"]}]
     2104 NEWTABLE                         R13 0 1
     2106 LOADK                            R14 K38 ["prep_autosetup:bottoms"]
     2107 SETLIST                          R13 R14 1 [1]
     2109 NEWTABLE                         R12 0 0
     2111 MOVE                             R14 R13
     2112 LOADNIL                          R15
     2113 LOADNIL                          R16
     2114 FORGPREP                         R14
     2115 LOADK                            R19 K158 ["completed"]
     2116 SETTABLE                         R19 R12 R18
     2117 FORGLOOP                         R14 2 ; [-3]
     2119 SETTABLEKS                       R12 R11 K120 ["updates"]
     2121 DUPTABLE                         R12 K510 [{["delaySeconds"] = 0.6, ["progress"] = 0.9, ["step"] = "intersection_fixing:tops", ["thoughts"]}]
     2122 NEWTABLE                         R13 0 1
     2124 DUPTABLE                         R14 K512 [{["Node"] = "intersection_fixing:tops", ["Text"] = "Still on intersection fixing:tops (24s in) — hanging in — good work doesn't rush."}]
     2125 SETLIST                          R13 R14 1 [1]
     2127 SETTABLEKS                       R13 R12 K121 ["thoughts"]
     2129 DUPTABLE                         R13 K510 [{["delaySeconds"] = 0.6, ["progress"] = 0.9, ["step"] = "intersection_fixing:tops", ["thoughts"]}]
     2130 NEWTABLE                         R14 0 1
     2132 DUPTABLE                         R15 K514 [{["Node"] = "intersection_fixing:tops", ["Text"] = "Hanging in on intersection fixing:tops; this pass is running long."}]
     2133 SETLIST                          R14 R15 1 [1]
     2135 SETTABLEKS                       R14 R13 K121 ["thoughts"]
     2137 DUPTABLE                         R14 K516 [{["delaySeconds"] = 0.6, ["progress"] = 0.91, ["step"] = "intersection_fixing:tops", ["updates"]}]
     2138 NEWTABLE                         R16 0 1
     2140 LOADK                            R17 K96 ["intersection_fixing:tops"]
     2141 SETLIST                          R16 R17 1 [1]
     2143 NEWTABLE                         R15 0 0
     2145 MOVE                             R17 R16
     2146 LOADNIL                          R18
     2147 LOADNIL                          R19
     2148 FORGPREP                         R17
     2149 LOADK                            R22 K158 ["completed"]
     2150 SETTABLE                         R22 R15 R21
     2151 FORGLOOP                         R17 2 ; [-3]
     2153 SETTABLEKS                       R15 R14 K120 ["updates"]
     2155 DUPTABLE                         R15 K518 [{["delaySeconds"] = 0.6, ["progress"] = 0.92, ["step"] = "prep_autosetup:tops", ["updates"], ["thoughts"]}]
     2156 NEWTABLE                         R17 0 1
     2158 LOADK                            R18 K102 ["prep_autosetup:tops"]
     2159 SETLIST                          R17 R18 1 [1]
     2161 NEWTABLE                         R16 0 0
     2163 MOVE                             R18 R17
     2164 LOADNIL                          R19
     2165 LOADNIL                          R20
     2166 FORGPREP                         R18
     2167 LOADK                            R23 K123 ["running"]
     2168 SETTABLE                         R23 R16 R22
     2169 FORGLOOP                         R18 2 ; [-3]
     2171 SETTABLEKS                       R16 R15 K120 ["updates"]
     2173 NEWTABLE                         R16 0 1
     2175 DUPTABLE                         R17 K519 [{["Node"] = "prep_autosetup:tops", ["Text"] = "Getting meshes ready for autosetup."}]
     2176 SETLIST                          R16 R17 1 [1]
     2178 SETTABLEKS                       R16 R15 K121 ["thoughts"]
     2180 DUPTABLE                         R16 K520 [{["delaySeconds"] = 0.6, ["progress"] = 0.92, ["step"] = "prep_autosetup:tops", ["thoughts"]}]
     2181 NEWTABLE                         R17 0 1
     2183 DUPTABLE                         R18 K522 [{["Node"] = "prep_autosetup:tops", ["Text"] = "Still on prep autosetup:tops (12s in) — still in the middle of the interesting part."}]
     2184 SETLIST                          R17 R18 1 [1]
     2186 SETTABLEKS                       R17 R16 K121 ["thoughts"]
     2188 DUPTABLE                         R17 K523 [{["delaySeconds"] = 0.6, ["progress"] = 0.92, ["step"] = "prep_autosetup:tops", ["updates"]}]
     2189 NEWTABLE                         R19 0 1
     2191 LOADK                            R20 K102 ["prep_autosetup:tops"]
     2192 SETLIST                          R19 R20 1 [1]
     2194 NEWTABLE                         R18 0 0
     2196 MOVE                             R20 R19
     2197 LOADNIL                          R21
     2198 LOADNIL                          R22
     2199 FORGPREP                         R20
     2200 LOADK                            R25 K158 ["completed"]
     2201 SETTABLE                         R25 R18 R24
     2202 FORGLOOP                         R20 2 ; [-3]
     2204 SETTABLEKS                       R18 R17 K120 ["updates"]
     2206 DUPTABLE                         R18 K526 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["updates"], ["thoughts"]}]
     2207 NEWTABLE                         R20 0 1
     2209 LOADK                            R21 K9 ["clothing_autosetup"]
     2210 SETLIST                          R20 R21 1 [1]
     2212 NEWTABLE                         R19 0 0
     2214 MOVE                             R21 R20
     2215 LOADNIL                          R22
     2216 LOADNIL                          R23
     2217 FORGPREP                         R21
     2218 LOADK                            R26 K123 ["running"]
     2219 SETTABLE                         R26 R19 R25
     2220 FORGLOOP                         R21 2 ; [-3]
     2222 SETTABLEKS                       R19 R18 K120 ["updates"]
     2224 NEWTABLE                         R19 0 1
     2226 DUPTABLE                         R20 K528 [{["Node"] = "clothing_autosetup", ["Text"] = "Still binding the garments."}]
     2227 SETLIST                          R19 R20 1 [1]
     2229 SETTABLEKS                       R19 R18 K121 ["thoughts"]
     2231 DUPTABLE                         R19 K529 [{["delaySeconds"] = 1.2, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2232 NEWTABLE                         R20 0 1
     2234 DUPTABLE                         R21 K531 [{["Node"] = "clothing_autosetup", ["Text"] = "Garments going onto the body."}]
     2235 SETLIST                          R20 R21 1 [1]
     2237 SETTABLEKS                       R20 R19 K121 ["thoughts"]
     2239 SETLIST                          R3 R4 16 [65]
     2241 DUPTABLE                         R4 K532 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2242 NEWTABLE                         R5 0 1
     2244 DUPTABLE                         R6 K534 [{["Node"] = "clothing_autosetup", ["Text"] = "Shirts and pants should follow the torso."}]
     2245 SETLIST                          R5 R6 1 [1]
     2247 SETTABLEKS                       R5 R4 K121 ["thoughts"]
     2249 DUPTABLE                         R5 K532 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2250 NEWTABLE                         R6 0 1
     2252 DUPTABLE                         R7 K536 [{["Node"] = "clothing_autosetup", ["Text"] = "A clip check for movement."}]
     2253 SETLIST                          R6 R7 1 [1]
     2255 SETTABLEKS                       R6 R5 K121 ["thoughts"]
     2257 DUPTABLE                         R6 K532 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2258 NEWTABLE                         R7 0 1
     2260 DUPTABLE                         R8 K538 [{["Node"] = "clothing_autosetup", ["Text"] = "Skinning the clothes at the joints."}]
     2261 SETLIST                          R7 R8 1 [1]
     2263 SETTABLEKS                       R7 R6 K121 ["thoughts"]
     2265 DUPTABLE                         R7 K529 [{["delaySeconds"] = 1.2, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2266 NEWTABLE                         R8 0 1
     2268 DUPTABLE                         R9 K540 [{["Node"] = "clothing_autosetup", ["Text"] = "Sleeves and hems getting a fit pass."}]
     2269 SETLIST                          R8 R9 1 [1]
     2271 SETTABLEKS                       R8 R7 K121 ["thoughts"]
     2273 DUPTABLE                         R8 K532 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2274 NEWTABLE                         R9 0 1
     2276 DUPTABLE                         R10 K542 [{["Node"] = "clothing_autosetup", ["Text"] = "Clothing setup is wrapping up."}]
     2277 SETLIST                          R9 R10 1 [1]
     2279 SETTABLEKS                       R9 R8 K121 ["thoughts"]
     2281 DUPTABLE                         R9 K532 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2282 NEWTABLE                         R10 0 1
     2284 DUPTABLE                         R11 K544 [{["Node"] = "clothing_autosetup", ["Text"] = "Hanging in on clothing autosetup; this pass is running long."}]
     2285 SETLIST                          R10 R11 1 [1]
     2287 SETTABLEKS                       R10 R9 K121 ["thoughts"]
     2289 DUPTABLE                         R10 K529 [{["delaySeconds"] = 1.2, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2290 NEWTABLE                         R11 0 1
     2292 DUPTABLE                         R12 K546 [{["Node"] = "clothing_autosetup", ["Text"] = "Still on clothing autosetup after the typical wait."}]
     2293 SETLIST                          R11 R12 1 [1]
     2295 SETTABLEKS                       R11 R10 K121 ["thoughts"]
     2297 DUPTABLE                         R11 K532 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2298 NEWTABLE                         R12 0 1
     2300 DUPTABLE                         R13 K548 [{["Node"] = "clothing_autosetup", ["Text"] = "Still working through clothing autosetup — it's a long one."}]
     2301 SETLIST                          R12 R13 1 [1]
     2303 SETTABLEKS                       R12 R11 K121 ["thoughts"]
     2305 DUPTABLE                         R12 K532 [{["delaySeconds"] = 1.8, ["progress"] = 0.95, ["step"] = "clothing_autosetup", ["thoughts"]}]
     2306 NEWTABLE                         R13 0 1
     2308 DUPTABLE                         R14 K550 [{["Node"] = "clothing_autosetup", ["Text"] = "Not done with clothing autosetup yet — longer than the typical pass."}]
     2309 SETLIST                          R13 R14 1 [1]
     2311 SETTABLEKS                       R13 R12 K121 ["thoughts"]
     2313 DUPTABLE                         R13 K552 [{["delaySeconds"] = 1.8, ["progress"] = 0.97, ["step"] = "clothing_autosetup", ["updates"]}]
     2314 NEWTABLE                         R15 0 1
     2316 LOADK                            R16 K9 ["clothing_autosetup"]
     2317 SETLIST                          R15 R16 1 [1]
     2319 NEWTABLE                         R14 0 0
     2321 MOVE                             R16 R15
     2322 LOADNIL                          R17
     2323 LOADNIL                          R18
     2324 FORGPREP                         R16
     2325 LOADK                            R21 K158 ["completed"]
     2326 SETTABLE                         R21 R14 R20
     2327 FORGLOOP                         R16 2 ; [-3]
     2329 SETTABLEKS                       R14 R13 K120 ["updates"]
     2331 DUPTABLE                         R14 K554 [{["delaySeconds"] = 2.3, ["progress"] = 0.97, ["step"] = "export", ["updates"], ["thoughts"]}]
     2332 NEWTABLE                         R16 0 1
     2334 LOADK                            R17 K11 ["export"]
     2335 SETLIST                          R16 R17 1 [1]
     2337 NEWTABLE                         R15 0 0
     2339 MOVE                             R17 R16
     2340 LOADNIL                          R18
     2341 LOADNIL                          R19
     2342 FORGPREP                         R17
     2343 LOADK                            R22 K123 ["running"]
     2344 SETTABLE                         R22 R15 R21
     2345 FORGLOOP                         R17 2 ; [-3]
     2347 SETTABLEKS                       R15 R14 K120 ["updates"]
     2349 NEWTABLE                         R15 0 1
     2351 DUPTABLE                         R16 K556 [{["Node"] = "export", ["Text"] = "Should be wrapping export soon; it's past the usual mark."}]
     2352 SETLIST                          R15 R16 1 [1]
     2354 SETTABLEKS                       R15 R14 K121 ["thoughts"]
     2356 DUPTABLE                         R15 K557 [{["delaySeconds"] = 1.8, ["progress"] = 0.97, ["step"] = "export", ["thoughts"]}]
     2357 NEWTABLE                         R16 0 1
     2359 DUPTABLE                         R17 K559 [{["Node"] = "export", ["Text"] = "Holding for export a little longer than the usual cadence."}]
     2360 SETLIST                          R16 R17 1 [1]
     2362 SETTABLEKS                       R16 R15 K121 ["thoughts"]
     2364 DUPTABLE                         R16 K562 [{["delaySeconds"] = 2.3, ["progress"] = 1, ["clearDetails"] = True}]
     2365 SETLIST                          R3 R4 13 [81]
     2367 DUPTABLE                         R4 K565 [{"nodes", "snapshots"}]
     2368 SETTABLEKS                       R0 R4 K563 ["nodes"]
     2370 SETTABLEKS                       R3 R4 K564 ["snapshots"]
     2372 RETURN                           R4 1
