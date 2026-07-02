PROTO_0:
        0 DUPTABLE                         R1 K6 [{"canvas", "outerContainer", "innerContainer", "outerView", "textBox", "icon"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K7 ["FoundationCleanupTextInputPolyfill"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 LOADNIL                          R2
        6 JUMP                             ; [+5]
        7 DUPTABLE                         R2 K9 [{"tag"}]
        8 GETTABLEKS                       R3 R0 K10 ["canvasTag"]
       10 SETTABLEKS                       R3 R2 K8 ["tag"]
       12 SETTABLEKS                       R2 R1 K0 ["canvas"]
       14 DUPTABLE                         R2 K12 [{"tag", "minHeight"}]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K7 ["FoundationCleanupTextInputPolyfill"]
       18 JUMPIFNOT                        R4 ; [+2]
       19 LOADNIL                          R3
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R3 R0 K13 ["outerContainerTag"]
       23 SETTABLEKS                       R3 R2 K8 ["tag"]
       25 GETTABLEKS                       R3 R0 K14 ["minContainerHeight"]
       27 SETTABLEKS                       R3 R2 K11 ["minHeight"]
       29 SETTABLEKS                       R2 R1 K1 ["outerContainer"]
       31 DUPTABLE                         R2 K18 [{"tag", "horizontalPadding", "gap", "radius"}]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K7 ["FoundationCleanupTextInputPolyfill"]
       35 JUMPIFNOT                        R4 ; [+2]
       36 LOADNIL                          R3
       37 JUMP                             ; [+2]
       38 GETTABLEKS                       R3 R0 K19 ["innerContainerTag"]
       40 SETTABLEKS                       R3 R2 K8 ["tag"]
       42 GETIMPORT                        R3 K22 [UDim.new]
       44 LOADN                            R4 0
       45 GETTABLEKS                       R5 R0 K15 ["horizontalPadding"]
       47 CALL                             R3 2 1
       48 SETTABLEKS                       R3 R2 K15 ["horizontalPadding"]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K7 ["FoundationCleanupTextInputPolyfill"]
       53 JUMPIFNOT                        R4 ; [+2]
       54 LOADNIL                          R3
       55 JUMP                             ; [+2]
       56 GETTABLEKS                       R3 R0 K16 ["gap"]
       58 SETTABLEKS                       R3 R2 K16 ["gap"]
       60 GETTABLEKS                       R3 R0 K17 ["radius"]
       62 SETTABLEKS                       R3 R2 K17 ["radius"]
       64 SETTABLEKS                       R2 R1 K2 ["innerContainer"]
       66 DUPTABLE                         R2 K9 [{"tag"}]
       67 GETTABLEKS                       R3 R0 K23 ["outerViewTag"]
       69 SETTABLEKS                       R3 R2 K8 ["tag"]
       71 SETTABLEKS                       R2 R1 K3 ["outerView"]
       73 DUPTABLE                         R2 K25 [{"tag", "fontStyle"}]
       74 GETUPVAL                         R4 0
       75 GETTABLEKS                       R4 R4 K7 ["FoundationCleanupTextInputPolyfill"]
       77 JUMPIFNOT                        R4 ; [+2]
       78 LOADNIL                          R3
       79 JUMP                             ; [+2]
       80 GETTABLEKS                       R3 R0 K26 ["textBoxTag"]
       82 SETTABLEKS                       R3 R2 K8 ["tag"]
       84 GETTABLEKS                       R3 R0 K27 ["typography"]
       86 SETTABLEKS                       R3 R2 K24 ["fontStyle"]
       88 SETTABLEKS                       R2 R1 K4 ["textBox"]
       90 DUPTABLE                         R2 K29 [{"size"}]
       91 GETTABLEKS                       R3 R0 K30 ["iconSize"]
       93 SETTABLEKS                       R3 R2 K28 ["size"]
       95 SETTABLEKS                       R2 R1 K5 ["icon"]
       97 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K5 [{"outerContainer", "innerContainer", "outerView", "textBox", "icon"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K6 ["FoundationCleanupTextInputPolyfill"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 LOADNIL                          R2
        6 JUMP                             ; [+1]
        7 DUPTABLE                         R2 K9 [{["tag"] = "bg-shift-100"}]
        8 SETTABLEKS                       R2 R1 K0 ["outerContainer"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K6 ["FoundationCleanupTextInputPolyfill"]
       13 JUMPIFNOT                        R3 ; [+2]
       14 LOADNIL                          R2
       15 JUMP                             ; [+1]
       16 DUPTABLE                         R2 K11 [{["tag"] = "row align-y-center"}]
       17 SETTABLEKS                       R2 R1 K1 ["innerContainer"]
       19 DUPTABLE                         R2 K15 [{["bgStyle"], ["strokeStyle"], ["strokeThickness"], ["tag"] = "row align-y-center"}]
       20 GETTABLEKS                       R3 R0 K16 ["Color"]
       22 GETTABLEKS                       R3 R3 K17 ["Shift"]
       24 GETTABLEKS                       R3 R3 K18 ["Shift_100"]
       26 SETTABLEKS                       R3 R2 K12 ["bgStyle"]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K19 ["FoundationTextInputAlignStrokeBehavior"]
       31 JUMPIFNOT                        R4 ; [+7]
       32 GETTABLEKS                       R3 R0 K16 ["Color"]
       34 GETTABLEKS                       R3 R3 K20 ["Stroke"]
       36 GETTABLEKS                       R3 R3 K21 ["Emphasis"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R3
       40 SETTABLEKS                       R3 R2 K13 ["strokeStyle"]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K19 ["FoundationTextInputAlignStrokeBehavior"]
       45 JUMPIFNOT                        R4 ; [+5]
       46 GETTABLEKS                       R3 R0 K20 ["Stroke"]
       48 GETTABLEKS                       R3 R3 K22 ["Standard"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R3
       52 SETTABLEKS                       R3 R2 K14 ["strokeThickness"]
       54 SETTABLEKS                       R2 R1 K2 ["outerView"]
       56 DUPTABLE                         R2 K24 [{["tag"] = "text-align-x-left text-align-y-center clip content-emphasis gui-object-defaults"}]
       57 SETTABLEKS                       R2 R1 K3 ["textBox"]
       59 DUPTABLE                         R2 K26 [{"style"}]
       60 GETTABLEKS                       R3 R0 K16 ["Color"]
       62 GETTABLEKS                       R3 R3 K27 ["Content"]
       64 GETTABLEKS                       R3 R3 K28 ["Muted"]
       66 SETTABLEKS                       R3 R2 K25 ["style"]
       68 SETTABLEKS                       R2 R1 K4 ["icon"]
       70 GETUPVAL                         R3 0
       71 GETTABLEKS                       R3 R3 K6 ["FoundationCleanupTextInputPolyfill"]
       73 JUMPIFNOT                        R3 ; [+2]
       74 LOADNIL                          R2
       75 JUMP                             ; [+7]
       76 DUPTABLE                         R2 K30 [{"canvas", "outerContainer"}]
       77 DUPTABLE                         R3 K32 [{["tag"] = "size-full-0"}]
       78 SETTABLEKS                       R3 R2 K29 ["canvas"]
       80 DUPTABLE                         R3 K32 [{["tag"] = "size-full-0"}]
       81 SETTABLEKS                       R3 R2 K0 ["outerContainer"]
       83 NEWTABLE                         R3 4 0
       85 GETUPVAL                         R4 1
       86 GETTABLEKS                       R4 R4 K33 ["XSmall"]
       88 GETUPVAL                         R5 2
       89 DUPTABLE                         R6 K45 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
       90 GETUPVAL                         R8 0
       91 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
       93 JUMPIFNOT                        R8 ; [+2]
       94 LOADNIL                          R7
       95 JUMP                             ; [+1]
       96 LOADK                            R7 K46 ["size-full-600"]
       97 SETTABLEKS                       R7 R6 K34 ["canvasTag"]
       99 GETUPVAL                         R8 0
      100 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      102 JUMPIFNOT                        R8 ; [+2]
      103 LOADNIL                          R7
      104 JUMP                             ; [+1]
      105 LOADK                            R7 K47 ["radius-small"]
      106 SETTABLEKS                       R7 R6 K35 ["outerContainerTag"]
      108 GETTABLEKS                       R7 R0 K48 ["Radius"]
      110 GETTABLEKS                       R7 R7 K49 ["Small"]
      112 SETTABLEKS                       R7 R6 K36 ["radius"]
      114 GETUPVAL                         R8 0
      115 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      117 JUMPIFNOT                        R8 ; [+2]
      118 LOADNIL                          R7
      119 JUMP                             ; [+1]
      120 LOADK                            R7 K50 ["gap-small"]
      121 SETTABLEKS                       R7 R6 K37 ["innerContainerTag"]
      123 NEWTABLE                         R7 2 0
      125 GETUPVAL                         R9 0
      126 GETTABLEKS                       R9 R9 K51 ["FoundationInternalTextInputCornerRadius"]
      128 NOT                              R8 R9
      129 SETTABLEKS                       R8 R7 K52 ["size-full-600 radius-small gap-small"]
      131 GETUPVAL                         R8 0
      132 GETTABLEKS                       R8 R8 K51 ["FoundationInternalTextInputCornerRadius"]
      134 SETTABLEKS                       R8 R7 K53 ["size-full-600 gap-small"]
      136 SETTABLEKS                       R7 R6 K38 ["outerViewTag"]
      138 GETTABLEKS                       R7 R0 K54 ["Padding"]
      140 GETTABLEKS                       R7 R7 K33 ["XSmall"]
      142 SETTABLEKS                       R7 R6 K39 ["horizontalPadding"]
      144 GETUPVAL                         R8 0
      145 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      147 JUMPIFNOT                        R8 ; [+2]
      148 LOADNIL                          R7
      149 JUMP                             ; [+4]
      150 GETTABLEKS                       R7 R0 K55 ["Gap"]
      152 GETTABLEKS                       R7 R7 K49 ["Small"]
      154 SETTABLEKS                       R7 R6 K40 ["gap"]
      156 GETUPVAL                         R8 0
      157 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      159 JUMPIFNOT                        R8 ; [+2]
      160 LOADNIL                          R7
      161 JUMP                             ; [+1]
      162 LOADK                            R7 K56 ["text-body-small"]
      163 SETTABLEKS                       R7 R6 K41 ["textBoxTag"]
      165 GETTABLEKS                       R7 R0 K57 ["Typography"]
      167 GETTABLEKS                       R7 R7 K58 ["BodySmall"]
      169 SETTABLEKS                       R7 R6 K42 ["typography"]
      171 GETUPVAL                         R7 3
      172 GETTABLEKS                       R7 R7 K33 ["XSmall"]
      174 SETTABLEKS                       R7 R6 K43 ["iconSize"]
      176 GETTABLEKS                       R7 R0 K59 ["Size"]
      178 GETTABLEKS                       R7 R7 K60 ["Size_600"]
      180 SETTABLEKS                       R7 R6 K44 ["minContainerHeight"]
      182 CALL                             R5 1 1
      183 SETTABLE                         R5 R3 R4
      184 GETUPVAL                         R4 1
      185 GETTABLEKS                       R4 R4 K49 ["Small"]
      187 GETUPVAL                         R5 2
      188 DUPTABLE                         R6 K45 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      189 GETUPVAL                         R8 0
      190 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      192 JUMPIFNOT                        R8 ; [+2]
      193 LOADNIL                          R7
      194 JUMP                             ; [+1]
      195 LOADK                            R7 K61 ["size-full-800"]
      196 SETTABLEKS                       R7 R6 K34 ["canvasTag"]
      198 GETUPVAL                         R8 0
      199 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      201 JUMPIFNOT                        R8 ; [+2]
      202 LOADNIL                          R7
      203 JUMP                             ; [+1]
      204 LOADK                            R7 K62 ["radius-medium"]
      205 SETTABLEKS                       R7 R6 K35 ["outerContainerTag"]
      207 GETTABLEKS                       R7 R0 K48 ["Radius"]
      209 GETTABLEKS                       R7 R7 K63 ["Medium"]
      211 SETTABLEKS                       R7 R6 K36 ["radius"]
      213 GETUPVAL                         R8 0
      214 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      216 JUMPIFNOT                        R8 ; [+2]
      217 LOADNIL                          R7
      218 JUMP                             ; [+1]
      219 LOADK                            R7 K64 ["gap-medium"]
      220 SETTABLEKS                       R7 R6 K37 ["innerContainerTag"]
      222 NEWTABLE                         R7 2 0
      224 GETUPVAL                         R9 0
      225 GETTABLEKS                       R9 R9 K51 ["FoundationInternalTextInputCornerRadius"]
      227 NOT                              R8 R9
      228 SETTABLEKS                       R8 R7 K65 ["size-full-800 radius-medium gap-medium"]
      230 GETUPVAL                         R8 0
      231 GETTABLEKS                       R8 R8 K51 ["FoundationInternalTextInputCornerRadius"]
      233 SETTABLEKS                       R8 R7 K66 ["size-full-800 gap-medium"]
      235 SETTABLEKS                       R7 R6 K38 ["outerViewTag"]
      237 GETTABLEKS                       R7 R0 K54 ["Padding"]
      239 GETTABLEKS                       R7 R7 K49 ["Small"]
      241 SETTABLEKS                       R7 R6 K39 ["horizontalPadding"]
      243 GETUPVAL                         R8 0
      244 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      246 JUMPIFNOT                        R8 ; [+2]
      247 LOADNIL                          R7
      248 JUMP                             ; [+4]
      249 GETTABLEKS                       R7 R0 K55 ["Gap"]
      251 GETTABLEKS                       R7 R7 K63 ["Medium"]
      253 SETTABLEKS                       R7 R6 K40 ["gap"]
      255 GETUPVAL                         R8 0
      256 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      258 JUMPIFNOT                        R8 ; [+2]
      259 LOADNIL                          R7
      260 JUMP                             ; [+1]
      261 LOADK                            R7 K67 ["text-body-medium"]
      262 SETTABLEKS                       R7 R6 K41 ["textBoxTag"]
      264 GETTABLEKS                       R7 R0 K57 ["Typography"]
      266 GETTABLEKS                       R7 R7 K68 ["BodyMedium"]
      268 SETTABLEKS                       R7 R6 K42 ["typography"]
      270 GETUPVAL                         R7 3
      271 GETTABLEKS                       R7 R7 K33 ["XSmall"]
      273 SETTABLEKS                       R7 R6 K43 ["iconSize"]
      275 GETTABLEKS                       R7 R0 K59 ["Size"]
      277 GETTABLEKS                       R7 R7 K69 ["Size_800"]
      279 SETTABLEKS                       R7 R6 K44 ["minContainerHeight"]
      281 CALL                             R5 1 1
      282 SETTABLE                         R5 R3 R4
      283 GETUPVAL                         R4 1
      284 GETTABLEKS                       R4 R4 K63 ["Medium"]
      286 GETUPVAL                         R5 2
      287 DUPTABLE                         R6 K45 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      288 GETUPVAL                         R8 0
      289 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      291 JUMPIFNOT                        R8 ; [+2]
      292 LOADNIL                          R7
      293 JUMP                             ; [+1]
      294 LOADK                            R7 K70 ["size-full-1000"]
      295 SETTABLEKS                       R7 R6 K34 ["canvasTag"]
      297 GETUPVAL                         R8 0
      298 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      300 JUMPIFNOT                        R8 ; [+2]
      301 LOADNIL                          R7
      302 JUMP                             ; [+1]
      303 LOADK                            R7 K62 ["radius-medium"]
      304 SETTABLEKS                       R7 R6 K35 ["outerContainerTag"]
      306 GETTABLEKS                       R7 R0 K48 ["Radius"]
      308 GETTABLEKS                       R7 R7 K63 ["Medium"]
      310 SETTABLEKS                       R7 R6 K36 ["radius"]
      312 GETUPVAL                         R8 0
      313 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      315 JUMPIFNOT                        R8 ; [+2]
      316 LOADNIL                          R7
      317 JUMP                             ; [+1]
      318 LOADK                            R7 K71 ["gap-large"]
      319 SETTABLEKS                       R7 R6 K37 ["innerContainerTag"]
      321 NEWTABLE                         R7 2 0
      323 GETUPVAL                         R9 0
      324 GETTABLEKS                       R9 R9 K51 ["FoundationInternalTextInputCornerRadius"]
      326 NOT                              R8 R9
      327 SETTABLEKS                       R8 R7 K72 ["size-full-1000 radius-medium gap-large"]
      329 GETUPVAL                         R8 0
      330 GETTABLEKS                       R8 R8 K51 ["FoundationInternalTextInputCornerRadius"]
      332 SETTABLEKS                       R8 R7 K73 ["size-full-1000 gap-large"]
      334 SETTABLEKS                       R7 R6 K38 ["outerViewTag"]
      336 GETTABLEKS                       R7 R0 K54 ["Padding"]
      338 GETTABLEKS                       R7 R7 K49 ["Small"]
      340 SETTABLEKS                       R7 R6 K39 ["horizontalPadding"]
      342 GETUPVAL                         R8 0
      343 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      345 JUMPIFNOT                        R8 ; [+2]
      346 LOADNIL                          R7
      347 JUMP                             ; [+4]
      348 GETTABLEKS                       R7 R0 K55 ["Gap"]
      350 GETTABLEKS                       R7 R7 K74 ["Large"]
      352 SETTABLEKS                       R7 R6 K40 ["gap"]
      354 GETUPVAL                         R8 0
      355 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      357 JUMPIFNOT                        R8 ; [+2]
      358 LOADNIL                          R7
      359 JUMP                             ; [+1]
      360 LOADK                            R7 K67 ["text-body-medium"]
      361 SETTABLEKS                       R7 R6 K41 ["textBoxTag"]
      363 GETTABLEKS                       R7 R0 K57 ["Typography"]
      365 GETTABLEKS                       R7 R7 K68 ["BodyMedium"]
      367 SETTABLEKS                       R7 R6 K42 ["typography"]
      369 GETUPVAL                         R7 3
      370 GETTABLEKS                       R7 R7 K49 ["Small"]
      372 SETTABLEKS                       R7 R6 K43 ["iconSize"]
      374 GETTABLEKS                       R7 R0 K59 ["Size"]
      376 GETTABLEKS                       R7 R7 K75 ["Size_1000"]
      378 SETTABLEKS                       R7 R6 K44 ["minContainerHeight"]
      380 CALL                             R5 1 1
      381 SETTABLE                         R5 R3 R4
      382 GETUPVAL                         R4 1
      383 GETTABLEKS                       R4 R4 K74 ["Large"]
      385 GETUPVAL                         R5 2
      386 DUPTABLE                         R6 K45 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      387 GETUPVAL                         R8 0
      388 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      390 JUMPIFNOT                        R8 ; [+2]
      391 LOADNIL                          R7
      392 JUMP                             ; [+1]
      393 LOADK                            R7 K76 ["size-full-1200"]
      394 SETTABLEKS                       R7 R6 K34 ["canvasTag"]
      396 GETUPVAL                         R8 0
      397 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      399 JUMPIFNOT                        R8 ; [+2]
      400 LOADNIL                          R7
      401 JUMP                             ; [+1]
      402 LOADK                            R7 K62 ["radius-medium"]
      403 SETTABLEKS                       R7 R6 K35 ["outerContainerTag"]
      405 GETTABLEKS                       R7 R0 K48 ["Radius"]
      407 GETTABLEKS                       R7 R7 K63 ["Medium"]
      409 SETTABLEKS                       R7 R6 K36 ["radius"]
      411 GETUPVAL                         R8 0
      412 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      414 JUMPIFNOT                        R8 ; [+2]
      415 LOADNIL                          R7
      416 JUMP                             ; [+1]
      417 LOADK                            R7 K71 ["gap-large"]
      418 SETTABLEKS                       R7 R6 K37 ["innerContainerTag"]
      420 NEWTABLE                         R7 2 0
      422 GETUPVAL                         R9 0
      423 GETTABLEKS                       R9 R9 K51 ["FoundationInternalTextInputCornerRadius"]
      425 NOT                              R8 R9
      426 SETTABLEKS                       R8 R7 K77 ["size-full-1200 radius-medium gap-large"]
      428 GETUPVAL                         R8 0
      429 GETTABLEKS                       R8 R8 K51 ["FoundationInternalTextInputCornerRadius"]
      431 SETTABLEKS                       R8 R7 K78 ["size-full-1200 gap-large"]
      433 SETTABLEKS                       R7 R6 K38 ["outerViewTag"]
      435 GETTABLEKS                       R7 R0 K54 ["Padding"]
      437 GETTABLEKS                       R7 R7 K63 ["Medium"]
      439 SETTABLEKS                       R7 R6 K39 ["horizontalPadding"]
      441 GETUPVAL                         R8 0
      442 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      444 JUMPIFNOT                        R8 ; [+2]
      445 LOADNIL                          R7
      446 JUMP                             ; [+4]
      447 GETTABLEKS                       R7 R0 K55 ["Gap"]
      449 GETTABLEKS                       R7 R7 K74 ["Large"]
      451 SETTABLEKS                       R7 R6 K40 ["gap"]
      453 GETUPVAL                         R8 0
      454 GETTABLEKS                       R8 R8 K6 ["FoundationCleanupTextInputPolyfill"]
      456 JUMPIFNOT                        R8 ; [+2]
      457 LOADNIL                          R7
      458 JUMP                             ; [+1]
      459 LOADK                            R7 K79 ["text-body-large"]
      460 SETTABLEKS                       R7 R6 K41 ["textBoxTag"]
      462 GETTABLEKS                       R7 R0 K57 ["Typography"]
      464 GETTABLEKS                       R7 R7 K80 ["BodyLarge"]
      466 SETTABLEKS                       R7 R6 K42 ["typography"]
      468 GETUPVAL                         R7 3
      469 GETTABLEKS                       R7 R7 K49 ["Small"]
      471 SETTABLEKS                       R7 R6 K43 ["iconSize"]
      473 GETTABLEKS                       R7 R0 K59 ["Size"]
      475 GETTABLEKS                       R7 R7 K81 ["Size_1200"]
      477 SETTABLEKS                       R7 R6 K44 ["minContainerHeight"]
      479 CALL                             R5 1 1
      480 SETTABLE                         R5 R3 R4
      481 GETUPVAL                         R5 0
      482 GETTABLEKS                       R5 R5 K82 ["FoundationInternalTextInputVariants"]
      484 JUMPIFNOT                        R5 ; [+58]
      485 NEWTABLE                         R4 4 0
      487 GETUPVAL                         R5 4
      488 GETTABLEKS                       R5 R5 K22 ["Standard"]
      490 DUPTABLE                         R6 K83 [{"outerView"}]
      491 DUPTABLE                         R7 K84 [{"bgStyle"}]
      492 GETTABLEKS                       R8 R0 K16 ["Color"]
      494 GETTABLEKS                       R8 R8 K17 ["Shift"]
      496 GETTABLEKS                       R8 R8 K18 ["Shift_100"]
      498 SETTABLEKS                       R8 R7 K12 ["bgStyle"]
      500 SETTABLEKS                       R7 R6 K2 ["outerView"]
      502 SETTABLE                         R6 R4 R5
      503 GETUPVAL                         R5 4
      504 GETTABLEKS                       R5 R5 K85 ["Contrast"]
      506 DUPTABLE                         R6 K83 [{"outerView"}]
      507 DUPTABLE                         R7 K86 [{"bgStyle", "strokeStyle"}]
      508 GETTABLEKS                       R8 R0 K16 ["Color"]
      510 GETTABLEKS                       R8 R8 K17 ["Shift"]
      512 GETTABLEKS                       R8 R8 K87 ["Shift_200"]
      514 SETTABLEKS                       R8 R7 K12 ["bgStyle"]
      516 GETUPVAL                         R8 5
      517 GETTABLEKS                       R8 R8 K88 ["None"]
      519 SETTABLEKS                       R8 R7 K13 ["strokeStyle"]
      521 SETTABLEKS                       R7 R6 K2 ["outerView"]
      523 SETTABLE                         R6 R4 R5
      524 GETUPVAL                         R5 4
      525 GETTABLEKS                       R5 R5 K89 ["Utility"]
      527 DUPTABLE                         R6 K83 [{"outerView"}]
      528 DUPTABLE                         R7 K86 [{"bgStyle", "strokeStyle"}]
      529 GETUPVAL                         R8 5
      530 GETTABLEKS                       R8 R8 K88 ["None"]
      532 SETTABLEKS                       R8 R7 K12 ["bgStyle"]
      534 GETUPVAL                         R8 5
      535 GETTABLEKS                       R8 R8 K88 ["None"]
      537 SETTABLEKS                       R8 R7 K13 ["strokeStyle"]
      539 SETTABLEKS                       R7 R6 K2 ["outerView"]
      541 SETTABLE                         R6 R4 R5
      542 JUMP                             ; [+1]
      543 LOADNIL                          R4
      544 GETUPVAL                         R6 0
      545 GETTABLEKS                       R6 R6 K19 ["FoundationTextInputAlignStrokeBehavior"]
      547 JUMPIFNOT                        R6 ; [+21]
      548 NEWTABLE                         R5 2 0
      550 LOADB                            R6 1
      551 DUPTABLE                         R7 K83 [{"outerView"}]
      552 DUPTABLE                         R8 K90 [{"strokeStyle"}]
      553 GETTABLEKS                       R9 R0 K16 ["Color"]
      555 GETTABLEKS                       R9 R9 K91 ["System"]
      557 GETTABLEKS                       R9 R9 K92 ["Alert"]
      559 SETTABLEKS                       R9 R8 K13 ["strokeStyle"]
      561 SETTABLEKS                       R8 R7 K2 ["outerView"]
      563 SETTABLE                         R7 R5 R6
      564 LOADB                            R6 0
      565 NEWTABLE                         R7 0 0
      567 SETTABLE                         R7 R5 R6
      568 JUMP                             ; [+1]
      569 LOADNIL                          R5
      570 GETUPVAL                         R7 0
      571 GETTABLEKS                       R7 R7 K19 ["FoundationTextInputAlignStrokeBehavior"]
      573 JUMPIFNOT                        R7 ; [+28]
      574 NEWTABLE                         R6 2 0
      576 LOADB                            R7 1
      577 DUPTABLE                         R8 K83 [{"outerView"}]
      578 DUPTABLE                         R9 K93 [{"strokeStyle", "strokeThickness"}]
      579 GETTABLEKS                       R10 R0 K16 ["Color"]
      581 GETTABLEKS                       R10 R10 K91 ["System"]
      583 GETTABLEKS                       R10 R10 K21 ["Emphasis"]
      585 SETTABLEKS                       R10 R9 K13 ["strokeStyle"]
      587 GETTABLEKS                       R11 R0 K20 ["Stroke"]
      589 GETTABLEKS                       R11 R11 K22 ["Standard"]
      591 MULK                             R10 R11 K94 [2]
      592 SETTABLEKS                       R10 R9 K14 ["strokeThickness"]
      594 SETTABLEKS                       R9 R8 K2 ["outerView"]
      596 SETTABLE                         R8 R6 R7
      597 LOADB                            R7 0
      598 NEWTABLE                         R8 0 0
      600 SETTABLE                         R8 R6 R7
      601 JUMP                             ; [+1]
      602 LOADNIL                          R6
      603 GETUPVAL                         R8 0
      604 GETTABLEKS                       R8 R8 K19 ["FoundationTextInputAlignStrokeBehavior"]
      606 JUMPIFNOT                        R8 ; [+20]
      607 NEWTABLE                         R7 2 0
      609 LOADB                            R8 1
      610 DUPTABLE                         R9 K83 [{"outerView"}]
      611 DUPTABLE                         R10 K95 [{"strokeThickness"}]
      612 GETTABLEKS                       R12 R0 K20 ["Stroke"]
      614 GETTABLEKS                       R12 R12 K22 ["Standard"]
      616 MULK                             R11 R12 K94 [2]
      617 SETTABLEKS                       R11 R10 K14 ["strokeThickness"]
      619 SETTABLEKS                       R10 R9 K2 ["outerView"]
      621 SETTABLE                         R9 R7 R8
      622 LOADB                            R8 0
      623 NEWTABLE                         R9 0 0
      625 SETTABLE                         R9 R7 R8
      626 JUMP                             ; [+1]
      627 LOADNIL                          R7
      628 GETUPVAL                         R9 0
      629 GETTABLEKS                       R9 R9 K51 ["FoundationInternalTextInputCornerRadius"]
      631 JUMPIFNOT                        R9 ; [+63]
      632 NEWTABLE                         R8 4 0
      634 GETUPVAL                         R9 1
      635 GETTABLEKS                       R9 R9 K33 ["XSmall"]
      637 DUPTABLE                         R10 K83 [{"outerView"}]
      638 DUPTABLE                         R11 K96 [{"tag"}]
      639 NEWTABLE                         R12 1 0
      641 LOADB                            R13 1
      642 SETTABLEKS                       R13 R12 K47 ["radius-small"]
      644 SETTABLEKS                       R12 R11 K7 ["tag"]
      646 SETTABLEKS                       R11 R10 K2 ["outerView"]
      648 SETTABLE                         R10 R8 R9
      649 GETUPVAL                         R9 1
      650 GETTABLEKS                       R9 R9 K49 ["Small"]
      652 DUPTABLE                         R10 K83 [{"outerView"}]
      653 DUPTABLE                         R11 K96 [{"tag"}]
      654 NEWTABLE                         R12 1 0
      656 LOADB                            R13 1
      657 SETTABLEKS                       R13 R12 K62 ["radius-medium"]
      659 SETTABLEKS                       R12 R11 K7 ["tag"]
      661 SETTABLEKS                       R11 R10 K2 ["outerView"]
      663 SETTABLE                         R10 R8 R9
      664 GETUPVAL                         R9 1
      665 GETTABLEKS                       R9 R9 K63 ["Medium"]
      667 DUPTABLE                         R10 K83 [{"outerView"}]
      668 DUPTABLE                         R11 K96 [{"tag"}]
      669 NEWTABLE                         R12 1 0
      671 LOADB                            R13 1
      672 SETTABLEKS                       R13 R12 K62 ["radius-medium"]
      674 SETTABLEKS                       R12 R11 K7 ["tag"]
      676 SETTABLEKS                       R11 R10 K2 ["outerView"]
      678 SETTABLE                         R10 R8 R9
      679 GETUPVAL                         R9 1
      680 GETTABLEKS                       R9 R9 K74 ["Large"]
      682 DUPTABLE                         R10 K83 [{"outerView"}]
      683 DUPTABLE                         R11 K96 [{"tag"}]
      684 NEWTABLE                         R12 1 0
      686 LOADB                            R13 1
      687 SETTABLEKS                       R13 R12 K62 ["radius-medium"]
      689 SETTABLEKS                       R12 R11 K7 ["tag"]
      691 SETTABLEKS                       R11 R10 K2 ["outerView"]
      693 SETTABLE                         R10 R8 R9
      694 JUMP                             ; [+1]
      695 LOADNIL                          R8
      696 GETUPVAL                         R10 0
      697 GETTABLEKS                       R10 R10 K51 ["FoundationInternalTextInputCornerRadius"]
      699 JUMPIFNOT                        R10 ; [+93]
      700 NEWTABLE                         R9 8 0
      702 GETUPVAL                         R10 6
      703 GETTABLEKS                       R10 R10 K88 ["None"]
      705 DUPTABLE                         R11 K83 [{"outerView"}]
      706 DUPTABLE                         R12 K96 [{"tag"}]
      707 NEWTABLE                         R13 1 0
      709 LOADB                            R14 1
      710 SETTABLEKS                       R14 R13 K97 ["radius-none"]
      712 SETTABLEKS                       R13 R12 K7 ["tag"]
      714 SETTABLEKS                       R12 R11 K2 ["outerView"]
      716 SETTABLE                         R11 R9 R10
      717 GETUPVAL                         R10 6
      718 GETTABLEKS                       R10 R10 K33 ["XSmall"]
      720 DUPTABLE                         R11 K83 [{"outerView"}]
      721 DUPTABLE                         R12 K96 [{"tag"}]
      722 NEWTABLE                         R13 1 0
      724 LOADB                            R14 1
      725 SETTABLEKS                       R14 R13 K98 ["radius-xsmall"]
      727 SETTABLEKS                       R13 R12 K7 ["tag"]
      729 SETTABLEKS                       R12 R11 K2 ["outerView"]
      731 SETTABLE                         R11 R9 R10
      732 GETUPVAL                         R10 6
      733 GETTABLEKS                       R10 R10 K49 ["Small"]
      735 DUPTABLE                         R11 K83 [{"outerView"}]
      736 DUPTABLE                         R12 K96 [{"tag"}]
      737 NEWTABLE                         R13 1 0
      739 LOADB                            R14 1
      740 SETTABLEKS                       R14 R13 K47 ["radius-small"]
      742 SETTABLEKS                       R13 R12 K7 ["tag"]
      744 SETTABLEKS                       R12 R11 K2 ["outerView"]
      746 SETTABLE                         R11 R9 R10
      747 GETUPVAL                         R10 6
      748 GETTABLEKS                       R10 R10 K63 ["Medium"]
      750 DUPTABLE                         R11 K83 [{"outerView"}]
      751 DUPTABLE                         R12 K96 [{"tag"}]
      752 NEWTABLE                         R13 1 0
      754 LOADB                            R14 1
      755 SETTABLEKS                       R14 R13 K62 ["radius-medium"]
      757 SETTABLEKS                       R13 R12 K7 ["tag"]
      759 SETTABLEKS                       R12 R11 K2 ["outerView"]
      761 SETTABLE                         R11 R9 R10
      762 GETUPVAL                         R10 6
      763 GETTABLEKS                       R10 R10 K74 ["Large"]
      765 DUPTABLE                         R11 K83 [{"outerView"}]
      766 DUPTABLE                         R12 K96 [{"tag"}]
      767 NEWTABLE                         R13 1 0
      769 LOADB                            R14 1
      770 SETTABLEKS                       R14 R13 K99 ["radius-large"]
      772 SETTABLEKS                       R13 R12 K7 ["tag"]
      774 SETTABLEKS                       R12 R11 K2 ["outerView"]
      776 SETTABLE                         R11 R9 R10
      777 GETUPVAL                         R10 6
      778 GETTABLEKS                       R10 R10 K100 ["Circle"]
      780 DUPTABLE                         R11 K83 [{"outerView"}]
      781 DUPTABLE                         R12 K96 [{"tag"}]
      782 NEWTABLE                         R13 1 0
      784 LOADB                            R14 1
      785 SETTABLEKS                       R14 R13 K101 ["radius-circle"]
      787 SETTABLEKS                       R13 R12 K7 ["tag"]
      789 SETTABLEKS                       R12 R11 K2 ["outerView"]
      791 SETTABLE                         R11 R9 R10
      792 JUMP                             ; [+1]
      793 LOADNIL                          R9
      794 DUPTABLE                         R10 K110 [{"common", "sizes", "variants", "multiline", "defaultRadius", "radius", "errorState", "focusedState", "hoverState"}]
      795 SETTABLEKS                       R1 R10 K102 ["common"]
      797 SETTABLEKS                       R3 R10 K103 ["sizes"]
      799 SETTABLEKS                       R4 R10 K104 ["variants"]
      801 GETUPVAL                         R12 0
      802 GETTABLEKS                       R12 R12 K6 ["FoundationCleanupTextInputPolyfill"]
      804 JUMPIFNOT                        R12 ; [+2]
      805 LOADNIL                          R11
      806 JUMP                             ; [+1]
      807 MOVE                             R11 R2
      808 SETTABLEKS                       R11 R10 K105 ["multiline"]
      810 SETTABLEKS                       R8 R10 K106 ["defaultRadius"]
      812 SETTABLEKS                       R9 R10 K36 ["radius"]
      814 SETTABLEKS                       R5 R10 K107 ["errorState"]
      816 SETTABLEKS                       R6 R10 K108 ["focusedState"]
      818 SETTABLEKS                       R7 R10 K109 ["hoverState"]
      820 RETURN                           R10 1

PROTO_2:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["useVariants"]
        3 LOADK                            R8 K1 ["TextInput"]
        4 GETUPVAL                         R9 1
        5 MOVE                             R10 R0
        6 CALL                             R7 3 1
        7 GETUPVAL                         R8 2
        8 GETTABLEKS                       R8 R8 K2 ["FoundationTextInputAlignStrokeBehavior"]
       10 JUMPIFNOT                        R8 ; [+95]
       11 GETUPVAL                         R9 2
       12 GETTABLEKS                       R9 R9 K3 ["FoundationInternalTextInputVariants"]
       14 JUMPIFNOT                        R9 ; [+9]
       15 GETTABLEKS                       R9 R7 K4 ["variants"]
       17 MOVE                             R10 R2
       18 JUMPIF                           R10 ; [+3]
       19 GETUPVAL                         R10 3
       20 GETTABLEKS                       R10 R10 K5 ["Standard"]
       22 GETTABLE                         R8 R9 R10
       23 JUMP                             ; [+1]
       24 LOADNIL                          R8
       25 GETUPVAL                         R9 4
       26 GETTABLEKS                       R10 R7 K6 ["common"]
       28 GETTABLEKS                       R12 R7 K7 ["sizes"]
       30 GETTABLE                         R11 R12 R1
       31 GETUPVAL                         R13 2
       32 GETTABLEKS                       R13 R13 K3 ["FoundationInternalTextInputVariants"]
       34 JUMPIFNOT                        R13 ; [+7]
       35 GETUPVAL                         R13 3
       36 GETTABLEKS                       R13 R13 K8 ["Utility"]
       38 JUMPIFEQ                         R2 R13 ; [+3]
       40 MOVE                             R12 R8
       41 JUMP                             ; [+2]
       42 NEWTABLE                         R12 0 0
       44 GETUPVAL                         R14 2
       45 GETTABLEKS                       R14 R14 K9 ["FoundationCleanupTextInputPolyfill"]
       47 JUMPIFNOT                        R14 ; [+2]
       48 LOADNIL                          R13
       49 JUMP                             ; [+2]
       50 GETTABLEKS                       R13 R7 K10 ["multiline"]
       52 GETUPVAL                         R15 2
       53 GETTABLEKS                       R15 R15 K11 ["FoundationInternalTextInputCornerRadius"]
       55 JUMPIFNOT                        R15 ; [+9]
       56 JUMPIFNOT                        R3 ; [+4]
       57 GETTABLEKS                       R15 R7 K12 ["radius"]
       59 GETTABLE                         R14 R15 R3
       60 JUMP                             ; [+6]
       61 GETTABLEKS                       R15 R7 K13 ["defaultRadius"]
       63 GETTABLE                         R14 R15 R1
       64 JUMP                             ; [+2]
       65 NEWTABLE                         R14 0 0
       67 JUMPIFEQKNIL                     R5 ; [+5]
       69 GETTABLEKS                       R16 R7 K14 ["hoverState"]
       71 GETTABLE                         R15 R16 R5
       72 JUMP                             ; [+2]
       73 NEWTABLE                         R15 0 0
       75 JUMPIFEQKNIL                     R4 ; [+5]
       77 GETTABLEKS                       R17 R7 K15 ["focusedState"]
       79 GETTABLE                         R16 R17 R4
       80 JUMP                             ; [+2]
       81 NEWTABLE                         R16 0 0
       83 JUMPIFEQKNIL                     R6 ; [+5]
       85 GETTABLEKS                       R18 R7 K16 ["errorState"]
       87 GETTABLE                         R17 R18 R6
       88 JUMP                             ; [+2]
       89 NEWTABLE                         R17 0 0
       91 GETUPVAL                         R19 2
       92 GETTABLEKS                       R19 R19 K3 ["FoundationInternalTextInputVariants"]
       94 JUMPIFNOT                        R19 ; [+7]
       95 GETUPVAL                         R19 3
       96 GETTABLEKS                       R19 R19 K8 ["Utility"]
       98 JUMPIFNOTEQ                      R2 R19 ; [+3]
      100 MOVE                             R18 R8
      101 JUMP                             ; [+2]
      102 NEWTABLE                         R18 0 0
      104 CALL                             R9 9 -1
      105 RETURN                           R9 -1
      106 GETUPVAL                         R8 4
      107 GETTABLEKS                       R9 R7 K6 ["common"]
      109 GETTABLEKS                       R11 R7 K7 ["sizes"]
      111 GETTABLE                         R10 R11 R1
      112 GETUPVAL                         R12 2
      113 GETTABLEKS                       R12 R12 K9 ["FoundationCleanupTextInputPolyfill"]
      115 JUMPIFNOT                        R12 ; [+2]
      116 LOADNIL                          R11
      117 JUMP                             ; [+2]
      118 GETTABLEKS                       R11 R7 K10 ["multiline"]
      120 GETUPVAL                         R13 2
      121 GETTABLEKS                       R13 R13 K11 ["FoundationInternalTextInputCornerRadius"]
      123 JUMPIFNOT                        R13 ; [+9]
      124 JUMPIFNOT                        R3 ; [+4]
      125 GETTABLEKS                       R13 R7 K12 ["radius"]
      127 GETTABLE                         R12 R13 R3
      128 JUMP                             ; [+6]
      129 GETTABLEKS                       R13 R7 K13 ["defaultRadius"]
      131 GETTABLE                         R12 R13 R1
      132 JUMP                             ; [+2]
      133 NEWTABLE                         R12 0 0
      135 CALL                             R8 4 -1
      136 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["InputSize"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["InputVariant"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Enums"]
       39 GETTABLEKS                       R7 R7 K13 ["IconSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K10 ["Enums"]
       46 GETTABLEKS                       R8 R8 K14 ["Radius"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Utility"]
       53 GETTABLEKS                       R9 R9 K16 ["Flags"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K15 ["Utility"]
       60 GETTABLEKS                       R10 R10 K17 ["composeStyleVariant"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K18 ["Providers"]
       67 GETTABLEKS                       R11 R11 K19 ["Style"]
       69 GETTABLEKS                       R11 R11 K20 ["Tokens"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K18 ["Providers"]
       76 GETTABLEKS                       R12 R12 K19 ["Style"]
       78 GETTABLEKS                       R12 R12 K21 ["VariantsContext"]
       80 CALL                             R11 1 1
       81 DUPCLOSURE                       R12 K22 [PROTO_0]
       82 CAPTURE                          VAL R8
       83 DUPCLOSURE                       R13 K23 [PROTO_1]
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R7
       91 DUPCLOSURE                       R14 K24 [PROTO_2]
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R9
       97 RETURN                           R14 1
