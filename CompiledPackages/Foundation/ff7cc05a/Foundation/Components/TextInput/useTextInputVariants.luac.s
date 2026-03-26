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
       37 JUMPIFNOT                        R4 ; [+7]
       38 GETTABLEKS                       R5 R0 K15 ["Color"]
       40 GETTABLEKS                       R4 R5 K19 ["Stroke"]
       42 GETTABLEKS                       R3 R4 K20 ["Emphasis"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R3
       46 SETTABLEKS                       R3 R2 K12 ["strokeStyle"]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R4 R5 K18 ["FoundationTextInputAlignStrokeBehavior"]
       51 JUMPIFNOT                        R4 ; [+5]
       52 GETTABLEKS                       R4 R0 K19 ["Stroke"]
       54 GETTABLEKS                       R3 R4 K21 ["Standard"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R3
       58 SETTABLEKS                       R3 R2 K13 ["strokeThickness"]
       60 LOADK                            R3 K10 ["row align-y-center"]
       61 SETTABLEKS                       R3 R2 K7 ["tag"]
       63 SETTABLEKS                       R2 R1 K2 ["outerView"]
       65 DUPTABLE                         R2 K8 [{"tag"}]
       66 LOADK                            R3 K22 ["text-align-x-left text-align-y-center clip content-emphasis gui-object-defaults"]
       67 SETTABLEKS                       R3 R2 K7 ["tag"]
       69 SETTABLEKS                       R2 R1 K3 ["textBox"]
       71 DUPTABLE                         R2 K24 [{"style"}]
       72 GETTABLEKS                       R5 R0 K15 ["Color"]
       74 GETTABLEKS                       R4 R5 K25 ["Content"]
       76 GETTABLEKS                       R3 R4 K26 ["Muted"]
       78 SETTABLEKS                       R3 R2 K23 ["style"]
       80 SETTABLEKS                       R2 R1 K4 ["icon"]
       82 GETUPVAL                         R4 0
       83 GETTABLEKS                       R3 R4 K6 ["FoundationCleanupTextInputPolyfill"]
       85 JUMPIFNOT                        R3 ; [+2]
       86 LOADNIL                          R2
       87 JUMP                             ; [+13]
       88 DUPTABLE                         R2 K28 [{"canvas", "outerContainer"}]
       89 DUPTABLE                         R3 K8 [{"tag"}]
       90 LOADK                            R4 K29 ["size-full-0"]
       91 SETTABLEKS                       R4 R3 K7 ["tag"]
       93 SETTABLEKS                       R3 R2 K27 ["canvas"]
       95 DUPTABLE                         R3 K8 [{"tag"}]
       96 LOADK                            R4 K29 ["size-full-0"]
       97 SETTABLEKS                       R4 R3 K7 ["tag"]
       99 SETTABLEKS                       R3 R2 K0 ["outerContainer"]
      101 NEWTABLE                         R3 4 0
      103 GETUPVAL                         R5 1
      104 GETTABLEKS                       R4 R5 K30 ["XSmall"]
      106 GETUPVAL                         R5 2
      107 DUPTABLE                         R6 K42 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      108 GETUPVAL                         R9 0
      109 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      111 JUMPIFNOT                        R8 ; [+2]
      112 LOADNIL                          R7
      113 JUMP                             ; [+1]
      114 LOADK                            R7 K43 ["size-full-600"]
      115 SETTABLEKS                       R7 R6 K31 ["canvasTag"]
      117 GETUPVAL                         R9 0
      118 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      120 JUMPIFNOT                        R8 ; [+2]
      121 LOADNIL                          R7
      122 JUMP                             ; [+1]
      123 LOADK                            R7 K44 ["radius-small"]
      124 SETTABLEKS                       R7 R6 K32 ["outerContainerTag"]
      126 GETTABLEKS                       R8 R0 K45 ["Radius"]
      128 GETTABLEKS                       R7 R8 K46 ["Small"]
      130 SETTABLEKS                       R7 R6 K33 ["radius"]
      132 GETUPVAL                         R9 0
      133 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      135 JUMPIFNOT                        R8 ; [+2]
      136 LOADNIL                          R7
      137 JUMP                             ; [+1]
      138 LOADK                            R7 K47 ["gap-small"]
      139 SETTABLEKS                       R7 R6 K34 ["innerContainerTag"]
      141 NEWTABLE                         R7 2 0
      143 GETUPVAL                         R10 0
      144 GETTABLEKS                       R9 R10 K48 ["FoundationInternalTextInputCornerRadius"]
      146 NOT                              R8 R9
      147 SETTABLEKS                       R8 R7 K49 ["size-full-600 radius-small gap-small"]
      149 GETUPVAL                         R9 0
      150 GETTABLEKS                       R8 R9 K48 ["FoundationInternalTextInputCornerRadius"]
      152 SETTABLEKS                       R8 R7 K50 ["size-full-600 gap-small"]
      154 SETTABLEKS                       R7 R6 K35 ["outerViewTag"]
      156 GETTABLEKS                       R8 R0 K51 ["Padding"]
      158 GETTABLEKS                       R7 R8 K30 ["XSmall"]
      160 SETTABLEKS                       R7 R6 K36 ["horizontalPadding"]
      162 GETUPVAL                         R9 0
      163 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      165 JUMPIFNOT                        R8 ; [+2]
      166 LOADNIL                          R7
      167 JUMP                             ; [+4]
      168 GETTABLEKS                       R8 R0 K52 ["Gap"]
      170 GETTABLEKS                       R7 R8 K46 ["Small"]
      172 SETTABLEKS                       R7 R6 K37 ["gap"]
      174 GETUPVAL                         R9 0
      175 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      177 JUMPIFNOT                        R8 ; [+2]
      178 LOADNIL                          R7
      179 JUMP                             ; [+1]
      180 LOADK                            R7 K53 ["text-body-small"]
      181 SETTABLEKS                       R7 R6 K38 ["textBoxTag"]
      183 GETTABLEKS                       R8 R0 K54 ["Typography"]
      185 GETTABLEKS                       R7 R8 K55 ["BodySmall"]
      187 SETTABLEKS                       R7 R6 K39 ["typography"]
      189 GETUPVAL                         R8 3
      190 GETTABLEKS                       R7 R8 K30 ["XSmall"]
      192 SETTABLEKS                       R7 R6 K40 ["iconSize"]
      194 GETTABLEKS                       R8 R0 K56 ["Size"]
      196 GETTABLEKS                       R7 R8 K57 ["Size_600"]
      198 SETTABLEKS                       R7 R6 K41 ["minContainerHeight"]
      200 CALL                             R5 1 1
      201 SETTABLE                         R5 R3 R4
      202 GETUPVAL                         R5 1
      203 GETTABLEKS                       R4 R5 K46 ["Small"]
      205 GETUPVAL                         R5 2
      206 DUPTABLE                         R6 K42 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      207 GETUPVAL                         R9 0
      208 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      210 JUMPIFNOT                        R8 ; [+2]
      211 LOADNIL                          R7
      212 JUMP                             ; [+1]
      213 LOADK                            R7 K58 ["size-full-800"]
      214 SETTABLEKS                       R7 R6 K31 ["canvasTag"]
      216 GETUPVAL                         R9 0
      217 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      219 JUMPIFNOT                        R8 ; [+2]
      220 LOADNIL                          R7
      221 JUMP                             ; [+1]
      222 LOADK                            R7 K59 ["radius-medium"]
      223 SETTABLEKS                       R7 R6 K32 ["outerContainerTag"]
      225 GETTABLEKS                       R8 R0 K45 ["Radius"]
      227 GETTABLEKS                       R7 R8 K60 ["Medium"]
      229 SETTABLEKS                       R7 R6 K33 ["radius"]
      231 GETUPVAL                         R9 0
      232 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      234 JUMPIFNOT                        R8 ; [+2]
      235 LOADNIL                          R7
      236 JUMP                             ; [+1]
      237 LOADK                            R7 K61 ["gap-medium"]
      238 SETTABLEKS                       R7 R6 K34 ["innerContainerTag"]
      240 NEWTABLE                         R7 2 0
      242 GETUPVAL                         R10 0
      243 GETTABLEKS                       R9 R10 K48 ["FoundationInternalTextInputCornerRadius"]
      245 NOT                              R8 R9
      246 SETTABLEKS                       R8 R7 K62 ["size-full-800 radius-medium gap-medium"]
      248 GETUPVAL                         R9 0
      249 GETTABLEKS                       R8 R9 K48 ["FoundationInternalTextInputCornerRadius"]
      251 SETTABLEKS                       R8 R7 K63 ["size-full-800 gap-medium"]
      253 SETTABLEKS                       R7 R6 K35 ["outerViewTag"]
      255 GETTABLEKS                       R8 R0 K51 ["Padding"]
      257 GETTABLEKS                       R7 R8 K46 ["Small"]
      259 SETTABLEKS                       R7 R6 K36 ["horizontalPadding"]
      261 GETUPVAL                         R9 0
      262 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      264 JUMPIFNOT                        R8 ; [+2]
      265 LOADNIL                          R7
      266 JUMP                             ; [+4]
      267 GETTABLEKS                       R8 R0 K52 ["Gap"]
      269 GETTABLEKS                       R7 R8 K60 ["Medium"]
      271 SETTABLEKS                       R7 R6 K37 ["gap"]
      273 GETUPVAL                         R9 0
      274 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      276 JUMPIFNOT                        R8 ; [+2]
      277 LOADNIL                          R7
      278 JUMP                             ; [+1]
      279 LOADK                            R7 K64 ["text-body-medium"]
      280 SETTABLEKS                       R7 R6 K38 ["textBoxTag"]
      282 GETTABLEKS                       R8 R0 K54 ["Typography"]
      284 GETTABLEKS                       R7 R8 K65 ["BodyMedium"]
      286 SETTABLEKS                       R7 R6 K39 ["typography"]
      288 GETUPVAL                         R8 3
      289 GETTABLEKS                       R7 R8 K30 ["XSmall"]
      291 SETTABLEKS                       R7 R6 K40 ["iconSize"]
      293 GETTABLEKS                       R8 R0 K56 ["Size"]
      295 GETTABLEKS                       R7 R8 K66 ["Size_800"]
      297 SETTABLEKS                       R7 R6 K41 ["minContainerHeight"]
      299 CALL                             R5 1 1
      300 SETTABLE                         R5 R3 R4
      301 GETUPVAL                         R5 1
      302 GETTABLEKS                       R4 R5 K60 ["Medium"]
      304 GETUPVAL                         R5 2
      305 DUPTABLE                         R6 K42 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      306 GETUPVAL                         R9 0
      307 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      309 JUMPIFNOT                        R8 ; [+2]
      310 LOADNIL                          R7
      311 JUMP                             ; [+1]
      312 LOADK                            R7 K67 ["size-full-1000"]
      313 SETTABLEKS                       R7 R6 K31 ["canvasTag"]
      315 GETUPVAL                         R9 0
      316 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      318 JUMPIFNOT                        R8 ; [+2]
      319 LOADNIL                          R7
      320 JUMP                             ; [+1]
      321 LOADK                            R7 K59 ["radius-medium"]
      322 SETTABLEKS                       R7 R6 K32 ["outerContainerTag"]
      324 GETTABLEKS                       R8 R0 K45 ["Radius"]
      326 GETTABLEKS                       R7 R8 K60 ["Medium"]
      328 SETTABLEKS                       R7 R6 K33 ["radius"]
      330 GETUPVAL                         R9 0
      331 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      333 JUMPIFNOT                        R8 ; [+2]
      334 LOADNIL                          R7
      335 JUMP                             ; [+1]
      336 LOADK                            R7 K68 ["gap-large"]
      337 SETTABLEKS                       R7 R6 K34 ["innerContainerTag"]
      339 NEWTABLE                         R7 2 0
      341 GETUPVAL                         R10 0
      342 GETTABLEKS                       R9 R10 K48 ["FoundationInternalTextInputCornerRadius"]
      344 NOT                              R8 R9
      345 SETTABLEKS                       R8 R7 K69 ["size-full-1000 radius-medium gap-large"]
      347 GETUPVAL                         R9 0
      348 GETTABLEKS                       R8 R9 K48 ["FoundationInternalTextInputCornerRadius"]
      350 SETTABLEKS                       R8 R7 K70 ["size-full-1000 gap-large"]
      352 SETTABLEKS                       R7 R6 K35 ["outerViewTag"]
      354 GETTABLEKS                       R8 R0 K51 ["Padding"]
      356 GETTABLEKS                       R7 R8 K46 ["Small"]
      358 SETTABLEKS                       R7 R6 K36 ["horizontalPadding"]
      360 GETUPVAL                         R9 0
      361 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      363 JUMPIFNOT                        R8 ; [+2]
      364 LOADNIL                          R7
      365 JUMP                             ; [+4]
      366 GETTABLEKS                       R8 R0 K52 ["Gap"]
      368 GETTABLEKS                       R7 R8 K71 ["Large"]
      370 SETTABLEKS                       R7 R6 K37 ["gap"]
      372 GETUPVAL                         R9 0
      373 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      375 JUMPIFNOT                        R8 ; [+2]
      376 LOADNIL                          R7
      377 JUMP                             ; [+1]
      378 LOADK                            R7 K64 ["text-body-medium"]
      379 SETTABLEKS                       R7 R6 K38 ["textBoxTag"]
      381 GETTABLEKS                       R8 R0 K54 ["Typography"]
      383 GETTABLEKS                       R7 R8 K65 ["BodyMedium"]
      385 SETTABLEKS                       R7 R6 K39 ["typography"]
      387 GETUPVAL                         R8 3
      388 GETTABLEKS                       R7 R8 K46 ["Small"]
      390 SETTABLEKS                       R7 R6 K40 ["iconSize"]
      392 GETTABLEKS                       R8 R0 K56 ["Size"]
      394 GETTABLEKS                       R7 R8 K72 ["Size_1000"]
      396 SETTABLEKS                       R7 R6 K41 ["minContainerHeight"]
      398 CALL                             R5 1 1
      399 SETTABLE                         R5 R3 R4
      400 GETUPVAL                         R5 1
      401 GETTABLEKS                       R4 R5 K71 ["Large"]
      403 GETUPVAL                         R5 2
      404 DUPTABLE                         R6 K42 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      405 GETUPVAL                         R9 0
      406 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      408 JUMPIFNOT                        R8 ; [+2]
      409 LOADNIL                          R7
      410 JUMP                             ; [+1]
      411 LOADK                            R7 K73 ["size-full-1200"]
      412 SETTABLEKS                       R7 R6 K31 ["canvasTag"]
      414 GETUPVAL                         R9 0
      415 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      417 JUMPIFNOT                        R8 ; [+2]
      418 LOADNIL                          R7
      419 JUMP                             ; [+1]
      420 LOADK                            R7 K59 ["radius-medium"]
      421 SETTABLEKS                       R7 R6 K32 ["outerContainerTag"]
      423 GETTABLEKS                       R8 R0 K45 ["Radius"]
      425 GETTABLEKS                       R7 R8 K60 ["Medium"]
      427 SETTABLEKS                       R7 R6 K33 ["radius"]
      429 GETUPVAL                         R9 0
      430 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      432 JUMPIFNOT                        R8 ; [+2]
      433 LOADNIL                          R7
      434 JUMP                             ; [+1]
      435 LOADK                            R7 K68 ["gap-large"]
      436 SETTABLEKS                       R7 R6 K34 ["innerContainerTag"]
      438 NEWTABLE                         R7 2 0
      440 GETUPVAL                         R10 0
      441 GETTABLEKS                       R9 R10 K48 ["FoundationInternalTextInputCornerRadius"]
      443 NOT                              R8 R9
      444 SETTABLEKS                       R8 R7 K74 ["size-full-1200 radius-medium gap-large"]
      446 GETUPVAL                         R9 0
      447 GETTABLEKS                       R8 R9 K48 ["FoundationInternalTextInputCornerRadius"]
      449 SETTABLEKS                       R8 R7 K75 ["size-full-1200 gap-large"]
      451 SETTABLEKS                       R7 R6 K35 ["outerViewTag"]
      453 GETTABLEKS                       R8 R0 K51 ["Padding"]
      455 GETTABLEKS                       R7 R8 K60 ["Medium"]
      457 SETTABLEKS                       R7 R6 K36 ["horizontalPadding"]
      459 GETUPVAL                         R9 0
      460 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      462 JUMPIFNOT                        R8 ; [+2]
      463 LOADNIL                          R7
      464 JUMP                             ; [+4]
      465 GETTABLEKS                       R8 R0 K52 ["Gap"]
      467 GETTABLEKS                       R7 R8 K71 ["Large"]
      469 SETTABLEKS                       R7 R6 K37 ["gap"]
      471 GETUPVAL                         R9 0
      472 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      474 JUMPIFNOT                        R8 ; [+2]
      475 LOADNIL                          R7
      476 JUMP                             ; [+1]
      477 LOADK                            R7 K76 ["text-body-large"]
      478 SETTABLEKS                       R7 R6 K38 ["textBoxTag"]
      480 GETTABLEKS                       R8 R0 K54 ["Typography"]
      482 GETTABLEKS                       R7 R8 K77 ["BodyLarge"]
      484 SETTABLEKS                       R7 R6 K39 ["typography"]
      486 GETUPVAL                         R8 3
      487 GETTABLEKS                       R7 R8 K46 ["Small"]
      489 SETTABLEKS                       R7 R6 K40 ["iconSize"]
      491 GETTABLEKS                       R8 R0 K56 ["Size"]
      493 GETTABLEKS                       R7 R8 K78 ["Size_1200"]
      495 SETTABLEKS                       R7 R6 K41 ["minContainerHeight"]
      497 CALL                             R5 1 1
      498 SETTABLE                         R5 R3 R4
      499 GETUPVAL                         R6 0
      500 GETTABLEKS                       R5 R6 K79 ["FoundationInternalTextInputVariants"]
      502 JUMPIFNOT                        R5 ; [+58]
      503 NEWTABLE                         R4 4 0
      505 GETUPVAL                         R6 4
      506 GETTABLEKS                       R5 R6 K21 ["Standard"]
      508 DUPTABLE                         R6 K80 [{"outerView"}]
      509 DUPTABLE                         R7 K81 [{"bgStyle"}]
      510 GETTABLEKS                       R10 R0 K15 ["Color"]
      512 GETTABLEKS                       R9 R10 K16 ["Shift"]
      514 GETTABLEKS                       R8 R9 K17 ["Shift_100"]
      516 SETTABLEKS                       R8 R7 K11 ["bgStyle"]
      518 SETTABLEKS                       R7 R6 K2 ["outerView"]
      520 SETTABLE                         R6 R4 R5
      521 GETUPVAL                         R6 4
      522 GETTABLEKS                       R5 R6 K82 ["Contrast"]
      524 DUPTABLE                         R6 K80 [{"outerView"}]
      525 DUPTABLE                         R7 K83 [{"bgStyle", "strokeStyle"}]
      526 GETTABLEKS                       R10 R0 K15 ["Color"]
      528 GETTABLEKS                       R9 R10 K16 ["Shift"]
      530 GETTABLEKS                       R8 R9 K84 ["Shift_200"]
      532 SETTABLEKS                       R8 R7 K11 ["bgStyle"]
      534 GETUPVAL                         R9 5
      535 GETTABLEKS                       R8 R9 K85 ["None"]
      537 SETTABLEKS                       R8 R7 K12 ["strokeStyle"]
      539 SETTABLEKS                       R7 R6 K2 ["outerView"]
      541 SETTABLE                         R6 R4 R5
      542 GETUPVAL                         R6 4
      543 GETTABLEKS                       R5 R6 K86 ["Utility"]
      545 DUPTABLE                         R6 K80 [{"outerView"}]
      546 DUPTABLE                         R7 K83 [{"bgStyle", "strokeStyle"}]
      547 GETUPVAL                         R9 5
      548 GETTABLEKS                       R8 R9 K85 ["None"]
      550 SETTABLEKS                       R8 R7 K11 ["bgStyle"]
      552 GETUPVAL                         R9 5
      553 GETTABLEKS                       R8 R9 K85 ["None"]
      555 SETTABLEKS                       R8 R7 K12 ["strokeStyle"]
      557 SETTABLEKS                       R7 R6 K2 ["outerView"]
      559 SETTABLE                         R6 R4 R5
      560 JUMP                             ; [+1]
      561 LOADNIL                          R4
      562 GETUPVAL                         R7 0
      563 GETTABLEKS                       R6 R7 K18 ["FoundationTextInputAlignStrokeBehavior"]
      565 JUMPIFNOT                        R6 ; [+21]
      566 NEWTABLE                         R5 2 0
      568 LOADB                            R6 1
      569 DUPTABLE                         R7 K80 [{"outerView"}]
      570 DUPTABLE                         R8 K87 [{"strokeStyle"}]
      571 GETTABLEKS                       R11 R0 K15 ["Color"]
      573 GETTABLEKS                       R10 R11 K88 ["System"]
      575 GETTABLEKS                       R9 R10 K89 ["Alert"]
      577 SETTABLEKS                       R9 R8 K12 ["strokeStyle"]
      579 SETTABLEKS                       R8 R7 K2 ["outerView"]
      581 SETTABLE                         R7 R5 R6
      582 LOADB                            R6 0
      583 NEWTABLE                         R7 0 0
      585 SETTABLE                         R7 R5 R6
      586 JUMP                             ; [+1]
      587 LOADNIL                          R5
      588 GETUPVAL                         R8 0
      589 GETTABLEKS                       R7 R8 K18 ["FoundationTextInputAlignStrokeBehavior"]
      591 JUMPIFNOT                        R7 ; [+28]
      592 NEWTABLE                         R6 2 0
      594 LOADB                            R7 1
      595 DUPTABLE                         R8 K80 [{"outerView"}]
      596 DUPTABLE                         R9 K90 [{"strokeStyle", "strokeThickness"}]
      597 GETTABLEKS                       R12 R0 K15 ["Color"]
      599 GETTABLEKS                       R11 R12 K88 ["System"]
      601 GETTABLEKS                       R10 R11 K20 ["Emphasis"]
      603 SETTABLEKS                       R10 R9 K12 ["strokeStyle"]
      605 GETTABLEKS                       R12 R0 K19 ["Stroke"]
      607 GETTABLEKS                       R11 R12 K21 ["Standard"]
      609 MULK                             R10 R11 K91 [2]
      610 SETTABLEKS                       R10 R9 K13 ["strokeThickness"]
      612 SETTABLEKS                       R9 R8 K2 ["outerView"]
      614 SETTABLE                         R8 R6 R7
      615 LOADB                            R7 0
      616 NEWTABLE                         R8 0 0
      618 SETTABLE                         R8 R6 R7
      619 JUMP                             ; [+1]
      620 LOADNIL                          R6
      621 GETUPVAL                         R9 0
      622 GETTABLEKS                       R8 R9 K18 ["FoundationTextInputAlignStrokeBehavior"]
      624 JUMPIFNOT                        R8 ; [+20]
      625 NEWTABLE                         R7 2 0
      627 LOADB                            R8 1
      628 DUPTABLE                         R9 K80 [{"outerView"}]
      629 DUPTABLE                         R10 K92 [{"strokeThickness"}]
      630 GETTABLEKS                       R13 R0 K19 ["Stroke"]
      632 GETTABLEKS                       R12 R13 K21 ["Standard"]
      634 MULK                             R11 R12 K91 [2]
      635 SETTABLEKS                       R11 R10 K13 ["strokeThickness"]
      637 SETTABLEKS                       R10 R9 K2 ["outerView"]
      639 SETTABLE                         R9 R7 R8
      640 LOADB                            R8 0
      641 NEWTABLE                         R9 0 0
      643 SETTABLE                         R9 R7 R8
      644 JUMP                             ; [+1]
      645 LOADNIL                          R7
      646 GETUPVAL                         R10 0
      647 GETTABLEKS                       R9 R10 K48 ["FoundationInternalTextInputCornerRadius"]
      649 JUMPIFNOT                        R9 ; [+63]
      650 NEWTABLE                         R8 4 0
      652 GETUPVAL                         R10 1
      653 GETTABLEKS                       R9 R10 K30 ["XSmall"]
      655 DUPTABLE                         R10 K80 [{"outerView"}]
      656 DUPTABLE                         R11 K8 [{"tag"}]
      657 NEWTABLE                         R12 1 0
      659 LOADB                            R13 1
      660 SETTABLEKS                       R13 R12 K44 ["radius-small"]
      662 SETTABLEKS                       R12 R11 K7 ["tag"]
      664 SETTABLEKS                       R11 R10 K2 ["outerView"]
      666 SETTABLE                         R10 R8 R9
      667 GETUPVAL                         R10 1
      668 GETTABLEKS                       R9 R10 K46 ["Small"]
      670 DUPTABLE                         R10 K80 [{"outerView"}]
      671 DUPTABLE                         R11 K8 [{"tag"}]
      672 NEWTABLE                         R12 1 0
      674 LOADB                            R13 1
      675 SETTABLEKS                       R13 R12 K59 ["radius-medium"]
      677 SETTABLEKS                       R12 R11 K7 ["tag"]
      679 SETTABLEKS                       R11 R10 K2 ["outerView"]
      681 SETTABLE                         R10 R8 R9
      682 GETUPVAL                         R10 1
      683 GETTABLEKS                       R9 R10 K60 ["Medium"]
      685 DUPTABLE                         R10 K80 [{"outerView"}]
      686 DUPTABLE                         R11 K8 [{"tag"}]
      687 NEWTABLE                         R12 1 0
      689 LOADB                            R13 1
      690 SETTABLEKS                       R13 R12 K59 ["radius-medium"]
      692 SETTABLEKS                       R12 R11 K7 ["tag"]
      694 SETTABLEKS                       R11 R10 K2 ["outerView"]
      696 SETTABLE                         R10 R8 R9
      697 GETUPVAL                         R10 1
      698 GETTABLEKS                       R9 R10 K71 ["Large"]
      700 DUPTABLE                         R10 K80 [{"outerView"}]
      701 DUPTABLE                         R11 K8 [{"tag"}]
      702 NEWTABLE                         R12 1 0
      704 LOADB                            R13 1
      705 SETTABLEKS                       R13 R12 K59 ["radius-medium"]
      707 SETTABLEKS                       R12 R11 K7 ["tag"]
      709 SETTABLEKS                       R11 R10 K2 ["outerView"]
      711 SETTABLE                         R10 R8 R9
      712 JUMP                             ; [+1]
      713 LOADNIL                          R8
      714 GETUPVAL                         R11 0
      715 GETTABLEKS                       R10 R11 K48 ["FoundationInternalTextInputCornerRadius"]
      717 JUMPIFNOT                        R10 ; [+93]
      718 NEWTABLE                         R9 8 0
      720 GETUPVAL                         R11 6
      721 GETTABLEKS                       R10 R11 K85 ["None"]
      723 DUPTABLE                         R11 K80 [{"outerView"}]
      724 DUPTABLE                         R12 K8 [{"tag"}]
      725 NEWTABLE                         R13 1 0
      727 LOADB                            R14 1
      728 SETTABLEKS                       R14 R13 K93 ["radius-none"]
      730 SETTABLEKS                       R13 R12 K7 ["tag"]
      732 SETTABLEKS                       R12 R11 K2 ["outerView"]
      734 SETTABLE                         R11 R9 R10
      735 GETUPVAL                         R11 6
      736 GETTABLEKS                       R10 R11 K30 ["XSmall"]
      738 DUPTABLE                         R11 K80 [{"outerView"}]
      739 DUPTABLE                         R12 K8 [{"tag"}]
      740 NEWTABLE                         R13 1 0
      742 LOADB                            R14 1
      743 SETTABLEKS                       R14 R13 K94 ["radius-xsmall"]
      745 SETTABLEKS                       R13 R12 K7 ["tag"]
      747 SETTABLEKS                       R12 R11 K2 ["outerView"]
      749 SETTABLE                         R11 R9 R10
      750 GETUPVAL                         R11 6
      751 GETTABLEKS                       R10 R11 K46 ["Small"]
      753 DUPTABLE                         R11 K80 [{"outerView"}]
      754 DUPTABLE                         R12 K8 [{"tag"}]
      755 NEWTABLE                         R13 1 0
      757 LOADB                            R14 1
      758 SETTABLEKS                       R14 R13 K44 ["radius-small"]
      760 SETTABLEKS                       R13 R12 K7 ["tag"]
      762 SETTABLEKS                       R12 R11 K2 ["outerView"]
      764 SETTABLE                         R11 R9 R10
      765 GETUPVAL                         R11 6
      766 GETTABLEKS                       R10 R11 K60 ["Medium"]
      768 DUPTABLE                         R11 K80 [{"outerView"}]
      769 DUPTABLE                         R12 K8 [{"tag"}]
      770 NEWTABLE                         R13 1 0
      772 LOADB                            R14 1
      773 SETTABLEKS                       R14 R13 K59 ["radius-medium"]
      775 SETTABLEKS                       R13 R12 K7 ["tag"]
      777 SETTABLEKS                       R12 R11 K2 ["outerView"]
      779 SETTABLE                         R11 R9 R10
      780 GETUPVAL                         R11 6
      781 GETTABLEKS                       R10 R11 K71 ["Large"]
      783 DUPTABLE                         R11 K80 [{"outerView"}]
      784 DUPTABLE                         R12 K8 [{"tag"}]
      785 NEWTABLE                         R13 1 0
      787 LOADB                            R14 1
      788 SETTABLEKS                       R14 R13 K95 ["radius-large"]
      790 SETTABLEKS                       R13 R12 K7 ["tag"]
      792 SETTABLEKS                       R12 R11 K2 ["outerView"]
      794 SETTABLE                         R11 R9 R10
      795 GETUPVAL                         R11 6
      796 GETTABLEKS                       R10 R11 K96 ["Circle"]
      798 DUPTABLE                         R11 K80 [{"outerView"}]
      799 DUPTABLE                         R12 K8 [{"tag"}]
      800 NEWTABLE                         R13 1 0
      802 LOADB                            R14 1
      803 SETTABLEKS                       R14 R13 K97 ["radius-circle"]
      805 SETTABLEKS                       R13 R12 K7 ["tag"]
      807 SETTABLEKS                       R12 R11 K2 ["outerView"]
      809 SETTABLE                         R11 R9 R10
      810 JUMP                             ; [+1]
      811 LOADNIL                          R9
      812 DUPTABLE                         R10 K106 [{"common", "sizes", "variants", "multiline", "defaultRadius", "radius", "errorState", "focusedState", "hoverState"}]
      813 SETTABLEKS                       R1 R10 K98 ["common"]
      815 SETTABLEKS                       R3 R10 K99 ["sizes"]
      817 SETTABLEKS                       R4 R10 K100 ["variants"]
      819 GETUPVAL                         R13 0
      820 GETTABLEKS                       R12 R13 K6 ["FoundationCleanupTextInputPolyfill"]
      822 JUMPIFNOT                        R12 ; [+2]
      823 LOADNIL                          R11
      824 JUMP                             ; [+1]
      825 MOVE                             R11 R2
      826 SETTABLEKS                       R11 R10 K101 ["multiline"]
      828 SETTABLEKS                       R8 R10 K102 ["defaultRadius"]
      830 SETTABLEKS                       R9 R10 K33 ["radius"]
      832 SETTABLEKS                       R5 R10 K103 ["errorState"]
      834 SETTABLEKS                       R6 R10 K104 ["focusedState"]
      836 SETTABLEKS                       R7 R10 K105 ["hoverState"]
      838 RETURN                           R10 1

PROTO_2:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R7 R8 K0 ["useVariants"]
        3 LOADK                            R8 K1 ["TextInput"]
        4 GETUPVAL                         R9 1
        5 MOVE                             R10 R0
        6 CALL                             R7 3 1
        7 GETUPVAL                         R9 2
        8 GETTABLEKS                       R8 R9 K2 ["FoundationTextInputAlignStrokeBehavior"]
       10 JUMPIFNOT                        R8 ; [+95]
       11 GETUPVAL                         R10 2
       12 GETTABLEKS                       R9 R10 K3 ["FoundationInternalTextInputVariants"]
       14 JUMPIFNOT                        R9 ; [+9]
       15 GETTABLEKS                       R9 R7 K4 ["variants"]
       17 MOVE                             R10 R2
       18 JUMPIF                           R10 ; [+3]
       19 GETUPVAL                         R11 3
       20 GETTABLEKS                       R10 R11 K5 ["Standard"]
       22 GETTABLE                         R8 R9 R10
       23 JUMP                             ; [+1]
       24 LOADNIL                          R8
       25 GETUPVAL                         R9 4
       26 GETTABLEKS                       R10 R7 K6 ["common"]
       28 GETTABLEKS                       R12 R7 K7 ["sizes"]
       30 GETTABLE                         R11 R12 R1
       31 GETUPVAL                         R14 2
       32 GETTABLEKS                       R13 R14 K3 ["FoundationInternalTextInputVariants"]
       34 JUMPIFNOT                        R13 ; [+7]
       35 GETUPVAL                         R14 3
       36 GETTABLEKS                       R13 R14 K8 ["Utility"]
       38 JUMPIFEQ                         R2 R13 ; [+3]
       40 MOVE                             R12 R8
       41 JUMP                             ; [+2]
       42 NEWTABLE                         R12 0 0
       44 GETUPVAL                         R15 2
       45 GETTABLEKS                       R14 R15 K9 ["FoundationCleanupTextInputPolyfill"]
       47 JUMPIFNOT                        R14 ; [+2]
       48 LOADNIL                          R13
       49 JUMP                             ; [+2]
       50 GETTABLEKS                       R13 R7 K10 ["multiline"]
       52 GETUPVAL                         R16 2
       53 GETTABLEKS                       R15 R16 K11 ["FoundationInternalTextInputCornerRadius"]
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
       91 GETUPVAL                         R20 2
       92 GETTABLEKS                       R19 R20 K3 ["FoundationInternalTextInputVariants"]
       94 JUMPIFNOT                        R19 ; [+7]
       95 GETUPVAL                         R20 3
       96 GETTABLEKS                       R19 R20 K8 ["Utility"]
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
      112 GETUPVAL                         R13 2
      113 GETTABLEKS                       R12 R13 K9 ["FoundationCleanupTextInputPolyfill"]
      115 JUMPIFNOT                        R12 ; [+2]
      116 LOADNIL                          R11
      117 JUMP                             ; [+2]
      118 GETTABLEKS                       R11 R7 K10 ["multiline"]
      120 GETUPVAL                         R14 2
      121 GETTABLEKS                       R13 R14 K11 ["FoundationInternalTextInputCornerRadius"]
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
