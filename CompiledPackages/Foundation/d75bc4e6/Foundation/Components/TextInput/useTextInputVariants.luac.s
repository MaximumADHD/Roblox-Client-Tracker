PROTO_0:
        0 DUPTABLE                         R1 K6 [{"canvas", "outerContainer", "innerContainer", "outerView", "textBox", "icon"}]
        1 DUPTABLE                         R2 K8 [{"tag"}]
        2 GETTABLEKS                       R3 R0 K9 ["canvasTag"]
        4 SETTABLEKS                       R3 R2 K7 ["tag"]
        6 SETTABLEKS                       R2 R1 K0 ["canvas"]
        8 DUPTABLE                         R2 K11 [{"tag", "minHeight"}]
        9 GETTABLEKS                       R3 R0 K12 ["outerContainerTag"]
       11 SETTABLEKS                       R3 R2 K7 ["tag"]
       13 GETTABLEKS                       R3 R0 K13 ["minContainerHeight"]
       15 SETTABLEKS                       R3 R2 K10 ["minHeight"]
       17 SETTABLEKS                       R2 R1 K1 ["outerContainer"]
       19 DUPTABLE                         R2 K17 [{"tag", "horizontalPadding", "gap", "radius"}]
       20 GETTABLEKS                       R3 R0 K18 ["innerContainerTag"]
       22 SETTABLEKS                       R3 R2 K7 ["tag"]
       24 GETIMPORT                        R3 K21 [UDim.new]
       26 LOADN                            R4 0
       27 GETTABLEKS                       R5 R0 K14 ["horizontalPadding"]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R2 K14 ["horizontalPadding"]
       32 GETTABLEKS                       R3 R0 K15 ["gap"]
       34 SETTABLEKS                       R3 R2 K15 ["gap"]
       36 GETTABLEKS                       R3 R0 K16 ["radius"]
       38 SETTABLEKS                       R3 R2 K16 ["radius"]
       40 SETTABLEKS                       R2 R1 K2 ["innerContainer"]
       42 DUPTABLE                         R2 K8 [{"tag"}]
       43 GETTABLEKS                       R3 R0 K22 ["outerViewTag"]
       45 SETTABLEKS                       R3 R2 K7 ["tag"]
       47 SETTABLEKS                       R2 R1 K3 ["outerView"]
       49 DUPTABLE                         R2 K24 [{"tag", "fontStyle"}]
       50 GETTABLEKS                       R3 R0 K25 ["textBoxTag"]
       52 SETTABLEKS                       R3 R2 K7 ["tag"]
       54 GETTABLEKS                       R3 R0 K26 ["typography"]
       56 SETTABLEKS                       R3 R2 K23 ["fontStyle"]
       58 SETTABLEKS                       R2 R1 K4 ["textBox"]
       60 DUPTABLE                         R2 K28 [{"size"}]
       61 GETTABLEKS                       R3 R0 K29 ["iconSize"]
       63 SETTABLEKS                       R3 R2 K27 ["size"]
       65 SETTABLEKS                       R2 R1 K5 ["icon"]
       67 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K5 [{"outerContainer", "innerContainer", "outerView", "textBox", "icon"}]
        1 DUPTABLE                         R2 K7 [{"tag"}]
        2 LOADK                            R3 K8 ["bg-shift-100"]
        3 SETTABLEKS                       R3 R2 K6 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["outerContainer"]
        7 DUPTABLE                         R2 K7 [{"tag"}]
        8 LOADK                            R3 K9 ["row align-y-center"]
        9 SETTABLEKS                       R3 R2 K6 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["innerContainer"]
       13 DUPTABLE                         R2 K13 [{"bgStyle", "strokeStyle", "strokeThickness", "tag"}]
       14 GETTABLEKS                       R5 R0 K14 ["Color"]
       16 GETTABLEKS                       R4 R5 K15 ["Shift"]
       18 GETTABLEKS                       R3 R4 K16 ["Shift_100"]
       20 SETTABLEKS                       R3 R2 K10 ["bgStyle"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K17 ["FoundationTextInputAlignStrokeBehavior"]
       25 JUMPIFNOT                        R4 ; [+7]
       26 GETTABLEKS                       R5 R0 K14 ["Color"]
       28 GETTABLEKS                       R4 R5 K18 ["Stroke"]
       30 GETTABLEKS                       R3 R4 K19 ["Emphasis"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R3
       34 SETTABLEKS                       R3 R2 K11 ["strokeStyle"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K17 ["FoundationTextInputAlignStrokeBehavior"]
       39 JUMPIFNOT                        R4 ; [+5]
       40 GETTABLEKS                       R4 R0 K18 ["Stroke"]
       42 GETTABLEKS                       R3 R4 K20 ["Standard"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R3
       46 SETTABLEKS                       R3 R2 K12 ["strokeThickness"]
       48 LOADK                            R3 K9 ["row align-y-center"]
       49 SETTABLEKS                       R3 R2 K6 ["tag"]
       51 SETTABLEKS                       R2 R1 K2 ["outerView"]
       53 DUPTABLE                         R2 K7 [{"tag"}]
       54 LOADK                            R3 K21 ["gui-object-defaults clip text-align-x-left text-align-y-center content-emphasis"]
       55 SETTABLEKS                       R3 R2 K6 ["tag"]
       57 SETTABLEKS                       R2 R1 K3 ["textBox"]
       59 DUPTABLE                         R2 K23 [{"style"}]
       60 GETTABLEKS                       R5 R0 K14 ["Color"]
       62 GETTABLEKS                       R4 R5 K24 ["Content"]
       64 GETTABLEKS                       R3 R4 K25 ["Muted"]
       66 SETTABLEKS                       R3 R2 K22 ["style"]
       68 SETTABLEKS                       R2 R1 K4 ["icon"]
       70 DUPTABLE                         R2 K27 [{"canvas", "outerContainer"}]
       71 DUPTABLE                         R3 K7 [{"tag"}]
       72 LOADK                            R4 K28 ["size-full-0"]
       73 SETTABLEKS                       R4 R3 K6 ["tag"]
       75 SETTABLEKS                       R3 R2 K26 ["canvas"]
       77 DUPTABLE                         R3 K7 [{"tag"}]
       78 LOADK                            R4 K28 ["size-full-0"]
       79 SETTABLEKS                       R4 R3 K6 ["tag"]
       81 SETTABLEKS                       R3 R2 K0 ["outerContainer"]
       83 NEWTABLE                         R3 4 0
       85 GETUPVAL                         R5 1
       86 GETTABLEKS                       R4 R5 K29 ["XSmall"]
       88 GETUPVAL                         R5 2
       89 DUPTABLE                         R6 K41 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
       90 LOADK                            R7 K42 ["size-full-600"]
       91 SETTABLEKS                       R7 R6 K30 ["canvasTag"]
       93 LOADK                            R7 K43 ["radius-small"]
       94 SETTABLEKS                       R7 R6 K31 ["outerContainerTag"]
       96 GETTABLEKS                       R8 R0 K44 ["Radius"]
       98 GETTABLEKS                       R7 R8 K45 ["Small"]
      100 SETTABLEKS                       R7 R6 K32 ["radius"]
      102 LOADK                            R7 K46 ["gap-small"]
      103 SETTABLEKS                       R7 R6 K33 ["innerContainerTag"]
      105 NEWTABLE                         R7 2 0
      107 GETUPVAL                         R10 0
      108 GETTABLEKS                       R9 R10 K47 ["FoundationInternalTextInputCornerRadius"]
      110 NOT                              R8 R9
      111 SETTABLEKS                       R8 R7 K48 ["size-full-600 radius-small gap-small"]
      113 GETUPVAL                         R9 0
      114 GETTABLEKS                       R8 R9 K47 ["FoundationInternalTextInputCornerRadius"]
      116 SETTABLEKS                       R8 R7 K49 ["size-full-600 gap-small"]
      118 SETTABLEKS                       R7 R6 K34 ["outerViewTag"]
      120 GETTABLEKS                       R8 R0 K50 ["Padding"]
      122 GETTABLEKS                       R7 R8 K29 ["XSmall"]
      124 SETTABLEKS                       R7 R6 K35 ["horizontalPadding"]
      126 GETTABLEKS                       R8 R0 K51 ["Gap"]
      128 GETTABLEKS                       R7 R8 K45 ["Small"]
      130 SETTABLEKS                       R7 R6 K36 ["gap"]
      132 LOADK                            R7 K52 ["text-body-small"]
      133 SETTABLEKS                       R7 R6 K37 ["textBoxTag"]
      135 GETTABLEKS                       R8 R0 K53 ["Typography"]
      137 GETTABLEKS                       R7 R8 K54 ["BodySmall"]
      139 SETTABLEKS                       R7 R6 K38 ["typography"]
      141 GETUPVAL                         R8 3
      142 GETTABLEKS                       R7 R8 K29 ["XSmall"]
      144 SETTABLEKS                       R7 R6 K39 ["iconSize"]
      146 GETTABLEKS                       R8 R0 K55 ["Size"]
      148 GETTABLEKS                       R7 R8 K56 ["Size_600"]
      150 SETTABLEKS                       R7 R6 K40 ["minContainerHeight"]
      152 CALL                             R5 1 1
      153 SETTABLE                         R5 R3 R4
      154 GETUPVAL                         R5 1
      155 GETTABLEKS                       R4 R5 K45 ["Small"]
      157 GETUPVAL                         R5 2
      158 DUPTABLE                         R6 K41 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      159 LOADK                            R7 K57 ["size-full-800"]
      160 SETTABLEKS                       R7 R6 K30 ["canvasTag"]
      162 LOADK                            R7 K58 ["radius-medium"]
      163 SETTABLEKS                       R7 R6 K31 ["outerContainerTag"]
      165 GETTABLEKS                       R8 R0 K44 ["Radius"]
      167 GETTABLEKS                       R7 R8 K59 ["Medium"]
      169 SETTABLEKS                       R7 R6 K32 ["radius"]
      171 LOADK                            R7 K60 ["gap-medium"]
      172 SETTABLEKS                       R7 R6 K33 ["innerContainerTag"]
      174 NEWTABLE                         R7 2 0
      176 GETUPVAL                         R10 0
      177 GETTABLEKS                       R9 R10 K47 ["FoundationInternalTextInputCornerRadius"]
      179 NOT                              R8 R9
      180 SETTABLEKS                       R8 R7 K61 ["size-full-800 radius-medium gap-medium"]
      182 GETUPVAL                         R9 0
      183 GETTABLEKS                       R8 R9 K47 ["FoundationInternalTextInputCornerRadius"]
      185 SETTABLEKS                       R8 R7 K62 ["size-full-800 gap-medium"]
      187 SETTABLEKS                       R7 R6 K34 ["outerViewTag"]
      189 GETTABLEKS                       R8 R0 K50 ["Padding"]
      191 GETTABLEKS                       R7 R8 K45 ["Small"]
      193 SETTABLEKS                       R7 R6 K35 ["horizontalPadding"]
      195 GETTABLEKS                       R8 R0 K51 ["Gap"]
      197 GETTABLEKS                       R7 R8 K59 ["Medium"]
      199 SETTABLEKS                       R7 R6 K36 ["gap"]
      201 LOADK                            R7 K63 ["text-body-medium"]
      202 SETTABLEKS                       R7 R6 K37 ["textBoxTag"]
      204 GETTABLEKS                       R8 R0 K53 ["Typography"]
      206 GETTABLEKS                       R7 R8 K64 ["BodyMedium"]
      208 SETTABLEKS                       R7 R6 K38 ["typography"]
      210 GETUPVAL                         R8 3
      211 GETTABLEKS                       R7 R8 K29 ["XSmall"]
      213 SETTABLEKS                       R7 R6 K39 ["iconSize"]
      215 GETTABLEKS                       R8 R0 K55 ["Size"]
      217 GETTABLEKS                       R7 R8 K65 ["Size_800"]
      219 SETTABLEKS                       R7 R6 K40 ["minContainerHeight"]
      221 CALL                             R5 1 1
      222 SETTABLE                         R5 R3 R4
      223 GETUPVAL                         R5 1
      224 GETTABLEKS                       R4 R5 K59 ["Medium"]
      226 GETUPVAL                         R5 2
      227 DUPTABLE                         R6 K41 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      228 LOADK                            R7 K66 ["size-full-1000"]
      229 SETTABLEKS                       R7 R6 K30 ["canvasTag"]
      231 LOADK                            R7 K58 ["radius-medium"]
      232 SETTABLEKS                       R7 R6 K31 ["outerContainerTag"]
      234 GETTABLEKS                       R8 R0 K44 ["Radius"]
      236 GETTABLEKS                       R7 R8 K59 ["Medium"]
      238 SETTABLEKS                       R7 R6 K32 ["radius"]
      240 LOADK                            R7 K67 ["gap-large"]
      241 SETTABLEKS                       R7 R6 K33 ["innerContainerTag"]
      243 NEWTABLE                         R7 2 0
      245 GETUPVAL                         R10 0
      246 GETTABLEKS                       R9 R10 K47 ["FoundationInternalTextInputCornerRadius"]
      248 NOT                              R8 R9
      249 SETTABLEKS                       R8 R7 K68 ["size-full-1000 radius-medium gap-large"]
      251 GETUPVAL                         R9 0
      252 GETTABLEKS                       R8 R9 K47 ["FoundationInternalTextInputCornerRadius"]
      254 SETTABLEKS                       R8 R7 K69 ["size-full-1000 gap-large"]
      256 SETTABLEKS                       R7 R6 K34 ["outerViewTag"]
      258 GETTABLEKS                       R8 R0 K50 ["Padding"]
      260 GETTABLEKS                       R7 R8 K45 ["Small"]
      262 SETTABLEKS                       R7 R6 K35 ["horizontalPadding"]
      264 GETTABLEKS                       R8 R0 K51 ["Gap"]
      266 GETTABLEKS                       R7 R8 K70 ["Large"]
      268 SETTABLEKS                       R7 R6 K36 ["gap"]
      270 LOADK                            R7 K63 ["text-body-medium"]
      271 SETTABLEKS                       R7 R6 K37 ["textBoxTag"]
      273 GETTABLEKS                       R8 R0 K53 ["Typography"]
      275 GETTABLEKS                       R7 R8 K64 ["BodyMedium"]
      277 SETTABLEKS                       R7 R6 K38 ["typography"]
      279 GETUPVAL                         R8 3
      280 GETTABLEKS                       R7 R8 K45 ["Small"]
      282 SETTABLEKS                       R7 R6 K39 ["iconSize"]
      284 GETTABLEKS                       R8 R0 K55 ["Size"]
      286 GETTABLEKS                       R7 R8 K71 ["Size_1000"]
      288 SETTABLEKS                       R7 R6 K40 ["minContainerHeight"]
      290 CALL                             R5 1 1
      291 SETTABLE                         R5 R3 R4
      292 GETUPVAL                         R5 1
      293 GETTABLEKS                       R4 R5 K70 ["Large"]
      295 GETUPVAL                         R5 2
      296 DUPTABLE                         R6 K41 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      297 LOADK                            R7 K72 ["size-full-1200"]
      298 SETTABLEKS                       R7 R6 K30 ["canvasTag"]
      300 LOADK                            R7 K58 ["radius-medium"]
      301 SETTABLEKS                       R7 R6 K31 ["outerContainerTag"]
      303 GETTABLEKS                       R8 R0 K44 ["Radius"]
      305 GETTABLEKS                       R7 R8 K59 ["Medium"]
      307 SETTABLEKS                       R7 R6 K32 ["radius"]
      309 LOADK                            R7 K67 ["gap-large"]
      310 SETTABLEKS                       R7 R6 K33 ["innerContainerTag"]
      312 NEWTABLE                         R7 2 0
      314 GETUPVAL                         R10 0
      315 GETTABLEKS                       R9 R10 K47 ["FoundationInternalTextInputCornerRadius"]
      317 NOT                              R8 R9
      318 SETTABLEKS                       R8 R7 K73 ["size-full-1200 radius-medium gap-large"]
      320 GETUPVAL                         R9 0
      321 GETTABLEKS                       R8 R9 K47 ["FoundationInternalTextInputCornerRadius"]
      323 SETTABLEKS                       R8 R7 K74 ["size-full-1200 gap-large"]
      325 SETTABLEKS                       R7 R6 K34 ["outerViewTag"]
      327 GETTABLEKS                       R8 R0 K50 ["Padding"]
      329 GETTABLEKS                       R7 R8 K59 ["Medium"]
      331 SETTABLEKS                       R7 R6 K35 ["horizontalPadding"]
      333 GETTABLEKS                       R8 R0 K51 ["Gap"]
      335 GETTABLEKS                       R7 R8 K70 ["Large"]
      337 SETTABLEKS                       R7 R6 K36 ["gap"]
      339 LOADK                            R7 K75 ["text-body-large"]
      340 SETTABLEKS                       R7 R6 K37 ["textBoxTag"]
      342 GETTABLEKS                       R8 R0 K53 ["Typography"]
      344 GETTABLEKS                       R7 R8 K76 ["BodyLarge"]
      346 SETTABLEKS                       R7 R6 K38 ["typography"]
      348 GETUPVAL                         R8 3
      349 GETTABLEKS                       R7 R8 K45 ["Small"]
      351 SETTABLEKS                       R7 R6 K39 ["iconSize"]
      353 GETTABLEKS                       R8 R0 K55 ["Size"]
      355 GETTABLEKS                       R7 R8 K77 ["Size_1200"]
      357 SETTABLEKS                       R7 R6 K40 ["minContainerHeight"]
      359 CALL                             R5 1 1
      360 SETTABLE                         R5 R3 R4
      361 GETUPVAL                         R6 0
      362 GETTABLEKS                       R5 R6 K17 ["FoundationTextInputAlignStrokeBehavior"]
      364 JUMPIFNOT                        R5 ; [+21]
      365 NEWTABLE                         R4 2 0
      367 LOADB                            R5 1
      368 DUPTABLE                         R6 K78 [{"outerView"}]
      369 DUPTABLE                         R7 K79 [{"strokeStyle"}]
      370 GETTABLEKS                       R10 R0 K14 ["Color"]
      372 GETTABLEKS                       R9 R10 K80 ["System"]
      374 GETTABLEKS                       R8 R9 K81 ["Alert"]
      376 SETTABLEKS                       R8 R7 K11 ["strokeStyle"]
      378 SETTABLEKS                       R7 R6 K2 ["outerView"]
      380 SETTABLE                         R6 R4 R5
      381 LOADB                            R5 0
      382 NEWTABLE                         R6 0 0
      384 SETTABLE                         R6 R4 R5
      385 JUMP                             ; [+1]
      386 LOADNIL                          R4
      387 GETUPVAL                         R7 0
      388 GETTABLEKS                       R6 R7 K17 ["FoundationTextInputAlignStrokeBehavior"]
      390 JUMPIFNOT                        R6 ; [+28]
      391 NEWTABLE                         R5 2 0
      393 LOADB                            R6 1
      394 DUPTABLE                         R7 K78 [{"outerView"}]
      395 DUPTABLE                         R8 K82 [{"strokeStyle", "strokeThickness"}]
      396 GETTABLEKS                       R11 R0 K14 ["Color"]
      398 GETTABLEKS                       R10 R11 K80 ["System"]
      400 GETTABLEKS                       R9 R10 K19 ["Emphasis"]
      402 SETTABLEKS                       R9 R8 K11 ["strokeStyle"]
      404 GETTABLEKS                       R11 R0 K18 ["Stroke"]
      406 GETTABLEKS                       R10 R11 K20 ["Standard"]
      408 MULK                             R9 R10 K83 [2]
      409 SETTABLEKS                       R9 R8 K12 ["strokeThickness"]
      411 SETTABLEKS                       R8 R7 K2 ["outerView"]
      413 SETTABLE                         R7 R5 R6
      414 LOADB                            R6 0
      415 NEWTABLE                         R7 0 0
      417 SETTABLE                         R7 R5 R6
      418 JUMP                             ; [+1]
      419 LOADNIL                          R5
      420 GETUPVAL                         R8 0
      421 GETTABLEKS                       R7 R8 K17 ["FoundationTextInputAlignStrokeBehavior"]
      423 JUMPIFNOT                        R7 ; [+20]
      424 NEWTABLE                         R6 2 0
      426 LOADB                            R7 1
      427 DUPTABLE                         R8 K78 [{"outerView"}]
      428 DUPTABLE                         R9 K84 [{"strokeThickness"}]
      429 GETTABLEKS                       R12 R0 K18 ["Stroke"]
      431 GETTABLEKS                       R11 R12 K20 ["Standard"]
      433 MULK                             R10 R11 K83 [2]
      434 SETTABLEKS                       R10 R9 K12 ["strokeThickness"]
      436 SETTABLEKS                       R9 R8 K2 ["outerView"]
      438 SETTABLE                         R8 R6 R7
      439 LOADB                            R7 0
      440 NEWTABLE                         R8 0 0
      442 SETTABLE                         R8 R6 R7
      443 JUMP                             ; [+1]
      444 LOADNIL                          R6
      445 GETUPVAL                         R9 0
      446 GETTABLEKS                       R8 R9 K47 ["FoundationInternalTextInputCornerRadius"]
      448 JUMPIFNOT                        R8 ; [+63]
      449 NEWTABLE                         R7 4 0
      451 GETUPVAL                         R9 1
      452 GETTABLEKS                       R8 R9 K29 ["XSmall"]
      454 DUPTABLE                         R9 K78 [{"outerView"}]
      455 DUPTABLE                         R10 K7 [{"tag"}]
      456 NEWTABLE                         R11 1 0
      458 LOADB                            R12 1
      459 SETTABLEKS                       R12 R11 K43 ["radius-small"]
      461 SETTABLEKS                       R11 R10 K6 ["tag"]
      463 SETTABLEKS                       R10 R9 K2 ["outerView"]
      465 SETTABLE                         R9 R7 R8
      466 GETUPVAL                         R9 1
      467 GETTABLEKS                       R8 R9 K45 ["Small"]
      469 DUPTABLE                         R9 K78 [{"outerView"}]
      470 DUPTABLE                         R10 K7 [{"tag"}]
      471 NEWTABLE                         R11 1 0
      473 LOADB                            R12 1
      474 SETTABLEKS                       R12 R11 K58 ["radius-medium"]
      476 SETTABLEKS                       R11 R10 K6 ["tag"]
      478 SETTABLEKS                       R10 R9 K2 ["outerView"]
      480 SETTABLE                         R9 R7 R8
      481 GETUPVAL                         R9 1
      482 GETTABLEKS                       R8 R9 K59 ["Medium"]
      484 DUPTABLE                         R9 K78 [{"outerView"}]
      485 DUPTABLE                         R10 K7 [{"tag"}]
      486 NEWTABLE                         R11 1 0
      488 LOADB                            R12 1
      489 SETTABLEKS                       R12 R11 K58 ["radius-medium"]
      491 SETTABLEKS                       R11 R10 K6 ["tag"]
      493 SETTABLEKS                       R10 R9 K2 ["outerView"]
      495 SETTABLE                         R9 R7 R8
      496 GETUPVAL                         R9 1
      497 GETTABLEKS                       R8 R9 K70 ["Large"]
      499 DUPTABLE                         R9 K78 [{"outerView"}]
      500 DUPTABLE                         R10 K7 [{"tag"}]
      501 NEWTABLE                         R11 1 0
      503 LOADB                            R12 1
      504 SETTABLEKS                       R12 R11 K58 ["radius-medium"]
      506 SETTABLEKS                       R11 R10 K6 ["tag"]
      508 SETTABLEKS                       R10 R9 K2 ["outerView"]
      510 SETTABLE                         R9 R7 R8
      511 JUMP                             ; [+1]
      512 LOADNIL                          R7
      513 GETUPVAL                         R10 0
      514 GETTABLEKS                       R9 R10 K47 ["FoundationInternalTextInputCornerRadius"]
      516 JUMPIFNOT                        R9 ; [+93]
      517 NEWTABLE                         R8 8 0
      519 GETUPVAL                         R10 4
      520 GETTABLEKS                       R9 R10 K85 ["None"]
      522 DUPTABLE                         R10 K78 [{"outerView"}]
      523 DUPTABLE                         R11 K7 [{"tag"}]
      524 NEWTABLE                         R12 1 0
      526 LOADB                            R13 1
      527 SETTABLEKS                       R13 R12 K86 ["radius-none"]
      529 SETTABLEKS                       R12 R11 K6 ["tag"]
      531 SETTABLEKS                       R11 R10 K2 ["outerView"]
      533 SETTABLE                         R10 R8 R9
      534 GETUPVAL                         R10 4
      535 GETTABLEKS                       R9 R10 K29 ["XSmall"]
      537 DUPTABLE                         R10 K78 [{"outerView"}]
      538 DUPTABLE                         R11 K7 [{"tag"}]
      539 NEWTABLE                         R12 1 0
      541 LOADB                            R13 1
      542 SETTABLEKS                       R13 R12 K87 ["radius-xsmall"]
      544 SETTABLEKS                       R12 R11 K6 ["tag"]
      546 SETTABLEKS                       R11 R10 K2 ["outerView"]
      548 SETTABLE                         R10 R8 R9
      549 GETUPVAL                         R10 4
      550 GETTABLEKS                       R9 R10 K45 ["Small"]
      552 DUPTABLE                         R10 K78 [{"outerView"}]
      553 DUPTABLE                         R11 K7 [{"tag"}]
      554 NEWTABLE                         R12 1 0
      556 LOADB                            R13 1
      557 SETTABLEKS                       R13 R12 K43 ["radius-small"]
      559 SETTABLEKS                       R12 R11 K6 ["tag"]
      561 SETTABLEKS                       R11 R10 K2 ["outerView"]
      563 SETTABLE                         R10 R8 R9
      564 GETUPVAL                         R10 4
      565 GETTABLEKS                       R9 R10 K59 ["Medium"]
      567 DUPTABLE                         R10 K78 [{"outerView"}]
      568 DUPTABLE                         R11 K7 [{"tag"}]
      569 NEWTABLE                         R12 1 0
      571 LOADB                            R13 1
      572 SETTABLEKS                       R13 R12 K58 ["radius-medium"]
      574 SETTABLEKS                       R12 R11 K6 ["tag"]
      576 SETTABLEKS                       R11 R10 K2 ["outerView"]
      578 SETTABLE                         R10 R8 R9
      579 GETUPVAL                         R10 4
      580 GETTABLEKS                       R9 R10 K70 ["Large"]
      582 DUPTABLE                         R10 K78 [{"outerView"}]
      583 DUPTABLE                         R11 K7 [{"tag"}]
      584 NEWTABLE                         R12 1 0
      586 LOADB                            R13 1
      587 SETTABLEKS                       R13 R12 K88 ["radius-large"]
      589 SETTABLEKS                       R12 R11 K6 ["tag"]
      591 SETTABLEKS                       R11 R10 K2 ["outerView"]
      593 SETTABLE                         R10 R8 R9
      594 GETUPVAL                         R10 4
      595 GETTABLEKS                       R9 R10 K89 ["Circle"]
      597 DUPTABLE                         R10 K78 [{"outerView"}]
      598 DUPTABLE                         R11 K7 [{"tag"}]
      599 NEWTABLE                         R12 1 0
      601 LOADB                            R13 1
      602 SETTABLEKS                       R13 R12 K90 ["radius-circle"]
      604 SETTABLEKS                       R12 R11 K6 ["tag"]
      606 SETTABLEKS                       R11 R10 K2 ["outerView"]
      608 SETTABLE                         R10 R8 R9
      609 JUMP                             ; [+1]
      610 LOADNIL                          R8
      611 DUPTABLE                         R9 K98 [{"common", "sizes", "multiline", "defaultRadius", "radius", "errorState", "focusedState", "hoverState"}]
      612 SETTABLEKS                       R1 R9 K91 ["common"]
      614 SETTABLEKS                       R3 R9 K92 ["sizes"]
      616 SETTABLEKS                       R2 R9 K93 ["multiline"]
      618 SETTABLEKS                       R7 R9 K94 ["defaultRadius"]
      620 SETTABLEKS                       R8 R9 K32 ["radius"]
      622 SETTABLEKS                       R4 R9 K95 ["errorState"]
      624 SETTABLEKS                       R5 R9 K96 ["focusedState"]
      626 SETTABLEKS                       R6 R9 K97 ["hoverState"]
      628 RETURN                           R9 1

PROTO_2:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["useVariants"]
        3 LOADK                            R7 K1 ["TextInput"]
        4 GETUPVAL                         R8 1
        5 MOVE                             R9 R0
        6 CALL                             R6 3 1
        7 GETUPVAL                         R8 2
        8 GETTABLEKS                       R7 R8 K2 ["FoundationTextInputAlignStrokeBehavior"]
       10 JUMPIFNOT                        R7 ; [+49]
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R8 R6 K3 ["common"]
       14 GETTABLEKS                       R10 R6 K4 ["sizes"]
       16 GETTABLE                         R9 R10 R1
       17 GETTABLEKS                       R10 R6 K5 ["multiline"]
       19 GETUPVAL                         R13 2
       20 GETTABLEKS                       R12 R13 K6 ["FoundationInternalTextInputCornerRadius"]
       22 JUMPIFNOT                        R12 ; [+9]
       23 JUMPIFNOT                        R2 ; [+4]
       24 GETTABLEKS                       R12 R6 K7 ["radius"]
       26 GETTABLE                         R11 R12 R2
       27 JUMP                             ; [+6]
       28 GETTABLEKS                       R12 R6 K8 ["defaultRadius"]
       30 GETTABLE                         R11 R12 R1
       31 JUMP                             ; [+2]
       32 NEWTABLE                         R11 0 0
       34 JUMPIFEQKNIL                     R4 ; [+5]
       36 GETTABLEKS                       R13 R6 K9 ["hoverState"]
       38 GETTABLE                         R12 R13 R4
       39 JUMP                             ; [+2]
       40 NEWTABLE                         R12 0 0
       42 JUMPIFEQKNIL                     R3 ; [+5]
       44 GETTABLEKS                       R14 R6 K10 ["focusedState"]
       46 GETTABLE                         R13 R14 R3
       47 JUMP                             ; [+2]
       48 NEWTABLE                         R13 0 0
       50 JUMPIFEQKNIL                     R5 ; [+5]
       52 GETTABLEKS                       R15 R6 K11 ["errorState"]
       54 GETTABLE                         R14 R15 R5
       55 JUMP                             ; [+2]
       56 NEWTABLE                         R14 0 0
       58 CALL                             R7 7 -1
       59 RETURN                           R7 -1
       60 GETUPVAL                         R7 3
       61 GETTABLEKS                       R8 R6 K3 ["common"]
       63 GETTABLEKS                       R10 R6 K4 ["sizes"]
       65 GETTABLE                         R9 R10 R1
       66 GETTABLEKS                       R10 R6 K5 ["multiline"]
       68 GETUPVAL                         R13 2
       69 GETTABLEKS                       R12 R13 K6 ["FoundationInternalTextInputCornerRadius"]
       71 JUMPIFNOT                        R12 ; [+9]
       72 JUMPIFNOT                        R2 ; [+4]
       73 GETTABLEKS                       R12 R6 K7 ["radius"]
       75 GETTABLE                         R11 R12 R2
       76 JUMP                             ; [+6]
       77 GETTABLEKS                       R12 R6 K8 ["defaultRadius"]
       79 GETTABLE                         R11 R12 R1
       80 JUMP                             ; [+2]
       81 NEWTABLE                         R11 0 0
       83 CALL                             R7 4 -1
       84 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R4 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R5 K10 ["IconSize"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Enums"]
       32 GETTABLEKS                       R5 R6 K11 ["Radius"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Utility"]
       39 GETTABLEKS                       R6 R7 K13 ["Flags"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Utility"]
       46 GETTABLEKS                       R7 R8 K14 ["composeStyleVariant"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K15 ["Providers"]
       53 GETTABLEKS                       R9 R10 K16 ["Style"]
       55 GETTABLEKS                       R8 R9 K17 ["Tokens"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R11 R0 K15 ["Providers"]
       62 GETTABLEKS                       R10 R11 K16 ["Style"]
       64 GETTABLEKS                       R9 R10 K18 ["VariantsContext"]
       66 CALL                             R8 1 1
       67 DUPCLOSURE                       R9 K19 [PROTO_0]
       68 DUPCLOSURE                       R10 K20 [PROTO_1]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R4
       74 DUPCLOSURE                       R11 K21 [PROTO_2]
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R6
       79 RETURN                           R11 1
