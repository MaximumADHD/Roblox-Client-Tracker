PROTO_0:
        0 DUPTABLE                         R1 K6 [{"canvas", "outerContainer", "innerContainer", "outerView", "textBox", "icon"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K7 ["FoundationCleanupTextInputPolyfill"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 LOADNIL                          R2
        6 JUMP                             ; [+5]
        7 DUPTABLE                         R2 K9 [{"tag"}]
        8 GETTABLEKS                       R3 R0 K10 ["canvasTag"]
       10 SETTABLEKS                       R3 R2 K8 ["tag"]
       12 SETTABLEKS                       R2 R1 K0 ["canvas"]
       14 DUPTABLE                         R2 K12 [{"tag", "minHeight"}]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K7 ["FoundationCleanupTextInputPolyfill"]
       18 JUMPIFNOT                        R4 ; [+2]
       19 LOADNIL                          R3
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R3 R0 K13 ["outerContainerTag"]
       23 SETTABLEKS                       R3 R2 K8 ["tag"]
       25 GETTABLEKS                       R3 R0 K14 ["minContainerHeight"]
       27 SETTABLEKS                       R3 R2 K11 ["minHeight"]
       29 SETTABLEKS                       R2 R1 K1 ["outerContainer"]
       31 DUPTABLE                         R2 K18 [{"tag", "horizontalPadding", "gap", "radius"}]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K7 ["FoundationCleanupTextInputPolyfill"]
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
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R4 R5 K7 ["FoundationCleanupTextInputPolyfill"]
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
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R4 R5 K7 ["FoundationCleanupTextInputPolyfill"]
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
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K6 ["FoundationCleanupTextInputPolyfill"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 LOADNIL                          R2
        6 JUMP                             ; [+4]
        7 DUPTABLE                         R2 K8 [{"tag"}]
        8 LOADK                            R3 K9 ["bg-shift-100"]
        9 SETTABLEKS                       R3 R2 K7 ["tag"]
       11 SETTABLEKS                       R2 R1 K0 ["outerContainer"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K6 ["FoundationCleanupTextInputPolyfill"]
       16 JUMPIFNOT                        R3 ; [+2]
       17 LOADNIL                          R2
       18 JUMP                             ; [+4]
       19 DUPTABLE                         R2 K8 [{"tag"}]
       20 LOADK                            R3 K10 ["row align-y-center"]
       21 SETTABLEKS                       R3 R2 K7 ["tag"]
       23 SETTABLEKS                       R2 R1 K1 ["innerContainer"]
       25 DUPTABLE                         R2 K14 [{"bgStyle", "strokeStyle", "strokeThickness", "tag"}]
       26 GETTABLEKS                       R5 R0 K15 ["Color"]
       28 GETTABLEKS                       R4 R5 K16 ["Shift"]
       30 GETTABLEKS                       R3 R4 K17 ["Shift_100"]
       32 SETTABLEKS                       R3 R2 K11 ["bgStyle"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K18 ["FoundationTextInputAlignStrokeBehavior"]
       37 JUMPIF                           R4 ; [+2]
       38 GETUPVAL                         R4 1
       39 JUMPIFNOT                        R4 ; [+7]
       40 GETTABLEKS                       R5 R0 K15 ["Color"]
       42 GETTABLEKS                       R4 R5 K19 ["Stroke"]
       44 GETTABLEKS                       R3 R4 K20 ["Emphasis"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R3
       48 SETTABLEKS                       R3 R2 K12 ["strokeStyle"]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R4 R5 K18 ["FoundationTextInputAlignStrokeBehavior"]
       53 JUMPIF                           R4 ; [+2]
       54 GETUPVAL                         R4 1
       55 JUMPIFNOT                        R4 ; [+5]
       56 GETTABLEKS                       R4 R0 K19 ["Stroke"]
       58 GETTABLEKS                       R3 R4 K21 ["Standard"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R3
       62 SETTABLEKS                       R3 R2 K13 ["strokeThickness"]
       64 LOADK                            R3 K10 ["row align-y-center"]
       65 SETTABLEKS                       R3 R2 K7 ["tag"]
       67 SETTABLEKS                       R2 R1 K2 ["outerView"]
       69 DUPTABLE                         R2 K8 [{"tag"}]
       70 LOADK                            R3 K22 ["text-align-x-left text-align-y-center clip content-emphasis gui-object-defaults"]
       71 SETTABLEKS                       R3 R2 K7 ["tag"]
       73 SETTABLEKS                       R2 R1 K3 ["textBox"]
       75 DUPTABLE                         R2 K24 [{"style"}]
       76 GETTABLEKS                       R5 R0 K15 ["Color"]
       78 GETTABLEKS                       R4 R5 K25 ["Content"]
       80 GETTABLEKS                       R3 R4 K26 ["Muted"]
       82 SETTABLEKS                       R3 R2 K23 ["style"]
       84 SETTABLEKS                       R2 R1 K4 ["icon"]
       86 GETUPVAL                         R4 0
       87 GETTABLEKS                       R3 R4 K6 ["FoundationCleanupTextInputPolyfill"]
       89 JUMPIFNOT                        R3 ; [+2]
       90 LOADNIL                          R2
       91 JUMP                             ; [+13]
       92 DUPTABLE                         R2 K28 [{"canvas", "outerContainer"}]
       93 DUPTABLE                         R3 K8 [{"tag"}]
       94 LOADK                            R4 K29 ["size-full-0"]
       95 SETTABLEKS                       R4 R3 K7 ["tag"]
       97 SETTABLEKS                       R3 R2 K27 ["canvas"]
       99 DUPTABLE                         R3 K8 [{"tag"}]
      100 LOADK                            R4 K29 ["size-full-0"]
      101 SETTABLEKS                       R4 R3 K7 ["tag"]
      103 SETTABLEKS                       R3 R2 K0 ["outerContainer"]
      105 NEWTABLE                         R3 4 0
      107 GETUPVAL                         R5 2
      108 GETTABLEKS                       R4 R5 K30 ["XSmall"]
      110 GETUPVAL                         R5 3
      111 DUPTABLE                         R6 K42 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      112 GETUPVAL                         R9 0
      113 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      115 JUMPIFNOT                        R8 ; [+2]
      116 LOADNIL                          R7
      117 JUMP                             ; [+1]
      118 LOADK                            R7 K43 ["size-full-600"]
      119 SETTABLEKS                       R7 R6 K31 ["canvasTag"]
      121 GETUPVAL                         R9 0
      122 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      124 JUMPIFNOT                        R8 ; [+2]
      125 LOADNIL                          R7
      126 JUMP                             ; [+1]
      127 LOADK                            R7 K44 ["radius-small"]
      128 SETTABLEKS                       R7 R6 K32 ["outerContainerTag"]
      130 GETTABLEKS                       R8 R0 K45 ["Radius"]
      132 GETTABLEKS                       R7 R8 K46 ["Small"]
      134 SETTABLEKS                       R7 R6 K33 ["radius"]
      136 GETUPVAL                         R9 0
      137 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      139 JUMPIFNOT                        R8 ; [+2]
      140 LOADNIL                          R7
      141 JUMP                             ; [+1]
      142 LOADK                            R7 K47 ["gap-small"]
      143 SETTABLEKS                       R7 R6 K34 ["innerContainerTag"]
      145 NEWTABLE                         R7 2 0
      147 GETUPVAL                         R10 0
      148 GETTABLEKS                       R9 R10 K48 ["FoundationInternalTextInputCornerRadius"]
      150 JUMPIF                           R9 ; [+1]
      151 GETUPVAL                         R9 1
      152 NOT                              R8 R9
      153 SETTABLEKS                       R8 R7 K49 ["size-full-600 radius-small gap-small"]
      155 GETUPVAL                         R9 0
      156 GETTABLEKS                       R8 R9 K48 ["FoundationInternalTextInputCornerRadius"]
      158 JUMPIF                           R8 ; [+1]
      159 GETUPVAL                         R8 1
      160 SETTABLEKS                       R8 R7 K50 ["size-full-600 gap-small"]
      162 SETTABLEKS                       R7 R6 K35 ["outerViewTag"]
      164 GETTABLEKS                       R8 R0 K51 ["Padding"]
      166 GETTABLEKS                       R7 R8 K30 ["XSmall"]
      168 SETTABLEKS                       R7 R6 K36 ["horizontalPadding"]
      170 GETUPVAL                         R9 0
      171 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      173 JUMPIFNOT                        R8 ; [+2]
      174 LOADNIL                          R7
      175 JUMP                             ; [+4]
      176 GETTABLEKS                       R8 R0 K52 ["Gap"]
      178 GETTABLEKS                       R7 R8 K46 ["Small"]
      180 SETTABLEKS                       R7 R6 K37 ["gap"]
      182 GETUPVAL                         R9 0
      183 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      185 JUMPIFNOT                        R8 ; [+2]
      186 LOADNIL                          R7
      187 JUMP                             ; [+1]
      188 LOADK                            R7 K53 ["text-body-small"]
      189 SETTABLEKS                       R7 R6 K38 ["textBoxTag"]
      191 GETTABLEKS                       R8 R0 K54 ["Typography"]
      193 GETTABLEKS                       R7 R8 K55 ["BodySmall"]
      195 SETTABLEKS                       R7 R6 K39 ["typography"]
      197 GETUPVAL                         R8 4
      198 GETTABLEKS                       R7 R8 K30 ["XSmall"]
      200 SETTABLEKS                       R7 R6 K40 ["iconSize"]
      202 GETTABLEKS                       R8 R0 K56 ["Size"]
      204 GETTABLEKS                       R7 R8 K57 ["Size_600"]
      206 SETTABLEKS                       R7 R6 K41 ["minContainerHeight"]
      208 CALL                             R5 1 1
      209 SETTABLE                         R5 R3 R4
      210 GETUPVAL                         R5 2
      211 GETTABLEKS                       R4 R5 K46 ["Small"]
      213 GETUPVAL                         R5 3
      214 DUPTABLE                         R6 K42 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      215 GETUPVAL                         R9 0
      216 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      218 JUMPIFNOT                        R8 ; [+2]
      219 LOADNIL                          R7
      220 JUMP                             ; [+1]
      221 LOADK                            R7 K58 ["size-full-800"]
      222 SETTABLEKS                       R7 R6 K31 ["canvasTag"]
      224 GETUPVAL                         R9 0
      225 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      227 JUMPIFNOT                        R8 ; [+2]
      228 LOADNIL                          R7
      229 JUMP                             ; [+1]
      230 LOADK                            R7 K59 ["radius-medium"]
      231 SETTABLEKS                       R7 R6 K32 ["outerContainerTag"]
      233 GETTABLEKS                       R8 R0 K45 ["Radius"]
      235 GETTABLEKS                       R7 R8 K60 ["Medium"]
      237 SETTABLEKS                       R7 R6 K33 ["radius"]
      239 GETUPVAL                         R9 0
      240 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      242 JUMPIFNOT                        R8 ; [+2]
      243 LOADNIL                          R7
      244 JUMP                             ; [+1]
      245 LOADK                            R7 K61 ["gap-medium"]
      246 SETTABLEKS                       R7 R6 K34 ["innerContainerTag"]
      248 NEWTABLE                         R7 2 0
      250 GETUPVAL                         R10 0
      251 GETTABLEKS                       R9 R10 K48 ["FoundationInternalTextInputCornerRadius"]
      253 JUMPIF                           R9 ; [+1]
      254 GETUPVAL                         R9 1
      255 NOT                              R8 R9
      256 SETTABLEKS                       R8 R7 K62 ["size-full-800 radius-medium gap-medium"]
      258 GETUPVAL                         R9 0
      259 GETTABLEKS                       R8 R9 K48 ["FoundationInternalTextInputCornerRadius"]
      261 JUMPIF                           R8 ; [+1]
      262 GETUPVAL                         R8 1
      263 SETTABLEKS                       R8 R7 K63 ["size-full-800 gap-medium"]
      265 SETTABLEKS                       R7 R6 K35 ["outerViewTag"]
      267 GETTABLEKS                       R8 R0 K51 ["Padding"]
      269 GETTABLEKS                       R7 R8 K46 ["Small"]
      271 SETTABLEKS                       R7 R6 K36 ["horizontalPadding"]
      273 GETUPVAL                         R9 0
      274 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      276 JUMPIFNOT                        R8 ; [+2]
      277 LOADNIL                          R7
      278 JUMP                             ; [+4]
      279 GETTABLEKS                       R8 R0 K52 ["Gap"]
      281 GETTABLEKS                       R7 R8 K60 ["Medium"]
      283 SETTABLEKS                       R7 R6 K37 ["gap"]
      285 GETUPVAL                         R9 0
      286 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      288 JUMPIFNOT                        R8 ; [+2]
      289 LOADNIL                          R7
      290 JUMP                             ; [+1]
      291 LOADK                            R7 K64 ["text-body-medium"]
      292 SETTABLEKS                       R7 R6 K38 ["textBoxTag"]
      294 GETTABLEKS                       R8 R0 K54 ["Typography"]
      296 GETTABLEKS                       R7 R8 K65 ["BodyMedium"]
      298 SETTABLEKS                       R7 R6 K39 ["typography"]
      300 GETUPVAL                         R8 4
      301 GETTABLEKS                       R7 R8 K30 ["XSmall"]
      303 SETTABLEKS                       R7 R6 K40 ["iconSize"]
      305 GETTABLEKS                       R8 R0 K56 ["Size"]
      307 GETTABLEKS                       R7 R8 K66 ["Size_800"]
      309 SETTABLEKS                       R7 R6 K41 ["minContainerHeight"]
      311 CALL                             R5 1 1
      312 SETTABLE                         R5 R3 R4
      313 GETUPVAL                         R5 2
      314 GETTABLEKS                       R4 R5 K60 ["Medium"]
      316 GETUPVAL                         R5 3
      317 DUPTABLE                         R6 K42 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      318 GETUPVAL                         R9 0
      319 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      321 JUMPIFNOT                        R8 ; [+2]
      322 LOADNIL                          R7
      323 JUMP                             ; [+1]
      324 LOADK                            R7 K67 ["size-full-1000"]
      325 SETTABLEKS                       R7 R6 K31 ["canvasTag"]
      327 GETUPVAL                         R9 0
      328 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      330 JUMPIFNOT                        R8 ; [+2]
      331 LOADNIL                          R7
      332 JUMP                             ; [+1]
      333 LOADK                            R7 K59 ["radius-medium"]
      334 SETTABLEKS                       R7 R6 K32 ["outerContainerTag"]
      336 GETTABLEKS                       R8 R0 K45 ["Radius"]
      338 GETTABLEKS                       R7 R8 K60 ["Medium"]
      340 SETTABLEKS                       R7 R6 K33 ["radius"]
      342 GETUPVAL                         R9 0
      343 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      345 JUMPIFNOT                        R8 ; [+2]
      346 LOADNIL                          R7
      347 JUMP                             ; [+1]
      348 LOADK                            R7 K68 ["gap-large"]
      349 SETTABLEKS                       R7 R6 K34 ["innerContainerTag"]
      351 NEWTABLE                         R7 2 0
      353 GETUPVAL                         R10 0
      354 GETTABLEKS                       R9 R10 K48 ["FoundationInternalTextInputCornerRadius"]
      356 JUMPIF                           R9 ; [+1]
      357 GETUPVAL                         R9 1
      358 NOT                              R8 R9
      359 SETTABLEKS                       R8 R7 K69 ["size-full-1000 radius-medium gap-large"]
      361 GETUPVAL                         R9 0
      362 GETTABLEKS                       R8 R9 K48 ["FoundationInternalTextInputCornerRadius"]
      364 JUMPIF                           R8 ; [+1]
      365 GETUPVAL                         R8 1
      366 SETTABLEKS                       R8 R7 K70 ["size-full-1000 gap-large"]
      368 SETTABLEKS                       R7 R6 K35 ["outerViewTag"]
      370 GETTABLEKS                       R8 R0 K51 ["Padding"]
      372 GETTABLEKS                       R7 R8 K46 ["Small"]
      374 SETTABLEKS                       R7 R6 K36 ["horizontalPadding"]
      376 GETUPVAL                         R9 0
      377 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      379 JUMPIFNOT                        R8 ; [+2]
      380 LOADNIL                          R7
      381 JUMP                             ; [+4]
      382 GETTABLEKS                       R8 R0 K52 ["Gap"]
      384 GETTABLEKS                       R7 R8 K71 ["Large"]
      386 SETTABLEKS                       R7 R6 K37 ["gap"]
      388 GETUPVAL                         R9 0
      389 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      391 JUMPIFNOT                        R8 ; [+2]
      392 LOADNIL                          R7
      393 JUMP                             ; [+1]
      394 LOADK                            R7 K64 ["text-body-medium"]
      395 SETTABLEKS                       R7 R6 K38 ["textBoxTag"]
      397 GETTABLEKS                       R8 R0 K54 ["Typography"]
      399 GETTABLEKS                       R7 R8 K65 ["BodyMedium"]
      401 SETTABLEKS                       R7 R6 K39 ["typography"]
      403 GETUPVAL                         R8 4
      404 GETTABLEKS                       R7 R8 K46 ["Small"]
      406 SETTABLEKS                       R7 R6 K40 ["iconSize"]
      408 GETTABLEKS                       R8 R0 K56 ["Size"]
      410 GETTABLEKS                       R7 R8 K72 ["Size_1000"]
      412 SETTABLEKS                       R7 R6 K41 ["minContainerHeight"]
      414 CALL                             R5 1 1
      415 SETTABLE                         R5 R3 R4
      416 GETUPVAL                         R5 2
      417 GETTABLEKS                       R4 R5 K71 ["Large"]
      419 GETUPVAL                         R5 3
      420 DUPTABLE                         R6 K42 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      421 GETUPVAL                         R9 0
      422 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      424 JUMPIFNOT                        R8 ; [+2]
      425 LOADNIL                          R7
      426 JUMP                             ; [+1]
      427 LOADK                            R7 K73 ["size-full-1200"]
      428 SETTABLEKS                       R7 R6 K31 ["canvasTag"]
      430 GETUPVAL                         R9 0
      431 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      433 JUMPIFNOT                        R8 ; [+2]
      434 LOADNIL                          R7
      435 JUMP                             ; [+1]
      436 LOADK                            R7 K59 ["radius-medium"]
      437 SETTABLEKS                       R7 R6 K32 ["outerContainerTag"]
      439 GETTABLEKS                       R8 R0 K45 ["Radius"]
      441 GETTABLEKS                       R7 R8 K60 ["Medium"]
      443 SETTABLEKS                       R7 R6 K33 ["radius"]
      445 GETUPVAL                         R9 0
      446 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      448 JUMPIFNOT                        R8 ; [+2]
      449 LOADNIL                          R7
      450 JUMP                             ; [+1]
      451 LOADK                            R7 K68 ["gap-large"]
      452 SETTABLEKS                       R7 R6 K34 ["innerContainerTag"]
      454 NEWTABLE                         R7 2 0
      456 GETUPVAL                         R10 0
      457 GETTABLEKS                       R9 R10 K48 ["FoundationInternalTextInputCornerRadius"]
      459 JUMPIF                           R9 ; [+1]
      460 GETUPVAL                         R9 1
      461 NOT                              R8 R9
      462 SETTABLEKS                       R8 R7 K74 ["size-full-1200 radius-medium gap-large"]
      464 GETUPVAL                         R9 0
      465 GETTABLEKS                       R8 R9 K48 ["FoundationInternalTextInputCornerRadius"]
      467 JUMPIF                           R8 ; [+1]
      468 GETUPVAL                         R8 1
      469 SETTABLEKS                       R8 R7 K75 ["size-full-1200 gap-large"]
      471 SETTABLEKS                       R7 R6 K35 ["outerViewTag"]
      473 GETTABLEKS                       R8 R0 K51 ["Padding"]
      475 GETTABLEKS                       R7 R8 K60 ["Medium"]
      477 SETTABLEKS                       R7 R6 K36 ["horizontalPadding"]
      479 GETUPVAL                         R9 0
      480 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      482 JUMPIFNOT                        R8 ; [+2]
      483 LOADNIL                          R7
      484 JUMP                             ; [+4]
      485 GETTABLEKS                       R8 R0 K52 ["Gap"]
      487 GETTABLEKS                       R7 R8 K71 ["Large"]
      489 SETTABLEKS                       R7 R6 K37 ["gap"]
      491 GETUPVAL                         R9 0
      492 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      494 JUMPIFNOT                        R8 ; [+2]
      495 LOADNIL                          R7
      496 JUMP                             ; [+1]
      497 LOADK                            R7 K76 ["text-body-large"]
      498 SETTABLEKS                       R7 R6 K38 ["textBoxTag"]
      500 GETTABLEKS                       R8 R0 K54 ["Typography"]
      502 GETTABLEKS                       R7 R8 K77 ["BodyLarge"]
      504 SETTABLEKS                       R7 R6 K39 ["typography"]
      506 GETUPVAL                         R8 4
      507 GETTABLEKS                       R7 R8 K46 ["Small"]
      509 SETTABLEKS                       R7 R6 K40 ["iconSize"]
      511 GETTABLEKS                       R8 R0 K56 ["Size"]
      513 GETTABLEKS                       R7 R8 K78 ["Size_1200"]
      515 SETTABLEKS                       R7 R6 K41 ["minContainerHeight"]
      517 CALL                             R5 1 1
      518 SETTABLE                         R5 R3 R4
      519 GETUPVAL                         R6 0
      520 GETTABLEKS                       R5 R6 K79 ["FoundationInternalTextInputVariants"]
      522 JUMPIF                           R5 ; [+2]
      523 GETUPVAL                         R5 1
      524 JUMPIFNOT                        R5 ; [+58]
      525 NEWTABLE                         R4 4 0
      527 GETUPVAL                         R6 5
      528 GETTABLEKS                       R5 R6 K21 ["Standard"]
      530 DUPTABLE                         R6 K80 [{"outerView"}]
      531 DUPTABLE                         R7 K81 [{"bgStyle"}]
      532 GETTABLEKS                       R10 R0 K15 ["Color"]
      534 GETTABLEKS                       R9 R10 K16 ["Shift"]
      536 GETTABLEKS                       R8 R9 K17 ["Shift_100"]
      538 SETTABLEKS                       R8 R7 K11 ["bgStyle"]
      540 SETTABLEKS                       R7 R6 K2 ["outerView"]
      542 SETTABLE                         R6 R4 R5
      543 GETUPVAL                         R6 5
      544 GETTABLEKS                       R5 R6 K82 ["Contrast"]
      546 DUPTABLE                         R6 K80 [{"outerView"}]
      547 DUPTABLE                         R7 K83 [{"bgStyle", "strokeStyle"}]
      548 GETTABLEKS                       R10 R0 K15 ["Color"]
      550 GETTABLEKS                       R9 R10 K16 ["Shift"]
      552 GETTABLEKS                       R8 R9 K84 ["Shift_200"]
      554 SETTABLEKS                       R8 R7 K11 ["bgStyle"]
      556 GETUPVAL                         R9 6
      557 GETTABLEKS                       R8 R9 K85 ["None"]
      559 SETTABLEKS                       R8 R7 K12 ["strokeStyle"]
      561 SETTABLEKS                       R7 R6 K2 ["outerView"]
      563 SETTABLE                         R6 R4 R5
      564 GETUPVAL                         R6 5
      565 GETTABLEKS                       R5 R6 K86 ["Utility"]
      567 DUPTABLE                         R6 K80 [{"outerView"}]
      568 DUPTABLE                         R7 K83 [{"bgStyle", "strokeStyle"}]
      569 GETUPVAL                         R9 6
      570 GETTABLEKS                       R8 R9 K85 ["None"]
      572 SETTABLEKS                       R8 R7 K11 ["bgStyle"]
      574 GETUPVAL                         R9 6
      575 GETTABLEKS                       R8 R9 K85 ["None"]
      577 SETTABLEKS                       R8 R7 K12 ["strokeStyle"]
      579 SETTABLEKS                       R7 R6 K2 ["outerView"]
      581 SETTABLE                         R6 R4 R5
      582 JUMP                             ; [+1]
      583 LOADNIL                          R4
      584 GETUPVAL                         R7 0
      585 GETTABLEKS                       R6 R7 K18 ["FoundationTextInputAlignStrokeBehavior"]
      587 JUMPIF                           R6 ; [+2]
      588 GETUPVAL                         R6 1
      589 JUMPIFNOT                        R6 ; [+21]
      590 NEWTABLE                         R5 2 0
      592 LOADB                            R6 1
      593 DUPTABLE                         R7 K80 [{"outerView"}]
      594 DUPTABLE                         R8 K87 [{"strokeStyle"}]
      595 GETTABLEKS                       R11 R0 K15 ["Color"]
      597 GETTABLEKS                       R10 R11 K88 ["System"]
      599 GETTABLEKS                       R9 R10 K89 ["Alert"]
      601 SETTABLEKS                       R9 R8 K12 ["strokeStyle"]
      603 SETTABLEKS                       R8 R7 K2 ["outerView"]
      605 SETTABLE                         R7 R5 R6
      606 LOADB                            R6 0
      607 NEWTABLE                         R7 0 0
      609 SETTABLE                         R7 R5 R6
      610 JUMP                             ; [+1]
      611 LOADNIL                          R5
      612 GETUPVAL                         R8 0
      613 GETTABLEKS                       R7 R8 K18 ["FoundationTextInputAlignStrokeBehavior"]
      615 JUMPIF                           R7 ; [+2]
      616 GETUPVAL                         R7 1
      617 JUMPIFNOT                        R7 ; [+28]
      618 NEWTABLE                         R6 2 0
      620 LOADB                            R7 1
      621 DUPTABLE                         R8 K80 [{"outerView"}]
      622 DUPTABLE                         R9 K90 [{"strokeStyle", "strokeThickness"}]
      623 GETTABLEKS                       R12 R0 K15 ["Color"]
      625 GETTABLEKS                       R11 R12 K88 ["System"]
      627 GETTABLEKS                       R10 R11 K20 ["Emphasis"]
      629 SETTABLEKS                       R10 R9 K12 ["strokeStyle"]
      631 GETTABLEKS                       R12 R0 K19 ["Stroke"]
      633 GETTABLEKS                       R11 R12 K21 ["Standard"]
      635 MULK                             R10 R11 K91 [2]
      636 SETTABLEKS                       R10 R9 K13 ["strokeThickness"]
      638 SETTABLEKS                       R9 R8 K2 ["outerView"]
      640 SETTABLE                         R8 R6 R7
      641 LOADB                            R7 0
      642 NEWTABLE                         R8 0 0
      644 SETTABLE                         R8 R6 R7
      645 JUMP                             ; [+1]
      646 LOADNIL                          R6
      647 GETUPVAL                         R9 0
      648 GETTABLEKS                       R8 R9 K18 ["FoundationTextInputAlignStrokeBehavior"]
      650 JUMPIF                           R8 ; [+2]
      651 GETUPVAL                         R8 1
      652 JUMPIFNOT                        R8 ; [+20]
      653 NEWTABLE                         R7 2 0
      655 LOADB                            R8 1
      656 DUPTABLE                         R9 K80 [{"outerView"}]
      657 DUPTABLE                         R10 K92 [{"strokeThickness"}]
      658 GETTABLEKS                       R13 R0 K19 ["Stroke"]
      660 GETTABLEKS                       R12 R13 K21 ["Standard"]
      662 MULK                             R11 R12 K91 [2]
      663 SETTABLEKS                       R11 R10 K13 ["strokeThickness"]
      665 SETTABLEKS                       R10 R9 K2 ["outerView"]
      667 SETTABLE                         R9 R7 R8
      668 LOADB                            R8 0
      669 NEWTABLE                         R9 0 0
      671 SETTABLE                         R9 R7 R8
      672 JUMP                             ; [+1]
      673 LOADNIL                          R7
      674 GETUPVAL                         R10 0
      675 GETTABLEKS                       R9 R10 K48 ["FoundationInternalTextInputCornerRadius"]
      677 JUMPIF                           R9 ; [+2]
      678 GETUPVAL                         R9 1
      679 JUMPIFNOT                        R9 ; [+63]
      680 NEWTABLE                         R8 4 0
      682 GETUPVAL                         R10 2
      683 GETTABLEKS                       R9 R10 K30 ["XSmall"]
      685 DUPTABLE                         R10 K80 [{"outerView"}]
      686 DUPTABLE                         R11 K8 [{"tag"}]
      687 NEWTABLE                         R12 1 0
      689 LOADB                            R13 1
      690 SETTABLEKS                       R13 R12 K44 ["radius-small"]
      692 SETTABLEKS                       R12 R11 K7 ["tag"]
      694 SETTABLEKS                       R11 R10 K2 ["outerView"]
      696 SETTABLE                         R10 R8 R9
      697 GETUPVAL                         R10 2
      698 GETTABLEKS                       R9 R10 K46 ["Small"]
      700 DUPTABLE                         R10 K80 [{"outerView"}]
      701 DUPTABLE                         R11 K8 [{"tag"}]
      702 NEWTABLE                         R12 1 0
      704 LOADB                            R13 1
      705 SETTABLEKS                       R13 R12 K59 ["radius-medium"]
      707 SETTABLEKS                       R12 R11 K7 ["tag"]
      709 SETTABLEKS                       R11 R10 K2 ["outerView"]
      711 SETTABLE                         R10 R8 R9
      712 GETUPVAL                         R10 2
      713 GETTABLEKS                       R9 R10 K60 ["Medium"]
      715 DUPTABLE                         R10 K80 [{"outerView"}]
      716 DUPTABLE                         R11 K8 [{"tag"}]
      717 NEWTABLE                         R12 1 0
      719 LOADB                            R13 1
      720 SETTABLEKS                       R13 R12 K59 ["radius-medium"]
      722 SETTABLEKS                       R12 R11 K7 ["tag"]
      724 SETTABLEKS                       R11 R10 K2 ["outerView"]
      726 SETTABLE                         R10 R8 R9
      727 GETUPVAL                         R10 2
      728 GETTABLEKS                       R9 R10 K71 ["Large"]
      730 DUPTABLE                         R10 K80 [{"outerView"}]
      731 DUPTABLE                         R11 K8 [{"tag"}]
      732 NEWTABLE                         R12 1 0
      734 LOADB                            R13 1
      735 SETTABLEKS                       R13 R12 K59 ["radius-medium"]
      737 SETTABLEKS                       R12 R11 K7 ["tag"]
      739 SETTABLEKS                       R11 R10 K2 ["outerView"]
      741 SETTABLE                         R10 R8 R9
      742 JUMP                             ; [+1]
      743 LOADNIL                          R8
      744 GETUPVAL                         R11 0
      745 GETTABLEKS                       R10 R11 K48 ["FoundationInternalTextInputCornerRadius"]
      747 JUMPIF                           R10 ; [+2]
      748 GETUPVAL                         R10 1
      749 JUMPIFNOT                        R10 ; [+99]
      750 NEWTABLE                         R9 8 0
      752 GETUPVAL                         R11 7
      753 GETTABLEKS                       R10 R11 K85 ["None"]
      755 DUPTABLE                         R11 K80 [{"outerView"}]
      756 DUPTABLE                         R12 K8 [{"tag"}]
      757 NEWTABLE                         R13 1 0
      759 LOADB                            R14 1
      760 SETTABLEKS                       R14 R13 K93 ["radius-none"]
      762 SETTABLEKS                       R13 R12 K7 ["tag"]
      764 SETTABLEKS                       R12 R11 K2 ["outerView"]
      766 SETTABLE                         R11 R9 R10
      767 GETUPVAL                         R11 7
      768 GETTABLEKS                       R10 R11 K30 ["XSmall"]
      770 DUPTABLE                         R11 K80 [{"outerView"}]
      771 DUPTABLE                         R12 K8 [{"tag"}]
      772 NEWTABLE                         R13 1 0
      774 LOADB                            R14 1
      775 SETTABLEKS                       R14 R13 K94 ["radius-xsmall"]
      777 SETTABLEKS                       R13 R12 K7 ["tag"]
      779 SETTABLEKS                       R12 R11 K2 ["outerView"]
      781 SETTABLE                         R11 R9 R10
      782 GETUPVAL                         R11 7
      783 GETTABLEKS                       R10 R11 K46 ["Small"]
      785 DUPTABLE                         R11 K80 [{"outerView"}]
      786 DUPTABLE                         R12 K8 [{"tag"}]
      787 NEWTABLE                         R13 1 0
      789 LOADB                            R14 1
      790 SETTABLEKS                       R14 R13 K44 ["radius-small"]
      792 SETTABLEKS                       R13 R12 K7 ["tag"]
      794 SETTABLEKS                       R12 R11 K2 ["outerView"]
      796 SETTABLE                         R11 R9 R10
      797 GETUPVAL                         R11 7
      798 GETTABLEKS                       R10 R11 K60 ["Medium"]
      800 DUPTABLE                         R11 K80 [{"outerView"}]
      801 DUPTABLE                         R12 K8 [{"tag"}]
      802 NEWTABLE                         R13 1 0
      804 LOADB                            R14 1
      805 SETTABLEKS                       R14 R13 K59 ["radius-medium"]
      807 SETTABLEKS                       R13 R12 K7 ["tag"]
      809 SETTABLEKS                       R12 R11 K2 ["outerView"]
      811 SETTABLE                         R11 R9 R10
      812 GETUPVAL                         R11 7
      813 GETTABLEKS                       R10 R11 K71 ["Large"]
      815 DUPTABLE                         R11 K80 [{"outerView"}]
      816 DUPTABLE                         R12 K8 [{"tag"}]
      817 NEWTABLE                         R13 1 0
      819 LOADB                            R14 1
      820 SETTABLEKS                       R14 R13 K95 ["radius-large"]
      822 SETTABLEKS                       R13 R12 K7 ["tag"]
      824 SETTABLEKS                       R12 R11 K2 ["outerView"]
      826 SETTABLE                         R11 R9 R10
      827 GETUPVAL                         R11 7
      828 GETTABLEKS                       R10 R11 K96 ["Circle"]
      830 GETUPVAL                         R13 0
      831 GETTABLEKS                       R12 R13 K97 ["FoundationTextInputSingleLineCircleRadius"]
      833 JUMPIFNOT                        R12 ; [+2]
      834 LOADNIL                          R11
      835 JUMP                             ; [+11]
      836 DUPTABLE                         R11 K80 [{"outerView"}]
      837 DUPTABLE                         R12 K8 [{"tag"}]
      838 NEWTABLE                         R13 1 0
      840 LOADB                            R14 1
      841 SETTABLEKS                       R14 R13 K98 ["radius-circle"]
      843 SETTABLEKS                       R13 R12 K7 ["tag"]
      845 SETTABLEKS                       R12 R11 K2 ["outerView"]
      847 SETTABLE                         R11 R9 R10
      848 JUMP                             ; [+1]
      849 LOADNIL                          R9
      850 DUPTABLE                         R10 K107 [{"common", "sizes", "variants", "multiline", "defaultRadius", "radius", "errorState", "focusedState", "hoverState"}]
      851 SETTABLEKS                       R1 R10 K99 ["common"]
      853 SETTABLEKS                       R3 R10 K100 ["sizes"]
      855 SETTABLEKS                       R4 R10 K101 ["variants"]
      857 GETUPVAL                         R13 0
      858 GETTABLEKS                       R12 R13 K6 ["FoundationCleanupTextInputPolyfill"]
      860 JUMPIFNOT                        R12 ; [+2]
      861 LOADNIL                          R11
      862 JUMP                             ; [+1]
      863 MOVE                             R11 R2
      864 SETTABLEKS                       R11 R10 K102 ["multiline"]
      866 SETTABLEKS                       R8 R10 K103 ["defaultRadius"]
      868 SETTABLEKS                       R9 R10 K33 ["radius"]
      870 SETTABLEKS                       R5 R10 K104 ["errorState"]
      872 SETTABLEKS                       R6 R10 K105 ["focusedState"]
      874 SETTABLEKS                       R7 R10 K106 ["hoverState"]
      876 RETURN                           R10 1

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R8 R9 K0 ["useVariants"]
        3 LOADK                            R9 K1 ["TextInput"]
        4 NEWCLOSURE                       R10 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R7
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 MOVE                             R11 R0
       14 CALL                             R8 3 1
       15 GETUPVAL                         R10 1
       16 GETTABLEKS                       R9 R10 K2 ["FoundationTextInputAlignStrokeBehavior"]
       18 JUMPIF                           R9 ; [+1]
       19 JUMPIFNOT                        R7 ; [+99]
       20 GETUPVAL                         R11 1
       21 GETTABLEKS                       R10 R11 K3 ["FoundationInternalTextInputVariants"]
       23 JUMPIF                           R10 ; [+1]
       24 JUMPIFNOT                        R7 ; [+9]
       25 GETTABLEKS                       R10 R8 K4 ["variants"]
       27 MOVE                             R11 R2
       28 JUMPIF                           R11 ; [+3]
       29 GETUPVAL                         R12 5
       30 GETTABLEKS                       R11 R12 K5 ["Standard"]
       32 GETTABLE                         R9 R10 R11
       33 JUMP                             ; [+1]
       34 LOADNIL                          R9
       35 GETUPVAL                         R10 8
       36 GETTABLEKS                       R11 R8 K6 ["common"]
       38 GETTABLEKS                       R13 R8 K7 ["sizes"]
       40 GETTABLE                         R12 R13 R1
       41 GETUPVAL                         R15 1
       42 GETTABLEKS                       R14 R15 K3 ["FoundationInternalTextInputVariants"]
       44 JUMPIF                           R14 ; [+1]
       45 JUMPIFNOT                        R7 ; [+7]
       46 GETUPVAL                         R15 5
       47 GETTABLEKS                       R14 R15 K8 ["Utility"]
       49 JUMPIFEQ                         R2 R14 ; [+3]
       51 MOVE                             R13 R9
       52 JUMP                             ; [+2]
       53 NEWTABLE                         R13 0 0
       55 GETUPVAL                         R16 1
       56 GETTABLEKS                       R15 R16 K9 ["FoundationCleanupTextInputPolyfill"]
       58 JUMPIFNOT                        R15 ; [+2]
       59 LOADNIL                          R14
       60 JUMP                             ; [+2]
       61 GETTABLEKS                       R14 R8 K10 ["multiline"]
       63 GETUPVAL                         R17 1
       64 GETTABLEKS                       R16 R17 K11 ["FoundationInternalTextInputCornerRadius"]
       66 JUMPIF                           R16 ; [+1]
       67 JUMPIFNOT                        R7 ; [+9]
       68 JUMPIFNOT                        R3 ; [+4]
       69 GETTABLEKS                       R16 R8 K12 ["radius"]
       71 GETTABLE                         R15 R16 R3
       72 JUMP                             ; [+6]
       73 GETTABLEKS                       R16 R8 K13 ["defaultRadius"]
       75 GETTABLE                         R15 R16 R1
       76 JUMP                             ; [+2]
       77 NEWTABLE                         R15 0 0
       79 JUMPIFEQKNIL                     R5 ; [+5]
       81 GETTABLEKS                       R17 R8 K14 ["hoverState"]
       83 GETTABLE                         R16 R17 R5
       84 JUMP                             ; [+2]
       85 NEWTABLE                         R16 0 0
       87 JUMPIFEQKNIL                     R4 ; [+5]
       89 GETTABLEKS                       R18 R8 K15 ["focusedState"]
       91 GETTABLE                         R17 R18 R4
       92 JUMP                             ; [+2]
       93 NEWTABLE                         R17 0 0
       95 JUMPIFEQKNIL                     R6 ; [+5]
       97 GETTABLEKS                       R19 R8 K16 ["errorState"]
       99 GETTABLE                         R18 R19 R6
      100 JUMP                             ; [+2]
      101 NEWTABLE                         R18 0 0
      103 GETUPVAL                         R21 1
      104 GETTABLEKS                       R20 R21 K3 ["FoundationInternalTextInputVariants"]
      106 JUMPIF                           R20 ; [+1]
      107 JUMPIFNOT                        R7 ; [+7]
      108 GETUPVAL                         R21 5
      109 GETTABLEKS                       R20 R21 K8 ["Utility"]
      111 JUMPIFNOTEQ                      R2 R20 ; [+3]
      113 MOVE                             R19 R9
      114 JUMP                             ; [+2]
      115 NEWTABLE                         R19 0 0
      117 CALL                             R10 9 -1
      118 RETURN                           R10 -1
      119 GETUPVAL                         R9 8
      120 GETTABLEKS                       R10 R8 K6 ["common"]
      122 GETTABLEKS                       R12 R8 K7 ["sizes"]
      124 GETTABLE                         R11 R12 R1
      125 GETUPVAL                         R14 1
      126 GETTABLEKS                       R13 R14 K9 ["FoundationCleanupTextInputPolyfill"]
      128 JUMPIFNOT                        R13 ; [+2]
      129 LOADNIL                          R12
      130 JUMP                             ; [+2]
      131 GETTABLEKS                       R12 R8 K10 ["multiline"]
      133 GETUPVAL                         R15 1
      134 GETTABLEKS                       R14 R15 K11 ["FoundationInternalTextInputCornerRadius"]
      136 JUMPIF                           R14 ; [+1]
      137 JUMPIFNOT                        R7 ; [+9]
      138 JUMPIFNOT                        R3 ; [+4]
      139 GETTABLEKS                       R14 R8 K12 ["radius"]
      141 GETTABLE                         R13 R14 R3
      142 JUMP                             ; [+6]
      143 GETTABLEKS                       R14 R8 K13 ["defaultRadius"]
      145 GETTABLE                         R13 R14 R1
      146 JUMP                             ; [+2]
      147 NEWTABLE                         R13 0 0
      149 CALL                             R9 4 -1
      150 RETURN                           R9 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R6 K11 ["InputSize"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Enums"]
       32 GETTABLEKS                       R6 R7 K12 ["InputVariant"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K10 ["Enums"]
       39 GETTABLEKS                       R7 R8 K13 ["IconSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K10 ["Enums"]
       46 GETTABLEKS                       R8 R9 K14 ["Radius"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K15 ["Utility"]
       53 GETTABLEKS                       R9 R10 K16 ["Flags"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K15 ["Utility"]
       60 GETTABLEKS                       R10 R11 K17 ["composeStyleVariant"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R13 R0 K18 ["Providers"]
       67 GETTABLEKS                       R12 R13 K19 ["Style"]
       69 GETTABLEKS                       R11 R12 K20 ["Tokens"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R14 R0 K18 ["Providers"]
       76 GETTABLEKS                       R13 R14 K19 ["Style"]
       78 GETTABLEKS                       R12 R13 K21 ["VariantsContext"]
       80 CALL                             R11 1 1
       81 DUPCLOSURE                       R12 K22 [PROTO_0]
       82 CAPTURE                          VAL R8
       83 DUPCLOSURE                       R13 K23 [PROTO_2]
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R7
       91 DUPCLOSURE                       R14 K24 [PROTO_3]
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R9
      101 RETURN                           R14 1
