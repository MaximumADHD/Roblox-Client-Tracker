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
       34 GETTABLEKS                       R5 R0 K15 ["Color"]
       36 GETTABLEKS                       R4 R5 K18 ["Stroke"]
       38 GETTABLEKS                       R3 R4 K19 ["Emphasis"]
       40 SETTABLEKS                       R3 R2 K12 ["strokeStyle"]
       42 GETTABLEKS                       R4 R0 K18 ["Stroke"]
       44 GETTABLEKS                       R3 R4 K20 ["Standard"]
       46 SETTABLEKS                       R3 R2 K13 ["strokeThickness"]
       48 LOADK                            R3 K10 ["row align-y-center"]
       49 SETTABLEKS                       R3 R2 K7 ["tag"]
       51 SETTABLEKS                       R2 R1 K2 ["outerView"]
       53 DUPTABLE                         R2 K8 [{"tag"}]
       54 LOADK                            R3 K21 ["text-align-x-left text-align-y-center clip content-emphasis gui-object-defaults"]
       55 SETTABLEKS                       R3 R2 K7 ["tag"]
       57 SETTABLEKS                       R2 R1 K3 ["textBox"]
       59 DUPTABLE                         R2 K23 [{"style"}]
       60 GETTABLEKS                       R5 R0 K15 ["Color"]
       62 GETTABLEKS                       R4 R5 K24 ["Content"]
       64 GETTABLEKS                       R3 R4 K25 ["Muted"]
       66 SETTABLEKS                       R3 R2 K22 ["style"]
       68 SETTABLEKS                       R2 R1 K4 ["icon"]
       70 GETUPVAL                         R4 0
       71 GETTABLEKS                       R3 R4 K6 ["FoundationCleanupTextInputPolyfill"]
       73 JUMPIFNOT                        R3 ; [+2]
       74 LOADNIL                          R2
       75 JUMP                             ; [+13]
       76 DUPTABLE                         R2 K27 [{"canvas", "outerContainer"}]
       77 DUPTABLE                         R3 K8 [{"tag"}]
       78 LOADK                            R4 K28 ["size-full-0"]
       79 SETTABLEKS                       R4 R3 K7 ["tag"]
       81 SETTABLEKS                       R3 R2 K26 ["canvas"]
       83 DUPTABLE                         R3 K8 [{"tag"}]
       84 LOADK                            R4 K28 ["size-full-0"]
       85 SETTABLEKS                       R4 R3 K7 ["tag"]
       87 SETTABLEKS                       R3 R2 K0 ["outerContainer"]
       89 NEWTABLE                         R3 4 0
       91 GETUPVAL                         R5 1
       92 GETTABLEKS                       R4 R5 K29 ["XSmall"]
       94 GETUPVAL                         R5 2
       95 DUPTABLE                         R6 K41 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
       96 GETUPVAL                         R9 0
       97 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
       99 JUMPIFNOT                        R8 ; [+2]
      100 LOADNIL                          R7
      101 JUMP                             ; [+1]
      102 LOADK                            R7 K42 ["size-full-600"]
      103 SETTABLEKS                       R7 R6 K30 ["canvasTag"]
      105 GETUPVAL                         R9 0
      106 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      108 JUMPIFNOT                        R8 ; [+2]
      109 LOADNIL                          R7
      110 JUMP                             ; [+1]
      111 LOADK                            R7 K43 ["radius-small"]
      112 SETTABLEKS                       R7 R6 K31 ["outerContainerTag"]
      114 GETTABLEKS                       R8 R0 K44 ["Radius"]
      116 GETTABLEKS                       R7 R8 K45 ["Small"]
      118 SETTABLEKS                       R7 R6 K32 ["radius"]
      120 GETUPVAL                         R9 0
      121 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      123 JUMPIFNOT                        R8 ; [+2]
      124 LOADNIL                          R7
      125 JUMP                             ; [+1]
      126 LOADK                            R7 K46 ["gap-small"]
      127 SETTABLEKS                       R7 R6 K33 ["innerContainerTag"]
      129 LOADK                            R7 K47 ["size-full-600 gap-small"]
      130 SETTABLEKS                       R7 R6 K34 ["outerViewTag"]
      132 GETTABLEKS                       R8 R0 K48 ["Padding"]
      134 GETTABLEKS                       R7 R8 K29 ["XSmall"]
      136 SETTABLEKS                       R7 R6 K35 ["horizontalPadding"]
      138 GETUPVAL                         R9 0
      139 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      141 JUMPIFNOT                        R8 ; [+2]
      142 LOADNIL                          R7
      143 JUMP                             ; [+4]
      144 GETTABLEKS                       R8 R0 K49 ["Gap"]
      146 GETTABLEKS                       R7 R8 K45 ["Small"]
      148 SETTABLEKS                       R7 R6 K36 ["gap"]
      150 GETUPVAL                         R9 0
      151 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      153 JUMPIFNOT                        R8 ; [+2]
      154 LOADNIL                          R7
      155 JUMP                             ; [+1]
      156 LOADK                            R7 K50 ["text-body-small"]
      157 SETTABLEKS                       R7 R6 K37 ["textBoxTag"]
      159 GETTABLEKS                       R8 R0 K51 ["Typography"]
      161 GETTABLEKS                       R7 R8 K52 ["BodySmall"]
      163 SETTABLEKS                       R7 R6 K38 ["typography"]
      165 GETUPVAL                         R8 3
      166 GETTABLEKS                       R7 R8 K29 ["XSmall"]
      168 SETTABLEKS                       R7 R6 K39 ["iconSize"]
      170 GETTABLEKS                       R8 R0 K53 ["Size"]
      172 GETTABLEKS                       R7 R8 K54 ["Size_600"]
      174 SETTABLEKS                       R7 R6 K40 ["minContainerHeight"]
      176 CALL                             R5 1 1
      177 SETTABLE                         R5 R3 R4
      178 GETUPVAL                         R5 1
      179 GETTABLEKS                       R4 R5 K45 ["Small"]
      181 GETUPVAL                         R5 2
      182 DUPTABLE                         R6 K41 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      183 GETUPVAL                         R9 0
      184 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      186 JUMPIFNOT                        R8 ; [+2]
      187 LOADNIL                          R7
      188 JUMP                             ; [+1]
      189 LOADK                            R7 K55 ["size-full-800"]
      190 SETTABLEKS                       R7 R6 K30 ["canvasTag"]
      192 GETUPVAL                         R9 0
      193 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      195 JUMPIFNOT                        R8 ; [+2]
      196 LOADNIL                          R7
      197 JUMP                             ; [+1]
      198 LOADK                            R7 K56 ["radius-medium"]
      199 SETTABLEKS                       R7 R6 K31 ["outerContainerTag"]
      201 GETTABLEKS                       R8 R0 K44 ["Radius"]
      203 GETTABLEKS                       R7 R8 K57 ["Medium"]
      205 SETTABLEKS                       R7 R6 K32 ["radius"]
      207 GETUPVAL                         R9 0
      208 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      210 JUMPIFNOT                        R8 ; [+2]
      211 LOADNIL                          R7
      212 JUMP                             ; [+1]
      213 LOADK                            R7 K58 ["gap-medium"]
      214 SETTABLEKS                       R7 R6 K33 ["innerContainerTag"]
      216 LOADK                            R7 K59 ["size-full-800 gap-medium"]
      217 SETTABLEKS                       R7 R6 K34 ["outerViewTag"]
      219 GETTABLEKS                       R8 R0 K48 ["Padding"]
      221 GETTABLEKS                       R7 R8 K45 ["Small"]
      223 SETTABLEKS                       R7 R6 K35 ["horizontalPadding"]
      225 GETUPVAL                         R9 0
      226 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      228 JUMPIFNOT                        R8 ; [+2]
      229 LOADNIL                          R7
      230 JUMP                             ; [+4]
      231 GETTABLEKS                       R8 R0 K49 ["Gap"]
      233 GETTABLEKS                       R7 R8 K57 ["Medium"]
      235 SETTABLEKS                       R7 R6 K36 ["gap"]
      237 GETUPVAL                         R9 0
      238 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      240 JUMPIFNOT                        R8 ; [+2]
      241 LOADNIL                          R7
      242 JUMP                             ; [+1]
      243 LOADK                            R7 K60 ["text-body-medium"]
      244 SETTABLEKS                       R7 R6 K37 ["textBoxTag"]
      246 GETTABLEKS                       R8 R0 K51 ["Typography"]
      248 GETTABLEKS                       R7 R8 K61 ["BodyMedium"]
      250 SETTABLEKS                       R7 R6 K38 ["typography"]
      252 GETUPVAL                         R8 3
      253 GETTABLEKS                       R7 R8 K29 ["XSmall"]
      255 SETTABLEKS                       R7 R6 K39 ["iconSize"]
      257 GETTABLEKS                       R8 R0 K53 ["Size"]
      259 GETTABLEKS                       R7 R8 K62 ["Size_800"]
      261 SETTABLEKS                       R7 R6 K40 ["minContainerHeight"]
      263 CALL                             R5 1 1
      264 SETTABLE                         R5 R3 R4
      265 GETUPVAL                         R5 1
      266 GETTABLEKS                       R4 R5 K57 ["Medium"]
      268 GETUPVAL                         R5 2
      269 DUPTABLE                         R6 K41 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      270 GETUPVAL                         R9 0
      271 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      273 JUMPIFNOT                        R8 ; [+2]
      274 LOADNIL                          R7
      275 JUMP                             ; [+1]
      276 LOADK                            R7 K63 ["size-full-1000"]
      277 SETTABLEKS                       R7 R6 K30 ["canvasTag"]
      279 GETUPVAL                         R9 0
      280 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      282 JUMPIFNOT                        R8 ; [+2]
      283 LOADNIL                          R7
      284 JUMP                             ; [+1]
      285 LOADK                            R7 K56 ["radius-medium"]
      286 SETTABLEKS                       R7 R6 K31 ["outerContainerTag"]
      288 GETTABLEKS                       R8 R0 K44 ["Radius"]
      290 GETTABLEKS                       R7 R8 K57 ["Medium"]
      292 SETTABLEKS                       R7 R6 K32 ["radius"]
      294 GETUPVAL                         R9 0
      295 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      297 JUMPIFNOT                        R8 ; [+2]
      298 LOADNIL                          R7
      299 JUMP                             ; [+1]
      300 LOADK                            R7 K64 ["gap-large"]
      301 SETTABLEKS                       R7 R6 K33 ["innerContainerTag"]
      303 LOADK                            R7 K65 ["size-full-1000 gap-large"]
      304 SETTABLEKS                       R7 R6 K34 ["outerViewTag"]
      306 GETTABLEKS                       R8 R0 K48 ["Padding"]
      308 GETTABLEKS                       R7 R8 K45 ["Small"]
      310 SETTABLEKS                       R7 R6 K35 ["horizontalPadding"]
      312 GETUPVAL                         R9 0
      313 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      315 JUMPIFNOT                        R8 ; [+2]
      316 LOADNIL                          R7
      317 JUMP                             ; [+4]
      318 GETTABLEKS                       R8 R0 K49 ["Gap"]
      320 GETTABLEKS                       R7 R8 K66 ["Large"]
      322 SETTABLEKS                       R7 R6 K36 ["gap"]
      324 GETUPVAL                         R9 0
      325 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      327 JUMPIFNOT                        R8 ; [+2]
      328 LOADNIL                          R7
      329 JUMP                             ; [+1]
      330 LOADK                            R7 K60 ["text-body-medium"]
      331 SETTABLEKS                       R7 R6 K37 ["textBoxTag"]
      333 GETTABLEKS                       R8 R0 K51 ["Typography"]
      335 GETTABLEKS                       R7 R8 K61 ["BodyMedium"]
      337 SETTABLEKS                       R7 R6 K38 ["typography"]
      339 GETUPVAL                         R8 3
      340 GETTABLEKS                       R7 R8 K45 ["Small"]
      342 SETTABLEKS                       R7 R6 K39 ["iconSize"]
      344 GETTABLEKS                       R8 R0 K53 ["Size"]
      346 GETTABLEKS                       R7 R8 K67 ["Size_1000"]
      348 SETTABLEKS                       R7 R6 K40 ["minContainerHeight"]
      350 CALL                             R5 1 1
      351 SETTABLE                         R5 R3 R4
      352 GETUPVAL                         R5 1
      353 GETTABLEKS                       R4 R5 K66 ["Large"]
      355 GETUPVAL                         R5 2
      356 DUPTABLE                         R6 K41 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      357 GETUPVAL                         R9 0
      358 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      360 JUMPIFNOT                        R8 ; [+2]
      361 LOADNIL                          R7
      362 JUMP                             ; [+1]
      363 LOADK                            R7 K68 ["size-full-1200"]
      364 SETTABLEKS                       R7 R6 K30 ["canvasTag"]
      366 GETUPVAL                         R9 0
      367 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      369 JUMPIFNOT                        R8 ; [+2]
      370 LOADNIL                          R7
      371 JUMP                             ; [+1]
      372 LOADK                            R7 K56 ["radius-medium"]
      373 SETTABLEKS                       R7 R6 K31 ["outerContainerTag"]
      375 GETTABLEKS                       R8 R0 K44 ["Radius"]
      377 GETTABLEKS                       R7 R8 K57 ["Medium"]
      379 SETTABLEKS                       R7 R6 K32 ["radius"]
      381 GETUPVAL                         R9 0
      382 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      384 JUMPIFNOT                        R8 ; [+2]
      385 LOADNIL                          R7
      386 JUMP                             ; [+1]
      387 LOADK                            R7 K64 ["gap-large"]
      388 SETTABLEKS                       R7 R6 K33 ["innerContainerTag"]
      390 LOADK                            R7 K69 ["size-full-1200 gap-large"]
      391 SETTABLEKS                       R7 R6 K34 ["outerViewTag"]
      393 GETTABLEKS                       R8 R0 K48 ["Padding"]
      395 GETTABLEKS                       R7 R8 K57 ["Medium"]
      397 SETTABLEKS                       R7 R6 K35 ["horizontalPadding"]
      399 GETUPVAL                         R9 0
      400 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      402 JUMPIFNOT                        R8 ; [+2]
      403 LOADNIL                          R7
      404 JUMP                             ; [+4]
      405 GETTABLEKS                       R8 R0 K49 ["Gap"]
      407 GETTABLEKS                       R7 R8 K66 ["Large"]
      409 SETTABLEKS                       R7 R6 K36 ["gap"]
      411 GETUPVAL                         R9 0
      412 GETTABLEKS                       R8 R9 K6 ["FoundationCleanupTextInputPolyfill"]
      414 JUMPIFNOT                        R8 ; [+2]
      415 LOADNIL                          R7
      416 JUMP                             ; [+1]
      417 LOADK                            R7 K70 ["text-body-large"]
      418 SETTABLEKS                       R7 R6 K37 ["textBoxTag"]
      420 GETTABLEKS                       R8 R0 K51 ["Typography"]
      422 GETTABLEKS                       R7 R8 K71 ["BodyLarge"]
      424 SETTABLEKS                       R7 R6 K38 ["typography"]
      426 GETUPVAL                         R8 3
      427 GETTABLEKS                       R7 R8 K45 ["Small"]
      429 SETTABLEKS                       R7 R6 K39 ["iconSize"]
      431 GETTABLEKS                       R8 R0 K53 ["Size"]
      433 GETTABLEKS                       R7 R8 K72 ["Size_1200"]
      435 SETTABLEKS                       R7 R6 K40 ["minContainerHeight"]
      437 CALL                             R5 1 1
      438 SETTABLE                         R5 R3 R4
      439 NEWTABLE                         R4 4 0
      441 GETUPVAL                         R6 4
      442 GETTABLEKS                       R5 R6 K20 ["Standard"]
      444 DUPTABLE                         R6 K73 [{"outerView"}]
      445 DUPTABLE                         R7 K74 [{"bgStyle"}]
      446 GETTABLEKS                       R10 R0 K15 ["Color"]
      448 GETTABLEKS                       R9 R10 K16 ["Shift"]
      450 GETTABLEKS                       R8 R9 K17 ["Shift_100"]
      452 SETTABLEKS                       R8 R7 K11 ["bgStyle"]
      454 SETTABLEKS                       R7 R6 K2 ["outerView"]
      456 SETTABLE                         R6 R4 R5
      457 GETUPVAL                         R6 4
      458 GETTABLEKS                       R5 R6 K75 ["Contrast"]
      460 DUPTABLE                         R6 K73 [{"outerView"}]
      461 DUPTABLE                         R7 K76 [{"bgStyle", "strokeStyle"}]
      462 GETTABLEKS                       R10 R0 K15 ["Color"]
      464 GETTABLEKS                       R9 R10 K16 ["Shift"]
      466 GETTABLEKS                       R8 R9 K77 ["Shift_200"]
      468 SETTABLEKS                       R8 R7 K11 ["bgStyle"]
      470 GETUPVAL                         R9 5
      471 GETTABLEKS                       R8 R9 K78 ["None"]
      473 SETTABLEKS                       R8 R7 K12 ["strokeStyle"]
      475 SETTABLEKS                       R7 R6 K2 ["outerView"]
      477 SETTABLE                         R6 R4 R5
      478 GETUPVAL                         R6 4
      479 GETTABLEKS                       R5 R6 K79 ["Utility"]
      481 DUPTABLE                         R6 K73 [{"outerView"}]
      482 DUPTABLE                         R7 K76 [{"bgStyle", "strokeStyle"}]
      483 GETUPVAL                         R9 5
      484 GETTABLEKS                       R8 R9 K78 ["None"]
      486 SETTABLEKS                       R8 R7 K11 ["bgStyle"]
      488 GETUPVAL                         R9 5
      489 GETTABLEKS                       R8 R9 K78 ["None"]
      491 SETTABLEKS                       R8 R7 K12 ["strokeStyle"]
      493 SETTABLEKS                       R7 R6 K2 ["outerView"]
      495 SETTABLE                         R6 R4 R5
      496 NEWTABLE                         R5 2 0
      498 LOADB                            R6 1
      499 DUPTABLE                         R7 K73 [{"outerView"}]
      500 DUPTABLE                         R8 K80 [{"strokeStyle"}]
      501 GETTABLEKS                       R11 R0 K15 ["Color"]
      503 GETTABLEKS                       R10 R11 K81 ["System"]
      505 GETTABLEKS                       R9 R10 K82 ["Alert"]
      507 SETTABLEKS                       R9 R8 K12 ["strokeStyle"]
      509 SETTABLEKS                       R8 R7 K2 ["outerView"]
      511 SETTABLE                         R7 R5 R6
      512 LOADB                            R6 0
      513 NEWTABLE                         R7 0 0
      515 SETTABLE                         R7 R5 R6
      516 NEWTABLE                         R6 2 0
      518 LOADB                            R7 1
      519 DUPTABLE                         R8 K73 [{"outerView"}]
      520 DUPTABLE                         R9 K83 [{"strokeStyle", "strokeThickness"}]
      521 GETTABLEKS                       R12 R0 K15 ["Color"]
      523 GETTABLEKS                       R11 R12 K81 ["System"]
      525 GETTABLEKS                       R10 R11 K19 ["Emphasis"]
      527 SETTABLEKS                       R10 R9 K12 ["strokeStyle"]
      529 GETTABLEKS                       R12 R0 K18 ["Stroke"]
      531 GETTABLEKS                       R11 R12 K20 ["Standard"]
      533 MULK                             R10 R11 K84 [2]
      534 SETTABLEKS                       R10 R9 K13 ["strokeThickness"]
      536 SETTABLEKS                       R9 R8 K2 ["outerView"]
      538 SETTABLE                         R8 R6 R7
      539 LOADB                            R7 0
      540 NEWTABLE                         R8 0 0
      542 SETTABLE                         R8 R6 R7
      543 NEWTABLE                         R7 2 0
      545 LOADB                            R8 1
      546 DUPTABLE                         R9 K73 [{"outerView"}]
      547 DUPTABLE                         R10 K85 [{"strokeThickness"}]
      548 GETTABLEKS                       R13 R0 K18 ["Stroke"]
      550 GETTABLEKS                       R12 R13 K20 ["Standard"]
      552 MULK                             R11 R12 K84 [2]
      553 SETTABLEKS                       R11 R10 K13 ["strokeThickness"]
      555 SETTABLEKS                       R10 R9 K2 ["outerView"]
      557 SETTABLE                         R9 R7 R8
      558 LOADB                            R8 0
      559 NEWTABLE                         R9 0 0
      561 SETTABLE                         R9 R7 R8
      562 NEWTABLE                         R8 4 0
      564 GETUPVAL                         R10 1
      565 GETTABLEKS                       R9 R10 K29 ["XSmall"]
      567 DUPTABLE                         R10 K73 [{"outerView"}]
      568 DUPTABLE                         R11 K8 [{"tag"}]
      569 NEWTABLE                         R12 1 0
      571 LOADB                            R13 1
      572 SETTABLEKS                       R13 R12 K43 ["radius-small"]
      574 SETTABLEKS                       R12 R11 K7 ["tag"]
      576 SETTABLEKS                       R11 R10 K2 ["outerView"]
      578 SETTABLE                         R10 R8 R9
      579 GETUPVAL                         R10 1
      580 GETTABLEKS                       R9 R10 K45 ["Small"]
      582 DUPTABLE                         R10 K73 [{"outerView"}]
      583 DUPTABLE                         R11 K8 [{"tag"}]
      584 NEWTABLE                         R12 1 0
      586 LOADB                            R13 1
      587 SETTABLEKS                       R13 R12 K56 ["radius-medium"]
      589 SETTABLEKS                       R12 R11 K7 ["tag"]
      591 SETTABLEKS                       R11 R10 K2 ["outerView"]
      593 SETTABLE                         R10 R8 R9
      594 GETUPVAL                         R10 1
      595 GETTABLEKS                       R9 R10 K57 ["Medium"]
      597 DUPTABLE                         R10 K73 [{"outerView"}]
      598 DUPTABLE                         R11 K8 [{"tag"}]
      599 NEWTABLE                         R12 1 0
      601 LOADB                            R13 1
      602 SETTABLEKS                       R13 R12 K56 ["radius-medium"]
      604 SETTABLEKS                       R12 R11 K7 ["tag"]
      606 SETTABLEKS                       R11 R10 K2 ["outerView"]
      608 SETTABLE                         R10 R8 R9
      609 GETUPVAL                         R10 1
      610 GETTABLEKS                       R9 R10 K66 ["Large"]
      612 DUPTABLE                         R10 K73 [{"outerView"}]
      613 DUPTABLE                         R11 K8 [{"tag"}]
      614 NEWTABLE                         R12 1 0
      616 LOADB                            R13 1
      617 SETTABLEKS                       R13 R12 K56 ["radius-medium"]
      619 SETTABLEKS                       R12 R11 K7 ["tag"]
      621 SETTABLEKS                       R11 R10 K2 ["outerView"]
      623 SETTABLE                         R10 R8 R9
      624 NEWTABLE                         R9 8 0
      626 GETUPVAL                         R11 6
      627 GETTABLEKS                       R10 R11 K78 ["None"]
      629 DUPTABLE                         R11 K73 [{"outerView"}]
      630 DUPTABLE                         R12 K8 [{"tag"}]
      631 NEWTABLE                         R13 1 0
      633 LOADB                            R14 1
      634 SETTABLEKS                       R14 R13 K86 ["radius-none"]
      636 SETTABLEKS                       R13 R12 K7 ["tag"]
      638 SETTABLEKS                       R12 R11 K2 ["outerView"]
      640 SETTABLE                         R11 R9 R10
      641 GETUPVAL                         R11 6
      642 GETTABLEKS                       R10 R11 K29 ["XSmall"]
      644 DUPTABLE                         R11 K73 [{"outerView"}]
      645 DUPTABLE                         R12 K8 [{"tag"}]
      646 NEWTABLE                         R13 1 0
      648 LOADB                            R14 1
      649 SETTABLEKS                       R14 R13 K87 ["radius-xsmall"]
      651 SETTABLEKS                       R13 R12 K7 ["tag"]
      653 SETTABLEKS                       R12 R11 K2 ["outerView"]
      655 SETTABLE                         R11 R9 R10
      656 GETUPVAL                         R11 6
      657 GETTABLEKS                       R10 R11 K45 ["Small"]
      659 DUPTABLE                         R11 K73 [{"outerView"}]
      660 DUPTABLE                         R12 K8 [{"tag"}]
      661 NEWTABLE                         R13 1 0
      663 LOADB                            R14 1
      664 SETTABLEKS                       R14 R13 K43 ["radius-small"]
      666 SETTABLEKS                       R13 R12 K7 ["tag"]
      668 SETTABLEKS                       R12 R11 K2 ["outerView"]
      670 SETTABLE                         R11 R9 R10
      671 GETUPVAL                         R11 6
      672 GETTABLEKS                       R10 R11 K57 ["Medium"]
      674 DUPTABLE                         R11 K73 [{"outerView"}]
      675 DUPTABLE                         R12 K8 [{"tag"}]
      676 NEWTABLE                         R13 1 0
      678 LOADB                            R14 1
      679 SETTABLEKS                       R14 R13 K56 ["radius-medium"]
      681 SETTABLEKS                       R13 R12 K7 ["tag"]
      683 SETTABLEKS                       R12 R11 K2 ["outerView"]
      685 SETTABLE                         R11 R9 R10
      686 GETUPVAL                         R11 6
      687 GETTABLEKS                       R10 R11 K66 ["Large"]
      689 DUPTABLE                         R11 K73 [{"outerView"}]
      690 DUPTABLE                         R12 K8 [{"tag"}]
      691 NEWTABLE                         R13 1 0
      693 LOADB                            R14 1
      694 SETTABLEKS                       R14 R13 K88 ["radius-large"]
      696 SETTABLEKS                       R13 R12 K7 ["tag"]
      698 SETTABLEKS                       R12 R11 K2 ["outerView"]
      700 SETTABLE                         R11 R9 R10
      701 DUPTABLE                         R10 K97 [{"common", "sizes", "variants", "multiline", "defaultRadius", "radius", "errorState", "focusedState", "hoverState"}]
      702 SETTABLEKS                       R1 R10 K89 ["common"]
      704 SETTABLEKS                       R3 R10 K90 ["sizes"]
      706 SETTABLEKS                       R4 R10 K91 ["variants"]
      708 GETUPVAL                         R13 0
      709 GETTABLEKS                       R12 R13 K6 ["FoundationCleanupTextInputPolyfill"]
      711 JUMPIFNOT                        R12 ; [+2]
      712 LOADNIL                          R11
      713 JUMP                             ; [+1]
      714 MOVE                             R11 R2
      715 SETTABLEKS                       R11 R10 K92 ["multiline"]
      717 SETTABLEKS                       R8 R10 K93 ["defaultRadius"]
      719 SETTABLEKS                       R9 R10 K32 ["radius"]
      721 SETTABLEKS                       R5 R10 K94 ["errorState"]
      723 SETTABLEKS                       R6 R10 K95 ["focusedState"]
      725 SETTABLEKS                       R7 R10 K96 ["hoverState"]
      727 RETURN                           R10 1

PROTO_2:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R7 R8 K0 ["useVariants"]
        3 LOADK                            R8 K1 ["TextInput"]
        4 GETUPVAL                         R9 1
        5 MOVE                             R10 R0
        6 CALL                             R7 3 1
        7 GETTABLEKS                       R9 R7 K2 ["variants"]
        9 MOVE                             R10 R2
       10 JUMPIF                           R10 ; [+3]
       11 GETUPVAL                         R11 2
       12 GETTABLEKS                       R10 R11 K3 ["Standard"]
       14 GETTABLE                         R8 R9 R10
       15 GETUPVAL                         R9 3
       16 GETTABLEKS                       R10 R7 K4 ["common"]
       18 GETTABLEKS                       R12 R7 K5 ["sizes"]
       20 GETTABLE                         R11 R12 R1
       21 GETUPVAL                         R14 2
       22 GETTABLEKS                       R13 R14 K6 ["Utility"]
       24 JUMPIFEQ                         R2 R13 ; [+3]
       26 MOVE                             R12 R8
       27 JUMP                             ; [+2]
       28 NEWTABLE                         R12 0 0
       30 GETUPVAL                         R15 4
       31 GETTABLEKS                       R14 R15 K7 ["FoundationCleanupTextInputPolyfill"]
       33 JUMPIFNOT                        R14 ; [+2]
       34 LOADNIL                          R13
       35 JUMP                             ; [+2]
       36 GETTABLEKS                       R13 R7 K8 ["multiline"]
       38 JUMPIFNOT                        R3 ; [+4]
       39 GETTABLEKS                       R15 R7 K9 ["radius"]
       41 GETTABLE                         R14 R15 R3
       42 JUMP                             ; [+3]
       43 GETTABLEKS                       R15 R7 K10 ["defaultRadius"]
       45 GETTABLE                         R14 R15 R1
       46 JUMPIFEQKNIL                     R5 ; [+5]
       48 GETTABLEKS                       R16 R7 K11 ["hoverState"]
       50 GETTABLE                         R15 R16 R5
       51 JUMP                             ; [+2]
       52 NEWTABLE                         R15 0 0
       54 JUMPIFEQKNIL                     R4 ; [+5]
       56 GETTABLEKS                       R17 R7 K12 ["focusedState"]
       58 GETTABLE                         R16 R17 R4
       59 JUMP                             ; [+2]
       60 NEWTABLE                         R16 0 0
       62 JUMPIFEQKNIL                     R6 ; [+5]
       64 GETTABLEKS                       R18 R7 K13 ["errorState"]
       66 GETTABLE                         R17 R18 R6
       67 JUMP                             ; [+2]
       68 NEWTABLE                         R17 0 0
       70 GETUPVAL                         R20 2
       71 GETTABLEKS                       R19 R20 K6 ["Utility"]
       73 JUMPIFNOTEQ                      R2 R19 ; [+3]
       75 MOVE                             R18 R8
       76 JUMP                             ; [+2]
       77 NEWTABLE                         R18 0 0
       79 CALL                             R9 9 -1
       80 RETURN                           R9 -1

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
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R8
       97 RETURN                           R14 1
