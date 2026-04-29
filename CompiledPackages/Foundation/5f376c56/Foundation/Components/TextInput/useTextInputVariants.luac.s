PROTO_0:
        0 DUPTABLE                         R1 K8 [{"canvas", "outerContainer", "innerContainer", "outerView", "container", "textBox", "icon", "clearButton"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K9 ["FoundationCleanupTextInputPolyfill"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 LOADNIL                          R2
        6 JUMP                             ; [+5]
        7 DUPTABLE                         R2 K11 [{"tag"}]
        8 GETTABLEKS                       R3 R0 K12 ["canvasTag"]
       10 SETTABLEKS                       R3 R2 K10 ["tag"]
       12 SETTABLEKS                       R2 R1 K0 ["canvas"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K13 ["FoundationInputVariantsConsolidateContainer"]
       17 JUMPIFNOT                        R3 ; [+2]
       18 LOADNIL                          R2
       19 JUMP                             ; [+15]
       20 DUPTABLE                         R2 K15 [{"tag", "minHeight"}]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K9 ["FoundationCleanupTextInputPolyfill"]
       24 JUMPIFNOT                        R4 ; [+2]
       25 LOADNIL                          R3
       26 JUMP                             ; [+2]
       27 GETTABLEKS                       R3 R0 K16 ["outerContainerTag"]
       29 SETTABLEKS                       R3 R2 K10 ["tag"]
       31 GETTABLEKS                       R3 R0 K17 ["minContainerHeight"]
       33 SETTABLEKS                       R3 R2 K14 ["minHeight"]
       35 SETTABLEKS                       R2 R1 K1 ["outerContainer"]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R3 R4 K13 ["FoundationInputVariantsConsolidateContainer"]
       40 JUMPIFNOT                        R3 ; [+2]
       41 LOADNIL                          R2
       42 JUMP                             ; [+33]
       43 DUPTABLE                         R2 K21 [{"tag", "horizontalPadding", "gap", "radius"}]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R4 R5 K9 ["FoundationCleanupTextInputPolyfill"]
       47 JUMPIFNOT                        R4 ; [+2]
       48 LOADNIL                          R3
       49 JUMP                             ; [+2]
       50 GETTABLEKS                       R3 R0 K22 ["innerContainerTag"]
       52 SETTABLEKS                       R3 R2 K10 ["tag"]
       54 GETIMPORT                        R3 K25 [UDim.new]
       56 LOADN                            R4 0
       57 GETTABLEKS                       R5 R0 K18 ["horizontalPadding"]
       59 CALL                             R3 2 1
       60 SETTABLEKS                       R3 R2 K18 ["horizontalPadding"]
       62 GETUPVAL                         R5 0
       63 GETTABLEKS                       R4 R5 K9 ["FoundationCleanupTextInputPolyfill"]
       65 JUMPIFNOT                        R4 ; [+2]
       66 LOADNIL                          R3
       67 JUMP                             ; [+2]
       68 GETTABLEKS                       R3 R0 K19 ["gap"]
       70 SETTABLEKS                       R3 R2 K19 ["gap"]
       72 GETTABLEKS                       R3 R0 K20 ["radius"]
       74 SETTABLEKS                       R3 R2 K20 ["radius"]
       76 SETTABLEKS                       R2 R1 K2 ["innerContainer"]
       78 GETUPVAL                         R4 0
       79 GETTABLEKS                       R3 R4 K13 ["FoundationInputVariantsConsolidateContainer"]
       81 JUMPIFNOT                        R3 ; [+2]
       82 LOADNIL                          R2
       83 JUMP                             ; [+5]
       84 DUPTABLE                         R2 K11 [{"tag"}]
       85 GETTABLEKS                       R3 R0 K26 ["outerViewTag"]
       87 SETTABLEKS                       R3 R2 K10 ["tag"]
       89 SETTABLEKS                       R2 R1 K3 ["outerView"]
       91 GETUPVAL                         R4 0
       92 GETTABLEKS                       R3 R4 K13 ["FoundationInputVariantsConsolidateContainer"]
       94 JUMPIFNOT                        R3 ; [+22]
       95 DUPTABLE                         R2 K27 [{"minHeight", "horizontalPadding", "radius", "tag"}]
       96 GETTABLEKS                       R3 R0 K17 ["minContainerHeight"]
       98 SETTABLEKS                       R3 R2 K14 ["minHeight"]
      100 GETIMPORT                        R3 K25 [UDim.new]
      102 LOADN                            R4 0
      103 GETTABLEKS                       R5 R0 K18 ["horizontalPadding"]
      105 CALL                             R3 2 1
      106 SETTABLEKS                       R3 R2 K18 ["horizontalPadding"]
      108 GETTABLEKS                       R3 R0 K20 ["radius"]
      110 SETTABLEKS                       R3 R2 K20 ["radius"]
      112 GETTABLEKS                       R3 R0 K28 ["containerTag"]
      114 SETTABLEKS                       R3 R2 K10 ["tag"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R2
      118 SETTABLEKS                       R2 R1 K4 ["container"]
      120 DUPTABLE                         R2 K30 [{"tag", "fontStyle"}]
      121 GETUPVAL                         R5 0
      122 GETTABLEKS                       R4 R5 K9 ["FoundationCleanupTextInputPolyfill"]
      124 JUMPIFNOT                        R4 ; [+2]
      125 LOADNIL                          R3
      126 JUMP                             ; [+2]
      127 GETTABLEKS                       R3 R0 K31 ["textBoxTag"]
      129 SETTABLEKS                       R3 R2 K10 ["tag"]
      131 GETTABLEKS                       R3 R0 K32 ["typography"]
      133 SETTABLEKS                       R3 R2 K29 ["fontStyle"]
      135 SETTABLEKS                       R2 R1 K5 ["textBox"]
      137 DUPTABLE                         R2 K34 [{"size"}]
      138 GETTABLEKS                       R3 R0 K35 ["iconSize"]
      140 SETTABLEKS                       R3 R2 K33 ["size"]
      142 SETTABLEKS                       R2 R1 K6 ["icon"]
      144 GETUPVAL                         R4 0
      145 GETTABLEKS                       R3 R4 K36 ["FoundationInternalTextInputClearButton"]
      147 JUMPIFNOT                        R3 ; [+10]
      148 DUPTABLE                         R2 K38 [{"icon", "padding"}]
      149 GETTABLEKS                       R3 R0 K39 ["clearButtonIcon"]
      151 SETTABLEKS                       R3 R2 K6 ["icon"]
      153 GETTABLEKS                       R3 R0 K40 ["clearButtonPadding"]
      155 SETTABLEKS                       R3 R2 K37 ["padding"]
      157 JUMP                             ; [+1]
      158 LOADNIL                          R2
      159 SETTABLEKS                       R2 R1 K7 ["clearButton"]
      161 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["FoundationCleanupTextInputPolyfill"]
        5 JUMPIFNOT                        R3 ; [+2]
        6 LOADNIL                          R2
        7 JUMP                             ; [+4]
        8 DUPTABLE                         R2 K2 [{"tag"}]
        9 LOADK                            R3 K3 ["bg-shift-100"]
       10 SETTABLEKS                       R3 R2 K1 ["tag"]
       12 SETTABLEKS                       R2 R1 K4 ["outerContainer"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["FoundationCleanupTextInputPolyfill"]
       17 JUMPIFNOT                        R3 ; [+2]
       18 LOADNIL                          R2
       19 JUMP                             ; [+4]
       20 DUPTABLE                         R2 K2 [{"tag"}]
       21 LOADK                            R3 K5 ["row align-y-center"]
       22 SETTABLEKS                       R3 R2 K1 ["tag"]
       24 SETTABLEKS                       R2 R1 K6 ["innerContainer"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K7 ["FoundationInputVariantsConsolidateContainer"]
       29 JUMPIFNOT                        R3 ; [+2]
       30 LOADK                            R2 K8 ["container"]
       31 JUMP                             ; [+1]
       32 LOADK                            R2 K9 ["outerView"]
       33 DUPTABLE                         R3 K13 [{"bgStyle", "strokeStyle", "strokeThickness", "tag"}]
       34 GETTABLEKS                       R6 R0 K14 ["Color"]
       36 GETTABLEKS                       R5 R6 K15 ["Shift"]
       38 GETTABLEKS                       R4 R5 K16 ["Shift_100"]
       40 SETTABLEKS                       R4 R3 K10 ["bgStyle"]
       42 GETTABLEKS                       R6 R0 K14 ["Color"]
       44 GETTABLEKS                       R5 R6 K17 ["Stroke"]
       46 GETTABLEKS                       R4 R5 K18 ["Emphasis"]
       48 SETTABLEKS                       R4 R3 K11 ["strokeStyle"]
       50 GETTABLEKS                       R5 R0 K17 ["Stroke"]
       52 GETTABLEKS                       R4 R5 K19 ["Standard"]
       54 SETTABLEKS                       R4 R3 K12 ["strokeThickness"]
       56 NEWTABLE                         R4 2 0
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R6 R7 K20 ["FoundationInternalTextInputClearButton"]
       61 NOT                              R5 R6
       62 SETTABLEKS                       R5 R4 K5 ["row align-y-center"]
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R5 R6 K20 ["FoundationInternalTextInputClearButton"]
       67 SETTABLEKS                       R5 R4 K21 ["row"]
       69 SETTABLEKS                       R4 R3 K1 ["tag"]
       71 SETTABLE                         R3 R1 R2
       72 DUPTABLE                         R2 K2 [{"tag"}]
       73 LOADK                            R3 K22 ["text-align-x-left text-align-y-center clip content-emphasis gui-object-defaults"]
       74 SETTABLEKS                       R3 R2 K1 ["tag"]
       76 SETTABLEKS                       R2 R1 K23 ["textBox"]
       78 DUPTABLE                         R2 K25 [{"style"}]
       79 GETTABLEKS                       R5 R0 K14 ["Color"]
       81 GETTABLEKS                       R4 R5 K26 ["Content"]
       83 GETTABLEKS                       R3 R4 K27 ["Muted"]
       85 SETTABLEKS                       R3 R2 K24 ["style"]
       87 SETTABLEKS                       R2 R1 K28 ["icon"]
       89 GETUPVAL                         R4 0
       90 GETTABLEKS                       R3 R4 K20 ["FoundationInternalTextInputClearButton"]
       92 JUMPIFNOT                        R3 ; [+5]
       93 DUPTABLE                         R2 K2 [{"tag"}]
       94 LOADK                            R3 K29 ["auto-xy"]
       95 SETTABLEKS                       R3 R2 K1 ["tag"]
       97 JUMP                             ; [+1]
       98 LOADNIL                          R2
       99 SETTABLEKS                       R2 R1 K30 ["clearButton"]
      101 GETUPVAL                         R4 0
      102 GETTABLEKS                       R3 R4 K0 ["FoundationCleanupTextInputPolyfill"]
      104 JUMPIFNOT                        R3 ; [+2]
      105 LOADNIL                          R2
      106 JUMP                             ; [+13]
      107 DUPTABLE                         R2 K32 [{"canvas", "outerContainer"}]
      108 DUPTABLE                         R3 K2 [{"tag"}]
      109 LOADK                            R4 K33 ["size-full-0"]
      110 SETTABLEKS                       R4 R3 K1 ["tag"]
      112 SETTABLEKS                       R3 R2 K31 ["canvas"]
      114 DUPTABLE                         R3 K2 [{"tag"}]
      115 LOADK                            R4 K33 ["size-full-0"]
      116 SETTABLEKS                       R4 R3 K1 ["tag"]
      118 SETTABLEKS                       R3 R2 K4 ["outerContainer"]
      120 NEWTABLE                         R3 4 0
      122 GETUPVAL                         R5 1
      123 GETTABLEKS                       R4 R5 K34 ["XSmall"]
      125 GETUPVAL                         R5 2
      126 NEWTABLE                         R6 16 0
      128 GETUPVAL                         R9 0
      129 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      131 JUMPIFNOT                        R8 ; [+2]
      132 LOADNIL                          R7
      133 JUMP                             ; [+1]
      134 LOADK                            R7 K35 ["size-full-600"]
      135 SETTABLEKS                       R7 R6 K36 ["canvasTag"]
      137 GETUPVAL                         R9 0
      138 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      140 JUMPIFNOT                        R8 ; [+2]
      141 LOADNIL                          R7
      142 JUMP                             ; [+1]
      143 LOADK                            R7 K37 ["radius-small"]
      144 SETTABLEKS                       R7 R6 K38 ["outerContainerTag"]
      146 GETTABLEKS                       R8 R0 K39 ["Radius"]
      148 GETTABLEKS                       R7 R8 K40 ["Small"]
      150 SETTABLEKS                       R7 R6 K41 ["radius"]
      152 GETUPVAL                         R9 0
      153 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      155 JUMPIFNOT                        R8 ; [+2]
      156 LOADNIL                          R7
      157 JUMP                             ; [+1]
      158 LOADK                            R7 K42 ["gap-small"]
      159 SETTABLEKS                       R7 R6 K43 ["innerContainerTag"]
      161 GETUPVAL                         R9 0
      162 GETTABLEKS                       R8 R9 K7 ["FoundationInputVariantsConsolidateContainer"]
      164 JUMPIFNOT                        R8 ; [+2]
      165 LOADK                            R7 K44 ["containerTag"]
      166 JUMP                             ; [+1]
      167 LOADK                            R7 K45 ["outerViewTag"]
      168 LOADK                            R8 K46 ["size-full-600 gap-small"]
      169 SETTABLE                         R8 R6 R7
      170 GETTABLEKS                       R8 R0 K47 ["Padding"]
      172 GETTABLEKS                       R7 R8 K34 ["XSmall"]
      174 SETTABLEKS                       R7 R6 K48 ["horizontalPadding"]
      176 GETUPVAL                         R9 0
      177 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      179 JUMPIFNOT                        R8 ; [+2]
      180 LOADNIL                          R7
      181 JUMP                             ; [+4]
      182 GETTABLEKS                       R8 R0 K49 ["Gap"]
      184 GETTABLEKS                       R7 R8 K40 ["Small"]
      186 SETTABLEKS                       R7 R6 K50 ["gap"]
      188 GETUPVAL                         R9 0
      189 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      191 JUMPIFNOT                        R8 ; [+2]
      192 LOADNIL                          R7
      193 JUMP                             ; [+1]
      194 LOADK                            R7 K51 ["text-body-small"]
      195 SETTABLEKS                       R7 R6 K52 ["textBoxTag"]
      197 GETTABLEKS                       R8 R0 K53 ["Typography"]
      199 GETTABLEKS                       R7 R8 K54 ["BodySmall"]
      201 SETTABLEKS                       R7 R6 K55 ["typography"]
      203 GETUPVAL                         R8 3
      204 GETTABLEKS                       R7 R8 K34 ["XSmall"]
      206 SETTABLEKS                       R7 R6 K56 ["iconSize"]
      208 GETTABLEKS                       R8 R0 K57 ["Size"]
      210 GETTABLEKS                       R7 R8 K58 ["Size_600"]
      212 SETTABLEKS                       R7 R6 K59 ["minContainerHeight"]
      214 GETUPVAL                         R9 0
      215 GETTABLEKS                       R8 R9 K20 ["FoundationInternalTextInputClearButton"]
      217 JUMPIFNOT                        R8 ; [+6]
      218 GETUPVAL                         R9 4
      219 GETTABLEKS                       R8 R9 K60 ["Icon"]
      221 GETTABLEKS                       R7 R8 K34 ["XSmall"]
      223 JUMP                             ; [+1]
      224 LOADNIL                          R7
      225 SETTABLEKS                       R7 R6 K61 ["clearButtonIcon"]
      227 GETUPVAL                         R9 0
      228 GETTABLEKS                       R8 R9 K20 ["FoundationInternalTextInputClearButton"]
      230 JUMPIFNOT                        R8 ; [+5]
      231 GETTABLEKS                       R8 R0 K47 ["Padding"]
      233 GETTABLEKS                       R7 R8 K34 ["XSmall"]
      235 JUMP                             ; [+1]
      236 LOADNIL                          R7
      237 SETTABLEKS                       R7 R6 K62 ["clearButtonPadding"]
      239 CALL                             R5 1 1
      240 SETTABLE                         R5 R3 R4
      241 GETUPVAL                         R5 1
      242 GETTABLEKS                       R4 R5 K40 ["Small"]
      244 GETUPVAL                         R5 2
      245 NEWTABLE                         R6 16 0
      247 GETUPVAL                         R9 0
      248 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      250 JUMPIFNOT                        R8 ; [+2]
      251 LOADNIL                          R7
      252 JUMP                             ; [+1]
      253 LOADK                            R7 K63 ["size-full-800"]
      254 SETTABLEKS                       R7 R6 K36 ["canvasTag"]
      256 GETUPVAL                         R9 0
      257 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      259 JUMPIFNOT                        R8 ; [+2]
      260 LOADNIL                          R7
      261 JUMP                             ; [+1]
      262 LOADK                            R7 K64 ["radius-medium"]
      263 SETTABLEKS                       R7 R6 K38 ["outerContainerTag"]
      265 GETTABLEKS                       R8 R0 K39 ["Radius"]
      267 GETTABLEKS                       R7 R8 K65 ["Medium"]
      269 SETTABLEKS                       R7 R6 K41 ["radius"]
      271 GETUPVAL                         R9 0
      272 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      274 JUMPIFNOT                        R8 ; [+2]
      275 LOADNIL                          R7
      276 JUMP                             ; [+1]
      277 LOADK                            R7 K66 ["gap-medium"]
      278 SETTABLEKS                       R7 R6 K43 ["innerContainerTag"]
      280 GETUPVAL                         R9 0
      281 GETTABLEKS                       R8 R9 K7 ["FoundationInputVariantsConsolidateContainer"]
      283 JUMPIFNOT                        R8 ; [+2]
      284 LOADK                            R7 K44 ["containerTag"]
      285 JUMP                             ; [+1]
      286 LOADK                            R7 K45 ["outerViewTag"]
      287 LOADK                            R8 K67 ["size-full-800 gap-medium"]
      288 SETTABLE                         R8 R6 R7
      289 GETTABLEKS                       R8 R0 K47 ["Padding"]
      291 GETTABLEKS                       R7 R8 K40 ["Small"]
      293 SETTABLEKS                       R7 R6 K48 ["horizontalPadding"]
      295 GETUPVAL                         R9 0
      296 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      298 JUMPIFNOT                        R8 ; [+2]
      299 LOADNIL                          R7
      300 JUMP                             ; [+4]
      301 GETTABLEKS                       R8 R0 K49 ["Gap"]
      303 GETTABLEKS                       R7 R8 K65 ["Medium"]
      305 SETTABLEKS                       R7 R6 K50 ["gap"]
      307 GETUPVAL                         R9 0
      308 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      310 JUMPIFNOT                        R8 ; [+2]
      311 LOADNIL                          R7
      312 JUMP                             ; [+1]
      313 LOADK                            R7 K68 ["text-body-medium"]
      314 SETTABLEKS                       R7 R6 K52 ["textBoxTag"]
      316 GETTABLEKS                       R8 R0 K53 ["Typography"]
      318 GETTABLEKS                       R7 R8 K69 ["BodyMedium"]
      320 SETTABLEKS                       R7 R6 K55 ["typography"]
      322 GETUPVAL                         R8 3
      323 GETTABLEKS                       R7 R8 K34 ["XSmall"]
      325 SETTABLEKS                       R7 R6 K56 ["iconSize"]
      327 GETTABLEKS                       R8 R0 K57 ["Size"]
      329 GETTABLEKS                       R7 R8 K70 ["Size_800"]
      331 SETTABLEKS                       R7 R6 K59 ["minContainerHeight"]
      333 GETUPVAL                         R9 0
      334 GETTABLEKS                       R8 R9 K20 ["FoundationInternalTextInputClearButton"]
      336 JUMPIFNOT                        R8 ; [+6]
      337 GETUPVAL                         R9 4
      338 GETTABLEKS                       R8 R9 K60 ["Icon"]
      340 GETTABLEKS                       R7 R8 K34 ["XSmall"]
      342 JUMP                             ; [+1]
      343 LOADNIL                          R7
      344 SETTABLEKS                       R7 R6 K61 ["clearButtonIcon"]
      346 GETUPVAL                         R9 0
      347 GETTABLEKS                       R8 R9 K20 ["FoundationInternalTextInputClearButton"]
      349 JUMPIFNOT                        R8 ; [+5]
      350 GETTABLEKS                       R8 R0 K57 ["Size"]
      352 GETTABLEKS                       R7 R8 K71 ["Size_150"]
      354 JUMP                             ; [+1]
      355 LOADNIL                          R7
      356 SETTABLEKS                       R7 R6 K62 ["clearButtonPadding"]
      358 CALL                             R5 1 1
      359 SETTABLE                         R5 R3 R4
      360 GETUPVAL                         R5 1
      361 GETTABLEKS                       R4 R5 K65 ["Medium"]
      363 GETUPVAL                         R5 2
      364 NEWTABLE                         R6 16 0
      366 GETUPVAL                         R9 0
      367 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      369 JUMPIFNOT                        R8 ; [+2]
      370 LOADNIL                          R7
      371 JUMP                             ; [+1]
      372 LOADK                            R7 K72 ["size-full-1000"]
      373 SETTABLEKS                       R7 R6 K36 ["canvasTag"]
      375 GETUPVAL                         R9 0
      376 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      378 JUMPIFNOT                        R8 ; [+2]
      379 LOADNIL                          R7
      380 JUMP                             ; [+1]
      381 LOADK                            R7 K64 ["radius-medium"]
      382 SETTABLEKS                       R7 R6 K38 ["outerContainerTag"]
      384 GETTABLEKS                       R8 R0 K39 ["Radius"]
      386 GETTABLEKS                       R7 R8 K65 ["Medium"]
      388 SETTABLEKS                       R7 R6 K41 ["radius"]
      390 GETUPVAL                         R9 0
      391 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      393 JUMPIFNOT                        R8 ; [+2]
      394 LOADNIL                          R7
      395 JUMP                             ; [+1]
      396 LOADK                            R7 K73 ["gap-large"]
      397 SETTABLEKS                       R7 R6 K43 ["innerContainerTag"]
      399 GETUPVAL                         R9 0
      400 GETTABLEKS                       R8 R9 K7 ["FoundationInputVariantsConsolidateContainer"]
      402 JUMPIFNOT                        R8 ; [+2]
      403 LOADK                            R7 K44 ["containerTag"]
      404 JUMP                             ; [+1]
      405 LOADK                            R7 K45 ["outerViewTag"]
      406 LOADK                            R8 K74 ["size-full-1000 gap-large"]
      407 SETTABLE                         R8 R6 R7
      408 GETTABLEKS                       R8 R0 K47 ["Padding"]
      410 GETTABLEKS                       R7 R8 K40 ["Small"]
      412 SETTABLEKS                       R7 R6 K48 ["horizontalPadding"]
      414 GETUPVAL                         R9 0
      415 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      417 JUMPIFNOT                        R8 ; [+2]
      418 LOADNIL                          R7
      419 JUMP                             ; [+4]
      420 GETTABLEKS                       R8 R0 K49 ["Gap"]
      422 GETTABLEKS                       R7 R8 K75 ["Large"]
      424 SETTABLEKS                       R7 R6 K50 ["gap"]
      426 GETUPVAL                         R9 0
      427 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      429 JUMPIFNOT                        R8 ; [+2]
      430 LOADNIL                          R7
      431 JUMP                             ; [+1]
      432 LOADK                            R7 K68 ["text-body-medium"]
      433 SETTABLEKS                       R7 R6 K52 ["textBoxTag"]
      435 GETTABLEKS                       R8 R0 K53 ["Typography"]
      437 GETTABLEKS                       R7 R8 K69 ["BodyMedium"]
      439 SETTABLEKS                       R7 R6 K55 ["typography"]
      441 GETUPVAL                         R8 3
      442 GETTABLEKS                       R7 R8 K40 ["Small"]
      444 SETTABLEKS                       R7 R6 K56 ["iconSize"]
      446 GETTABLEKS                       R8 R0 K57 ["Size"]
      448 GETTABLEKS                       R7 R8 K76 ["Size_1000"]
      450 SETTABLEKS                       R7 R6 K59 ["minContainerHeight"]
      452 GETUPVAL                         R9 0
      453 GETTABLEKS                       R8 R9 K20 ["FoundationInternalTextInputClearButton"]
      455 JUMPIFNOT                        R8 ; [+6]
      456 GETUPVAL                         R9 4
      457 GETTABLEKS                       R8 R9 K60 ["Icon"]
      459 GETTABLEKS                       R7 R8 K77 ["X"]
      461 JUMP                             ; [+1]
      462 LOADNIL                          R7
      463 SETTABLEKS                       R7 R6 K61 ["clearButtonIcon"]
      465 GETUPVAL                         R9 0
      466 GETTABLEKS                       R8 R9 K20 ["FoundationInternalTextInputClearButton"]
      468 JUMPIFNOT                        R8 ; [+5]
      469 GETTABLEKS                       R8 R0 K47 ["Padding"]
      471 GETTABLEKS                       R7 R8 K40 ["Small"]
      473 JUMP                             ; [+1]
      474 LOADNIL                          R7
      475 SETTABLEKS                       R7 R6 K62 ["clearButtonPadding"]
      477 CALL                             R5 1 1
      478 SETTABLE                         R5 R3 R4
      479 GETUPVAL                         R5 1
      480 GETTABLEKS                       R4 R5 K75 ["Large"]
      482 GETUPVAL                         R5 2
      483 NEWTABLE                         R6 16 0
      485 GETUPVAL                         R9 0
      486 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      488 JUMPIFNOT                        R8 ; [+2]
      489 LOADNIL                          R7
      490 JUMP                             ; [+1]
      491 LOADK                            R7 K78 ["size-full-1200"]
      492 SETTABLEKS                       R7 R6 K36 ["canvasTag"]
      494 GETUPVAL                         R9 0
      495 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      497 JUMPIFNOT                        R8 ; [+2]
      498 LOADNIL                          R7
      499 JUMP                             ; [+1]
      500 LOADK                            R7 K64 ["radius-medium"]
      501 SETTABLEKS                       R7 R6 K38 ["outerContainerTag"]
      503 GETTABLEKS                       R8 R0 K39 ["Radius"]
      505 GETTABLEKS                       R7 R8 K65 ["Medium"]
      507 SETTABLEKS                       R7 R6 K41 ["radius"]
      509 GETUPVAL                         R9 0
      510 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      512 JUMPIFNOT                        R8 ; [+2]
      513 LOADNIL                          R7
      514 JUMP                             ; [+1]
      515 LOADK                            R7 K73 ["gap-large"]
      516 SETTABLEKS                       R7 R6 K43 ["innerContainerTag"]
      518 GETUPVAL                         R9 0
      519 GETTABLEKS                       R8 R9 K7 ["FoundationInputVariantsConsolidateContainer"]
      521 JUMPIFNOT                        R8 ; [+2]
      522 LOADK                            R7 K44 ["containerTag"]
      523 JUMP                             ; [+1]
      524 LOADK                            R7 K45 ["outerViewTag"]
      525 LOADK                            R8 K79 ["size-full-1200 gap-large"]
      526 SETTABLE                         R8 R6 R7
      527 GETTABLEKS                       R8 R0 K47 ["Padding"]
      529 GETTABLEKS                       R7 R8 K65 ["Medium"]
      531 SETTABLEKS                       R7 R6 K48 ["horizontalPadding"]
      533 GETUPVAL                         R9 0
      534 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      536 JUMPIFNOT                        R8 ; [+2]
      537 LOADNIL                          R7
      538 JUMP                             ; [+4]
      539 GETTABLEKS                       R8 R0 K49 ["Gap"]
      541 GETTABLEKS                       R7 R8 K75 ["Large"]
      543 SETTABLEKS                       R7 R6 K50 ["gap"]
      545 GETUPVAL                         R9 0
      546 GETTABLEKS                       R8 R9 K0 ["FoundationCleanupTextInputPolyfill"]
      548 JUMPIFNOT                        R8 ; [+2]
      549 LOADNIL                          R7
      550 JUMP                             ; [+1]
      551 LOADK                            R7 K80 ["text-body-large"]
      552 SETTABLEKS                       R7 R6 K52 ["textBoxTag"]
      554 GETTABLEKS                       R8 R0 K53 ["Typography"]
      556 GETTABLEKS                       R7 R8 K81 ["BodyLarge"]
      558 SETTABLEKS                       R7 R6 K55 ["typography"]
      560 GETUPVAL                         R8 3
      561 GETTABLEKS                       R7 R8 K40 ["Small"]
      563 SETTABLEKS                       R7 R6 K56 ["iconSize"]
      565 GETTABLEKS                       R8 R0 K57 ["Size"]
      567 GETTABLEKS                       R7 R8 K82 ["Size_1200"]
      569 SETTABLEKS                       R7 R6 K59 ["minContainerHeight"]
      571 GETUPVAL                         R9 0
      572 GETTABLEKS                       R8 R9 K20 ["FoundationInternalTextInputClearButton"]
      574 JUMPIFNOT                        R8 ; [+6]
      575 GETUPVAL                         R9 4
      576 GETTABLEKS                       R8 R9 K60 ["Icon"]
      578 GETTABLEKS                       R7 R8 K77 ["X"]
      580 JUMP                             ; [+1]
      581 LOADNIL                          R7
      582 SETTABLEKS                       R7 R6 K61 ["clearButtonIcon"]
      584 GETUPVAL                         R9 0
      585 GETTABLEKS                       R8 R9 K20 ["FoundationInternalTextInputClearButton"]
      587 JUMPIFNOT                        R8 ; [+5]
      588 GETTABLEKS                       R8 R0 K47 ["Padding"]
      590 GETTABLEKS                       R7 R8 K40 ["Small"]
      592 JUMP                             ; [+1]
      593 LOADNIL                          R7
      594 SETTABLEKS                       R7 R6 K62 ["clearButtonPadding"]
      596 CALL                             R5 1 1
      597 SETTABLE                         R5 R3 R4
      598 GETUPVAL                         R6 0
      599 GETTABLEKS                       R5 R6 K83 ["FoundationSharedInputVariants"]
      601 JUMPIFNOT                        R5 ; [+2]
      602 LOADNIL                          R4
      603 JUMP                             ; [+78]
      604 NEWTABLE                         R4 4 0
      606 GETUPVAL                         R6 5
      607 GETTABLEKS                       R5 R6 K19 ["Standard"]
      609 NEWTABLE                         R6 1 0
      611 GETUPVAL                         R9 0
      612 GETTABLEKS                       R8 R9 K7 ["FoundationInputVariantsConsolidateContainer"]
      614 JUMPIFNOT                        R8 ; [+2]
      615 LOADK                            R7 K8 ["container"]
      616 JUMP                             ; [+1]
      617 LOADK                            R7 K9 ["outerView"]
      618 DUPTABLE                         R8 K84 [{"bgStyle"}]
      619 GETTABLEKS                       R11 R0 K14 ["Color"]
      621 GETTABLEKS                       R10 R11 K15 ["Shift"]
      623 GETTABLEKS                       R9 R10 K16 ["Shift_100"]
      625 SETTABLEKS                       R9 R8 K10 ["bgStyle"]
      627 SETTABLE                         R8 R6 R7
      628 SETTABLE                         R6 R4 R5
      629 GETUPVAL                         R6 5
      630 GETTABLEKS                       R5 R6 K85 ["Contrast"]
      632 NEWTABLE                         R6 1 0
      634 GETUPVAL                         R9 0
      635 GETTABLEKS                       R8 R9 K7 ["FoundationInputVariantsConsolidateContainer"]
      637 JUMPIFNOT                        R8 ; [+2]
      638 LOADK                            R7 K8 ["container"]
      639 JUMP                             ; [+1]
      640 LOADK                            R7 K9 ["outerView"]
      641 DUPTABLE                         R8 K86 [{"bgStyle", "strokeStyle"}]
      642 GETTABLEKS                       R11 R0 K14 ["Color"]
      644 GETTABLEKS                       R10 R11 K15 ["Shift"]
      646 GETTABLEKS                       R9 R10 K87 ["Shift_200"]
      648 SETTABLEKS                       R9 R8 K10 ["bgStyle"]
      650 GETUPVAL                         R10 6
      651 GETTABLEKS                       R9 R10 K88 ["None"]
      653 SETTABLEKS                       R9 R8 K11 ["strokeStyle"]
      655 SETTABLE                         R8 R6 R7
      656 SETTABLE                         R6 R4 R5
      657 GETUPVAL                         R6 5
      658 GETTABLEKS                       R5 R6 K89 ["Utility"]
      660 NEWTABLE                         R6 1 0
      662 GETUPVAL                         R9 0
      663 GETTABLEKS                       R8 R9 K7 ["FoundationInputVariantsConsolidateContainer"]
      665 JUMPIFNOT                        R8 ; [+2]
      666 LOADK                            R7 K8 ["container"]
      667 JUMP                             ; [+1]
      668 LOADK                            R7 K9 ["outerView"]
      669 DUPTABLE                         R8 K86 [{"bgStyle", "strokeStyle"}]
      670 GETUPVAL                         R10 6
      671 GETTABLEKS                       R9 R10 K88 ["None"]
      673 SETTABLEKS                       R9 R8 K10 ["bgStyle"]
      675 GETUPVAL                         R10 6
      676 GETTABLEKS                       R9 R10 K88 ["None"]
      678 SETTABLEKS                       R9 R8 K11 ["strokeStyle"]
      680 SETTABLE                         R8 R6 R7
      681 SETTABLE                         R6 R4 R5
      682 GETUPVAL                         R7 0
      683 GETTABLEKS                       R6 R7 K83 ["FoundationSharedInputVariants"]
      685 JUMPIFNOT                        R6 ; [+2]
      686 LOADNIL                          R5
      687 JUMP                             ; [+27]
      688 NEWTABLE                         R5 2 0
      690 LOADB                            R6 1
      691 NEWTABLE                         R7 1 0
      693 GETUPVAL                         R10 0
      694 GETTABLEKS                       R9 R10 K7 ["FoundationInputVariantsConsolidateContainer"]
      696 JUMPIFNOT                        R9 ; [+2]
      697 LOADK                            R8 K8 ["container"]
      698 JUMP                             ; [+1]
      699 LOADK                            R8 K9 ["outerView"]
      700 DUPTABLE                         R9 K90 [{"strokeStyle"}]
      701 GETTABLEKS                       R12 R0 K14 ["Color"]
      703 GETTABLEKS                       R11 R12 K91 ["System"]
      705 GETTABLEKS                       R10 R11 K92 ["Alert"]
      707 SETTABLEKS                       R10 R9 K11 ["strokeStyle"]
      709 SETTABLE                         R9 R7 R8
      710 SETTABLE                         R7 R5 R6
      711 LOADB                            R6 0
      712 NEWTABLE                         R7 0 0
      714 SETTABLE                         R7 R5 R6
      715 GETUPVAL                         R8 0
      716 GETTABLEKS                       R7 R8 K83 ["FoundationSharedInputVariants"]
      718 JUMPIFNOT                        R7 ; [+2]
      719 LOADNIL                          R6
      720 JUMP                             ; [+34]
      721 NEWTABLE                         R6 2 0
      723 LOADB                            R7 1
      724 NEWTABLE                         R8 1 0
      726 GETUPVAL                         R11 0
      727 GETTABLEKS                       R10 R11 K7 ["FoundationInputVariantsConsolidateContainer"]
      729 JUMPIFNOT                        R10 ; [+2]
      730 LOADK                            R9 K8 ["container"]
      731 JUMP                             ; [+1]
      732 LOADK                            R9 K9 ["outerView"]
      733 DUPTABLE                         R10 K93 [{"strokeStyle", "strokeThickness"}]
      734 GETTABLEKS                       R13 R0 K14 ["Color"]
      736 GETTABLEKS                       R12 R13 K91 ["System"]
      738 GETTABLEKS                       R11 R12 K18 ["Emphasis"]
      740 SETTABLEKS                       R11 R10 K11 ["strokeStyle"]
      742 GETTABLEKS                       R13 R0 K17 ["Stroke"]
      744 GETTABLEKS                       R12 R13 K19 ["Standard"]
      746 MULK                             R11 R12 K94 [2]
      747 SETTABLEKS                       R11 R10 K12 ["strokeThickness"]
      749 SETTABLE                         R10 R8 R9
      750 SETTABLE                         R8 R6 R7
      751 LOADB                            R7 0
      752 NEWTABLE                         R8 0 0
      754 SETTABLE                         R8 R6 R7
      755 GETUPVAL                         R9 0
      756 GETTABLEKS                       R8 R9 K83 ["FoundationSharedInputVariants"]
      758 JUMPIFNOT                        R8 ; [+2]
      759 LOADNIL                          R7
      760 JUMP                             ; [+26]
      761 NEWTABLE                         R7 2 0
      763 LOADB                            R8 1
      764 NEWTABLE                         R9 1 0
      766 GETUPVAL                         R12 0
      767 GETTABLEKS                       R11 R12 K7 ["FoundationInputVariantsConsolidateContainer"]
      769 JUMPIFNOT                        R11 ; [+2]
      770 LOADK                            R10 K8 ["container"]
      771 JUMP                             ; [+1]
      772 LOADK                            R10 K9 ["outerView"]
      773 DUPTABLE                         R11 K95 [{"strokeThickness"}]
      774 GETTABLEKS                       R14 R0 K17 ["Stroke"]
      776 GETTABLEKS                       R13 R14 K19 ["Standard"]
      778 MULK                             R12 R13 K94 [2]
      779 SETTABLEKS                       R12 R11 K12 ["strokeThickness"]
      781 SETTABLE                         R11 R9 R10
      782 SETTABLE                         R9 R7 R8
      783 LOADB                            R8 0
      784 NEWTABLE                         R9 0 0
      786 SETTABLE                         R9 R7 R8
      787 GETUPVAL                         R10 0
      788 GETTABLEKS                       R9 R10 K83 ["FoundationSharedInputVariants"]
      790 JUMPIFNOT                        R9 ; [+2]
      791 LOADNIL                          R8
      792 JUMP                             ; [+90]
      793 NEWTABLE                         R8 4 0
      795 GETUPVAL                         R10 1
      796 GETTABLEKS                       R9 R10 K34 ["XSmall"]
      798 NEWTABLE                         R10 1 0
      800 GETUPVAL                         R13 0
      801 GETTABLEKS                       R12 R13 K7 ["FoundationInputVariantsConsolidateContainer"]
      803 JUMPIFNOT                        R12 ; [+2]
      804 LOADK                            R11 K8 ["container"]
      805 JUMP                             ; [+1]
      806 LOADK                            R11 K9 ["outerView"]
      807 DUPTABLE                         R12 K2 [{"tag"}]
      808 NEWTABLE                         R13 1 0
      810 LOADB                            R14 1
      811 SETTABLEKS                       R14 R13 K37 ["radius-small"]
      813 SETTABLEKS                       R13 R12 K1 ["tag"]
      815 SETTABLE                         R12 R10 R11
      816 SETTABLE                         R10 R8 R9
      817 GETUPVAL                         R10 1
      818 GETTABLEKS                       R9 R10 K40 ["Small"]
      820 NEWTABLE                         R10 1 0
      822 GETUPVAL                         R13 0
      823 GETTABLEKS                       R12 R13 K7 ["FoundationInputVariantsConsolidateContainer"]
      825 JUMPIFNOT                        R12 ; [+2]
      826 LOADK                            R11 K8 ["container"]
      827 JUMP                             ; [+1]
      828 LOADK                            R11 K9 ["outerView"]
      829 DUPTABLE                         R12 K2 [{"tag"}]
      830 NEWTABLE                         R13 1 0
      832 LOADB                            R14 1
      833 SETTABLEKS                       R14 R13 K64 ["radius-medium"]
      835 SETTABLEKS                       R13 R12 K1 ["tag"]
      837 SETTABLE                         R12 R10 R11
      838 SETTABLE                         R10 R8 R9
      839 GETUPVAL                         R10 1
      840 GETTABLEKS                       R9 R10 K65 ["Medium"]
      842 NEWTABLE                         R10 1 0
      844 GETUPVAL                         R13 0
      845 GETTABLEKS                       R12 R13 K7 ["FoundationInputVariantsConsolidateContainer"]
      847 JUMPIFNOT                        R12 ; [+2]
      848 LOADK                            R11 K8 ["container"]
      849 JUMP                             ; [+1]
      850 LOADK                            R11 K9 ["outerView"]
      851 DUPTABLE                         R12 K2 [{"tag"}]
      852 NEWTABLE                         R13 1 0
      854 LOADB                            R14 1
      855 SETTABLEKS                       R14 R13 K64 ["radius-medium"]
      857 SETTABLEKS                       R13 R12 K1 ["tag"]
      859 SETTABLE                         R12 R10 R11
      860 SETTABLE                         R10 R8 R9
      861 GETUPVAL                         R10 1
      862 GETTABLEKS                       R9 R10 K75 ["Large"]
      864 NEWTABLE                         R10 1 0
      866 GETUPVAL                         R13 0
      867 GETTABLEKS                       R12 R13 K7 ["FoundationInputVariantsConsolidateContainer"]
      869 JUMPIFNOT                        R12 ; [+2]
      870 LOADK                            R11 K8 ["container"]
      871 JUMP                             ; [+1]
      872 LOADK                            R11 K9 ["outerView"]
      873 DUPTABLE                         R12 K2 [{"tag"}]
      874 NEWTABLE                         R13 1 0
      876 LOADB                            R14 1
      877 SETTABLEKS                       R14 R13 K64 ["radius-medium"]
      879 SETTABLEKS                       R13 R12 K1 ["tag"]
      881 SETTABLE                         R12 R10 R11
      882 SETTABLE                         R10 R8 R9
      883 GETUPVAL                         R11 0
      884 GETTABLEKS                       R10 R11 K83 ["FoundationSharedInputVariants"]
      886 JUMPIFNOT                        R10 ; [+2]
      887 LOADNIL                          R9
      888 JUMP                             ; [+112]
      889 NEWTABLE                         R9 8 0
      891 GETUPVAL                         R11 7
      892 GETTABLEKS                       R10 R11 K88 ["None"]
      894 NEWTABLE                         R11 1 0
      896 GETUPVAL                         R14 0
      897 GETTABLEKS                       R13 R14 K7 ["FoundationInputVariantsConsolidateContainer"]
      899 JUMPIFNOT                        R13 ; [+2]
      900 LOADK                            R12 K8 ["container"]
      901 JUMP                             ; [+1]
      902 LOADK                            R12 K9 ["outerView"]
      903 DUPTABLE                         R13 K2 [{"tag"}]
      904 NEWTABLE                         R14 1 0
      906 LOADB                            R15 1
      907 SETTABLEKS                       R15 R14 K96 ["radius-none"]
      909 SETTABLEKS                       R14 R13 K1 ["tag"]
      911 SETTABLE                         R13 R11 R12
      912 SETTABLE                         R11 R9 R10
      913 GETUPVAL                         R11 7
      914 GETTABLEKS                       R10 R11 K34 ["XSmall"]
      916 NEWTABLE                         R11 1 0
      918 GETUPVAL                         R14 0
      919 GETTABLEKS                       R13 R14 K7 ["FoundationInputVariantsConsolidateContainer"]
      921 JUMPIFNOT                        R13 ; [+2]
      922 LOADK                            R12 K8 ["container"]
      923 JUMP                             ; [+1]
      924 LOADK                            R12 K9 ["outerView"]
      925 DUPTABLE                         R13 K2 [{"tag"}]
      926 NEWTABLE                         R14 1 0
      928 LOADB                            R15 1
      929 SETTABLEKS                       R15 R14 K97 ["radius-xsmall"]
      931 SETTABLEKS                       R14 R13 K1 ["tag"]
      933 SETTABLE                         R13 R11 R12
      934 SETTABLE                         R11 R9 R10
      935 GETUPVAL                         R11 7
      936 GETTABLEKS                       R10 R11 K40 ["Small"]
      938 NEWTABLE                         R11 1 0
      940 GETUPVAL                         R14 0
      941 GETTABLEKS                       R13 R14 K7 ["FoundationInputVariantsConsolidateContainer"]
      943 JUMPIFNOT                        R13 ; [+2]
      944 LOADK                            R12 K8 ["container"]
      945 JUMP                             ; [+1]
      946 LOADK                            R12 K9 ["outerView"]
      947 DUPTABLE                         R13 K2 [{"tag"}]
      948 NEWTABLE                         R14 1 0
      950 LOADB                            R15 1
      951 SETTABLEKS                       R15 R14 K37 ["radius-small"]
      953 SETTABLEKS                       R14 R13 K1 ["tag"]
      955 SETTABLE                         R13 R11 R12
      956 SETTABLE                         R11 R9 R10
      957 GETUPVAL                         R11 7
      958 GETTABLEKS                       R10 R11 K65 ["Medium"]
      960 NEWTABLE                         R11 1 0
      962 GETUPVAL                         R14 0
      963 GETTABLEKS                       R13 R14 K7 ["FoundationInputVariantsConsolidateContainer"]
      965 JUMPIFNOT                        R13 ; [+2]
      966 LOADK                            R12 K8 ["container"]
      967 JUMP                             ; [+1]
      968 LOADK                            R12 K9 ["outerView"]
      969 DUPTABLE                         R13 K2 [{"tag"}]
      970 NEWTABLE                         R14 1 0
      972 LOADB                            R15 1
      973 SETTABLEKS                       R15 R14 K64 ["radius-medium"]
      975 SETTABLEKS                       R14 R13 K1 ["tag"]
      977 SETTABLE                         R13 R11 R12
      978 SETTABLE                         R11 R9 R10
      979 GETUPVAL                         R11 7
      980 GETTABLEKS                       R10 R11 K75 ["Large"]
      982 NEWTABLE                         R11 1 0
      984 GETUPVAL                         R14 0
      985 GETTABLEKS                       R13 R14 K7 ["FoundationInputVariantsConsolidateContainer"]
      987 JUMPIFNOT                        R13 ; [+2]
      988 LOADK                            R12 K8 ["container"]
      989 JUMP                             ; [+1]
      990 LOADK                            R12 K9 ["outerView"]
      991 DUPTABLE                         R13 K2 [{"tag"}]
      992 NEWTABLE                         R14 1 0
      994 LOADB                            R15 1
      995 SETTABLEKS                       R15 R14 K98 ["radius-large"]
      997 SETTABLEKS                       R14 R13 K1 ["tag"]
      999 SETTABLE                         R13 R11 R12
     1000 SETTABLE                         R11 R9 R10
     1001 DUPTABLE                         R10 K107 [{"common", "sizes", "variants", "multiline", "defaultRadius", "radius", "errorState", "focusedState", "hoverState"}]
     1002 SETTABLEKS                       R1 R10 K99 ["common"]
     1004 SETTABLEKS                       R3 R10 K100 ["sizes"]
     1006 GETUPVAL                         R13 0
     1007 GETTABLEKS                       R12 R13 K83 ["FoundationSharedInputVariants"]
     1009 JUMPIFNOT                        R12 ; [+2]
     1010 LOADNIL                          R11
     1011 JUMP                             ; [+1]
     1012 MOVE                             R11 R4
     1013 SETTABLEKS                       R11 R10 K101 ["variants"]
     1015 GETUPVAL                         R13 0
     1016 GETTABLEKS                       R12 R13 K0 ["FoundationCleanupTextInputPolyfill"]
     1018 JUMPIFNOT                        R12 ; [+2]
     1019 LOADNIL                          R11
     1020 JUMP                             ; [+1]
     1021 MOVE                             R11 R2
     1022 SETTABLEKS                       R11 R10 K102 ["multiline"]
     1024 GETUPVAL                         R13 0
     1025 GETTABLEKS                       R12 R13 K83 ["FoundationSharedInputVariants"]
     1027 JUMPIFNOT                        R12 ; [+2]
     1028 LOADNIL                          R11
     1029 JUMP                             ; [+1]
     1030 MOVE                             R11 R8
     1031 SETTABLEKS                       R11 R10 K103 ["defaultRadius"]
     1033 GETUPVAL                         R13 0
     1034 GETTABLEKS                       R12 R13 K83 ["FoundationSharedInputVariants"]
     1036 JUMPIFNOT                        R12 ; [+2]
     1037 LOADNIL                          R11
     1038 JUMP                             ; [+1]
     1039 MOVE                             R11 R9
     1040 SETTABLEKS                       R11 R10 K41 ["radius"]
     1042 GETUPVAL                         R13 0
     1043 GETTABLEKS                       R12 R13 K83 ["FoundationSharedInputVariants"]
     1045 JUMPIFNOT                        R12 ; [+2]
     1046 LOADNIL                          R11
     1047 JUMP                             ; [+1]
     1048 MOVE                             R11 R5
     1049 SETTABLEKS                       R11 R10 K104 ["errorState"]
     1051 GETUPVAL                         R13 0
     1052 GETTABLEKS                       R12 R13 K83 ["FoundationSharedInputVariants"]
     1054 JUMPIFNOT                        R12 ; [+2]
     1055 LOADNIL                          R11
     1056 JUMP                             ; [+1]
     1057 MOVE                             R11 R6
     1058 SETTABLEKS                       R11 R10 K105 ["focusedState"]
     1060 GETUPVAL                         R13 0
     1061 GETTABLEKS                       R12 R13 K83 ["FoundationSharedInputVariants"]
     1063 JUMPIFNOT                        R12 ; [+2]
     1064 LOADNIL                          R11
     1065 JUMP                             ; [+1]
     1066 MOVE                             R11 R7
     1067 SETTABLEKS                       R11 R10 K106 ["hoverState"]
     1069 RETURN                           R10 1

PROTO_2:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R7 R8 K0 ["useVariants"]
        3 LOADK                            R8 K1 ["TextInput"]
        4 GETUPVAL                         R9 1
        5 MOVE                             R10 R0
        6 CALL                             R7 3 1
        7 GETUPVAL                         R10 2
        8 GETTABLEKS                       R9 R10 K2 ["FoundationSharedInputVariants"]
       10 JUMPIFNOT                        R9 ; [+8]
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K0 ["useVariants"]
       14 LOADK                            R9 K3 ["InputField"]
       15 GETUPVAL                         R10 3
       16 MOVE                             R11 R0
       17 CALL                             R8 3 1
       18 JUMP                             ; [+1]
       19 MOVE                             R8 R7
       20 GETTABLEKS                       R10 R8 K4 ["variants"]
       22 MOVE                             R11 R2
       23 JUMPIF                           R11 ; [+3]
       24 GETUPVAL                         R12 4
       25 GETTABLEKS                       R11 R12 K5 ["Standard"]
       27 GETTABLE                         R9 R10 R11
       28 GETUPVAL                         R10 5
       29 GETTABLEKS                       R11 R7 K6 ["common"]
       31 GETUPVAL                         R14 2
       32 GETTABLEKS                       R13 R14 K2 ["FoundationSharedInputVariants"]
       34 JUMPIFNOT                        R13 ; [+4]
       35 GETTABLEKS                       R13 R8 K7 ["sizes"]
       37 GETTABLE                         R12 R13 R1
       38 JUMP                             ; [+1]
       39 LOADNIL                          R12
       40 GETTABLEKS                       R14 R7 K7 ["sizes"]
       42 GETTABLE                         R13 R14 R1
       43 GETUPVAL                         R16 4
       44 GETTABLEKS                       R15 R16 K8 ["Utility"]
       46 JUMPIFEQ                         R2 R15 ; [+3]
       48 MOVE                             R14 R9
       49 JUMP                             ; [+2]
       50 NEWTABLE                         R14 0 0
       52 GETUPVAL                         R17 2
       53 GETTABLEKS                       R16 R17 K9 ["FoundationCleanupTextInputPolyfill"]
       55 JUMPIFNOT                        R16 ; [+2]
       56 LOADNIL                          R15
       57 JUMP                             ; [+2]
       58 GETTABLEKS                       R15 R7 K10 ["multiline"]
       60 JUMPIFNOT                        R3 ; [+4]
       61 GETTABLEKS                       R17 R8 K11 ["radius"]
       63 GETTABLE                         R16 R17 R3
       64 JUMP                             ; [+3]
       65 GETTABLEKS                       R17 R8 K12 ["defaultRadius"]
       67 GETTABLE                         R16 R17 R1
       68 JUMPIFEQKNIL                     R5 ; [+5]
       70 GETTABLEKS                       R18 R8 K13 ["hoverState"]
       72 GETTABLE                         R17 R18 R5
       73 JUMP                             ; [+2]
       74 NEWTABLE                         R17 0 0
       76 JUMPIFEQKNIL                     R4 ; [+5]
       78 GETTABLEKS                       R19 R8 K14 ["focusedState"]
       80 GETTABLE                         R18 R19 R4
       81 JUMP                             ; [+2]
       82 NEWTABLE                         R18 0 0
       84 JUMPIFEQKNIL                     R6 ; [+5]
       86 GETTABLEKS                       R20 R8 K15 ["errorState"]
       88 GETTABLE                         R19 R20 R6
       89 JUMP                             ; [+2]
       90 NEWTABLE                         R19 0 0
       92 GETUPVAL                         R22 4
       93 GETTABLEKS                       R21 R22 K8 ["Utility"]
       95 JUMPIFNOTEQ                      R2 R21 ; [+3]
       97 MOVE                             R20 R9
       98 JUMP                             ; [+2]
       99 NEWTABLE                         R20 0 0
      101 CALL                             R10 10 -1
      102 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R7 K12 ["InputSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R8 K13 ["InputVariant"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R9 K14 ["IconSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K11 ["Enums"]
       51 GETTABLEKS                       R9 R10 K15 ["Radius"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K16 ["Utility"]
       58 GETTABLEKS                       R10 R11 K17 ["Flags"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K16 ["Utility"]
       65 GETTABLEKS                       R11 R12 K18 ["composeStyleVariant"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R14 R0 K9 ["Components"]
       72 GETTABLEKS                       R13 R14 K19 ["InputField"]
       74 GETTABLEKS                       R12 R13 K20 ["getInputVariantsFactory"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R15 R0 K21 ["Providers"]
       81 GETTABLEKS                       R14 R15 K22 ["Style"]
       83 GETTABLEKS                       R13 R14 K23 ["Tokens"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R16 R0 K21 ["Providers"]
       90 GETTABLEKS                       R15 R16 K22 ["Style"]
       92 GETTABLEKS                       R14 R15 K24 ["VariantsContext"]
       94 CALL                             R13 1 1
       95 DUPCLOSURE                       R14 K25 [PROTO_0]
       96 CAPTURE                          VAL R9
       97 DUPCLOSURE                       R15 K26 [PROTO_1]
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R8
      106 DUPCLOSURE                       R16 K27 [PROTO_2]
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R10
      113 RETURN                           R16 1
