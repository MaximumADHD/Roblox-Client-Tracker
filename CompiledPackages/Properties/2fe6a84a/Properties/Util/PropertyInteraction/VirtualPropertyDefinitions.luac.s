MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R6 R0 K6 ["Util"]
       11 GETTABLEKS                       R5 R6 K7 ["PropertyInteraction"]
       13 GETTABLEKS                       R4 R5 K8 ["Interactors"]
       15 GETTABLEKS                       R3 R4 K9 ["VirtualInteractor"]
       17 GETTABLEKS                       R2 R3 K10 ["InstanceSelf"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R7 R0 K6 ["Util"]
       24 GETTABLEKS                       R6 R7 K7 ["PropertyInteraction"]
       26 GETTABLEKS                       R5 R6 K8 ["Interactors"]
       28 GETTABLEKS                       R4 R5 K9 ["VirtualInteractor"]
       30 GETTABLEKS                       R3 R4 K11 ["MeshId"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R7 R0 K6 ["Util"]
       37 GETTABLEKS                       R6 R7 K7 ["PropertyInteraction"]
       39 GETTABLEKS                       R5 R6 K12 ["PropertyId"]
       41 GETTABLEKS                       R4 R5 K13 ["fromClass"]
       43 CALL                             R3 1 1
       44 GETIMPORT                        R4 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Util"]
       48 GETTABLEKS                       R6 R7 K7 ["PropertyInteraction"]
       50 GETTABLEKS                       R5 R6 K14 ["PropertyInfo"]
       52 CALL                             R4 1 1
       53 GETIMPORT                        R5 K5 [require]
       55 GETTABLEKS                       R6 R0 K15 ["PropertyTypes"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K5 [require]
       60 GETTABLEKS                       R11 R0 K6 ["Util"]
       62 GETTABLEKS                       R10 R11 K7 ["PropertyInteraction"]
       64 GETTABLEKS                       R9 R10 K8 ["Interactors"]
       66 GETTABLEKS                       R8 R9 K9 ["VirtualInteractor"]
       68 GETTABLEKS                       R7 R8 K16 ["VirtualPropertyDataTypes"]
       70 CALL                             R6 1 1
       71 GETIMPORT                        R7 K5 [require]
       73 GETTABLEKS                       R12 R0 K6 ["Util"]
       75 GETTABLEKS                       R11 R12 K7 ["PropertyInteraction"]
       77 GETTABLEKS                       R10 R11 K8 ["Interactors"]
       79 GETTABLEKS                       R9 R10 K9 ["VirtualInteractor"]
       81 GETTABLEKS                       R8 R9 K17 ["createCombinedColor"]
       83 CALL                             R7 1 1
       84 NEWTABLE                         R8 32 0
       86 MOVE                             R9 R3
       87 LOADK                            R10 K18 ["Self"]
       88 LOADK                            R11 K19 ["Instance"]
       89 LOADK                            R12 K20 ["Virtual"]
       90 CALL                             R9 3 1
       91 DUPTABLE                         R10 K23 [{"info", "interactor"}]
       92 GETTABLEKS                       R11 R4 K24 ["fromInstanceRefType"]
       94 LOADB                            R12 1
       95 LOADK                            R13 K19 ["Instance"]
       96 CALL                             R11 2 1
       97 SETTABLEKS                       R11 R10 K21 ["info"]
       99 SETTABLEKS                       R1 R10 K22 ["interactor"]
      101 SETTABLE                         R10 R8 R9
      102 MOVE                             R9 R3
      103 LOADK                            R10 K11 ["MeshId"]
      104 LOADK                            R11 K25 ["MeshPart"]
      105 LOADK                            R12 K20 ["Virtual"]
      106 CALL                             R9 3 1
      107 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      108 GETTABLEKS                       R11 R4 K26 ["fromType"]
      110 LOADK                            R12 K27 ["string"]
      111 LOADB                            R13 0
      112 CALL                             R11 2 1
      113 SETTABLEKS                       R11 R10 K21 ["info"]
      115 SETTABLEKS                       R2 R10 K22 ["interactor"]
      117 SETTABLE                         R10 R8 R9
      118 MOVE                             R9 R3
      119 LOADK                            R10 K28 ["CombinedColor"]
      120 LOADK                            R11 K29 ["BasePart"]
      121 LOADK                            R12 K20 ["Virtual"]
      122 CALL                             R9 3 1
      123 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      124 GETTABLEKS                       R11 R4 K26 ["fromType"]
      126 LOADK                            R12 K28 ["CombinedColor"]
      127 LOADB                            R13 0
      128 CALL                             R11 2 1
      129 SETTABLEKS                       R11 R10 K21 ["info"]
      131 MOVE                             R11 R7
      132 MOVE                             R12 R3
      133 LOADK                            R13 K30 ["Color"]
      134 LOADK                            R14 K29 ["BasePart"]
      135 LOADK                            R15 K31 ["Property"]
      136 CALL                             R12 3 1
      137 MOVE                             R13 R3
      138 LOADK                            R14 K32 ["BrickColor"]
      139 LOADK                            R15 K29 ["BasePart"]
      140 LOADK                            R16 K31 ["Property"]
      141 CALL                             R13 3 1
      142 MOVE                             R14 R3
      143 LOADK                            R15 K33 ["Transparency"]
      144 LOADK                            R16 K29 ["BasePart"]
      145 LOADK                            R17 K31 ["Property"]
      146 CALL                             R14 3 -1
      147 CALL                             R11 -1 1
      148 SETTABLEKS                       R11 R10 K22 ["interactor"]
      150 SETTABLE                         R10 R8 R9
      151 MOVE                             R9 R3
      152 LOADK                            R10 K34 ["CombinedHeadColor"]
      153 LOADK                            R11 K35 ["BodyColors"]
      154 LOADK                            R12 K20 ["Virtual"]
      155 CALL                             R9 3 1
      156 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      157 GETTABLEKS                       R11 R4 K26 ["fromType"]
      159 LOADK                            R12 K28 ["CombinedColor"]
      160 LOADB                            R13 0
      161 CALL                             R11 2 1
      162 SETTABLEKS                       R11 R10 K21 ["info"]
      164 MOVE                             R11 R7
      165 MOVE                             R12 R3
      166 LOADK                            R13 K36 ["HeadColor3"]
      167 LOADK                            R14 K35 ["BodyColors"]
      168 LOADK                            R15 K31 ["Property"]
      169 CALL                             R12 3 1
      170 MOVE                             R13 R3
      171 LOADK                            R14 K37 ["HeadColor"]
      172 LOADK                            R15 K35 ["BodyColors"]
      173 LOADK                            R16 K31 ["Property"]
      174 CALL                             R13 3 1
      175 LOADNIL                          R14
      176 CALL                             R11 3 1
      177 SETTABLEKS                       R11 R10 K22 ["interactor"]
      179 SETTABLE                         R10 R8 R9
      180 MOVE                             R9 R3
      181 LOADK                            R10 K38 ["CombinedLeftArmColor"]
      182 LOADK                            R11 K35 ["BodyColors"]
      183 LOADK                            R12 K20 ["Virtual"]
      184 CALL                             R9 3 1
      185 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      186 GETTABLEKS                       R11 R4 K26 ["fromType"]
      188 LOADK                            R12 K28 ["CombinedColor"]
      189 LOADB                            R13 0
      190 CALL                             R11 2 1
      191 SETTABLEKS                       R11 R10 K21 ["info"]
      193 MOVE                             R11 R7
      194 MOVE                             R12 R3
      195 LOADK                            R13 K39 ["LeftArmColor3"]
      196 LOADK                            R14 K35 ["BodyColors"]
      197 LOADK                            R15 K31 ["Property"]
      198 CALL                             R12 3 1
      199 MOVE                             R13 R3
      200 LOADK                            R14 K40 ["LeftArmColor"]
      201 LOADK                            R15 K35 ["BodyColors"]
      202 LOADK                            R16 K31 ["Property"]
      203 CALL                             R13 3 1
      204 LOADNIL                          R14
      205 CALL                             R11 3 1
      206 SETTABLEKS                       R11 R10 K22 ["interactor"]
      208 SETTABLE                         R10 R8 R9
      209 MOVE                             R9 R3
      210 LOADK                            R10 K41 ["CombinedLeftLegColor"]
      211 LOADK                            R11 K35 ["BodyColors"]
      212 LOADK                            R12 K20 ["Virtual"]
      213 CALL                             R9 3 1
      214 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      215 GETTABLEKS                       R11 R4 K26 ["fromType"]
      217 LOADK                            R12 K28 ["CombinedColor"]
      218 LOADB                            R13 0
      219 CALL                             R11 2 1
      220 SETTABLEKS                       R11 R10 K21 ["info"]
      222 MOVE                             R11 R7
      223 MOVE                             R12 R3
      224 LOADK                            R13 K42 ["LeftLegColor3"]
      225 LOADK                            R14 K35 ["BodyColors"]
      226 LOADK                            R15 K31 ["Property"]
      227 CALL                             R12 3 1
      228 MOVE                             R13 R3
      229 LOADK                            R14 K43 ["LeftLegColor"]
      230 LOADK                            R15 K35 ["BodyColors"]
      231 LOADK                            R16 K31 ["Property"]
      232 CALL                             R13 3 1
      233 LOADNIL                          R14
      234 CALL                             R11 3 1
      235 SETTABLEKS                       R11 R10 K22 ["interactor"]
      237 SETTABLE                         R10 R8 R9
      238 MOVE                             R9 R3
      239 LOADK                            R10 K44 ["CombinedRightArmColor"]
      240 LOADK                            R11 K35 ["BodyColors"]
      241 LOADK                            R12 K20 ["Virtual"]
      242 CALL                             R9 3 1
      243 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      244 GETTABLEKS                       R11 R4 K26 ["fromType"]
      246 LOADK                            R12 K28 ["CombinedColor"]
      247 LOADB                            R13 0
      248 CALL                             R11 2 1
      249 SETTABLEKS                       R11 R10 K21 ["info"]
      251 MOVE                             R11 R7
      252 MOVE                             R12 R3
      253 LOADK                            R13 K45 ["RightArmColor3"]
      254 LOADK                            R14 K35 ["BodyColors"]
      255 LOADK                            R15 K31 ["Property"]
      256 CALL                             R12 3 1
      257 MOVE                             R13 R3
      258 LOADK                            R14 K46 ["RightArmColor"]
      259 LOADK                            R15 K35 ["BodyColors"]
      260 LOADK                            R16 K31 ["Property"]
      261 CALL                             R13 3 1
      262 LOADNIL                          R14
      263 CALL                             R11 3 1
      264 SETTABLEKS                       R11 R10 K22 ["interactor"]
      266 SETTABLE                         R10 R8 R9
      267 MOVE                             R9 R3
      268 LOADK                            R10 K47 ["CombinedRightLegColor"]
      269 LOADK                            R11 K35 ["BodyColors"]
      270 LOADK                            R12 K20 ["Virtual"]
      271 CALL                             R9 3 1
      272 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      273 GETTABLEKS                       R11 R4 K26 ["fromType"]
      275 LOADK                            R12 K28 ["CombinedColor"]
      276 LOADB                            R13 0
      277 CALL                             R11 2 1
      278 SETTABLEKS                       R11 R10 K21 ["info"]
      280 MOVE                             R11 R7
      281 MOVE                             R12 R3
      282 LOADK                            R13 K48 ["RightLegColor3"]
      283 LOADK                            R14 K35 ["BodyColors"]
      284 LOADK                            R15 K31 ["Property"]
      285 CALL                             R12 3 1
      286 MOVE                             R13 R3
      287 LOADK                            R14 K49 ["RightLegColor"]
      288 LOADK                            R15 K35 ["BodyColors"]
      289 LOADK                            R16 K31 ["Property"]
      290 CALL                             R13 3 1
      291 LOADNIL                          R14
      292 CALL                             R11 3 1
      293 SETTABLEKS                       R11 R10 K22 ["interactor"]
      295 SETTABLE                         R10 R8 R9
      296 MOVE                             R9 R3
      297 LOADK                            R10 K50 ["CombinedTorsoColor"]
      298 LOADK                            R11 K35 ["BodyColors"]
      299 LOADK                            R12 K20 ["Virtual"]
      300 CALL                             R9 3 1
      301 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      302 GETTABLEKS                       R11 R4 K26 ["fromType"]
      304 LOADK                            R12 K28 ["CombinedColor"]
      305 LOADB                            R13 0
      306 CALL                             R11 2 1
      307 SETTABLEKS                       R11 R10 K21 ["info"]
      309 MOVE                             R11 R7
      310 MOVE                             R12 R3
      311 LOADK                            R13 K51 ["TorsoColor3"]
      312 LOADK                            R14 K35 ["BodyColors"]
      313 LOADK                            R15 K31 ["Property"]
      314 CALL                             R12 3 1
      315 MOVE                             R13 R3
      316 LOADK                            R14 K52 ["TorsoColor"]
      317 LOADK                            R15 K35 ["BodyColors"]
      318 LOADK                            R16 K31 ["Property"]
      319 CALL                             R13 3 1
      320 LOADNIL                          R14
      321 CALL                             R11 3 1
      322 SETTABLEKS                       R11 R10 K22 ["interactor"]
      324 SETTABLE                         R10 R8 R9
      325 MOVE                             R9 R3
      326 LOADK                            R10 K53 ["CombinedFillColor"]
      327 LOADK                            R11 K54 ["Highlight"]
      328 LOADK                            R12 K20 ["Virtual"]
      329 CALL                             R9 3 1
      330 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      331 GETTABLEKS                       R11 R4 K26 ["fromType"]
      333 LOADK                            R12 K28 ["CombinedColor"]
      334 LOADB                            R13 0
      335 CALL                             R11 2 1
      336 SETTABLEKS                       R11 R10 K21 ["info"]
      338 MOVE                             R11 R7
      339 MOVE                             R12 R3
      340 LOADK                            R13 K55 ["FillColor"]
      341 LOADK                            R14 K54 ["Highlight"]
      342 LOADK                            R15 K31 ["Property"]
      343 CALL                             R12 3 1
      344 LOADNIL                          R13
      345 MOVE                             R14 R3
      346 LOADK                            R15 K56 ["FillTransparency"]
      347 LOADK                            R16 K54 ["Highlight"]
      348 LOADK                            R17 K31 ["Property"]
      349 CALL                             R14 3 -1
      350 CALL                             R11 -1 1
      351 SETTABLEKS                       R11 R10 K22 ["interactor"]
      353 SETTABLE                         R10 R8 R9
      354 MOVE                             R9 R3
      355 LOADK                            R10 K57 ["CombinedOutlineColor"]
      356 LOADK                            R11 K54 ["Highlight"]
      357 LOADK                            R12 K20 ["Virtual"]
      358 CALL                             R9 3 1
      359 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      360 GETTABLEKS                       R11 R4 K26 ["fromType"]
      362 LOADK                            R12 K28 ["CombinedColor"]
      363 LOADB                            R13 0
      364 CALL                             R11 2 1
      365 SETTABLEKS                       R11 R10 K21 ["info"]
      367 MOVE                             R11 R7
      368 MOVE                             R12 R3
      369 LOADK                            R13 K58 ["OutlineColor"]
      370 LOADK                            R14 K54 ["Highlight"]
      371 LOADK                            R15 K31 ["Property"]
      372 CALL                             R12 3 1
      373 LOADNIL                          R13
      374 MOVE                             R14 R3
      375 LOADK                            R15 K59 ["OutlineTransparency"]
      376 LOADK                            R16 K54 ["Highlight"]
      377 LOADK                            R17 K31 ["Property"]
      378 CALL                             R14 3 -1
      379 CALL                             R11 -1 1
      380 SETTABLEKS                       R11 R10 K22 ["interactor"]
      382 SETTABLE                         R10 R8 R9
      383 MOVE                             R9 R3
      384 LOADK                            R10 K60 ["CombinedBackgroundColor"]
      385 LOADK                            R11 K61 ["GuiObject"]
      386 LOADK                            R12 K20 ["Virtual"]
      387 CALL                             R9 3 1
      388 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      389 GETTABLEKS                       R11 R4 K26 ["fromType"]
      391 LOADK                            R12 K28 ["CombinedColor"]
      392 LOADB                            R13 0
      393 CALL                             R11 2 1
      394 SETTABLEKS                       R11 R10 K21 ["info"]
      396 MOVE                             R11 R7
      397 MOVE                             R12 R3
      398 LOADK                            R13 K62 ["BackgroundColor3"]
      399 LOADK                            R14 K61 ["GuiObject"]
      400 LOADK                            R15 K31 ["Property"]
      401 CALL                             R12 3 1
      402 MOVE                             R13 R3
      403 LOADK                            R14 K63 ["BackgroundColor"]
      404 LOADK                            R15 K61 ["GuiObject"]
      405 LOADK                            R16 K31 ["Property"]
      406 CALL                             R13 3 1
      407 MOVE                             R14 R3
      408 LOADK                            R15 K64 ["BackgroundTransparency"]
      409 LOADK                            R16 K61 ["GuiObject"]
      410 LOADK                            R17 K31 ["Property"]
      411 CALL                             R14 3 -1
      412 CALL                             R11 -1 1
      413 SETTABLEKS                       R11 R10 K22 ["interactor"]
      415 SETTABLE                         R10 R8 R9
      416 MOVE                             R9 R3
      417 LOADK                            R10 K65 ["CombinedImageColor"]
      418 LOADK                            R11 K66 ["ImageButton"]
      419 LOADK                            R12 K20 ["Virtual"]
      420 CALL                             R9 3 1
      421 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      422 GETTABLEKS                       R11 R4 K26 ["fromType"]
      424 LOADK                            R12 K28 ["CombinedColor"]
      425 LOADB                            R13 0
      426 CALL                             R11 2 1
      427 SETTABLEKS                       R11 R10 K21 ["info"]
      429 MOVE                             R11 R7
      430 MOVE                             R12 R3
      431 LOADK                            R13 K67 ["ImageColor3"]
      432 LOADK                            R14 K66 ["ImageButton"]
      433 LOADK                            R15 K31 ["Property"]
      434 CALL                             R12 3 1
      435 LOADNIL                          R13
      436 MOVE                             R14 R3
      437 LOADK                            R15 K68 ["ImageTransparency"]
      438 LOADK                            R16 K66 ["ImageButton"]
      439 LOADK                            R17 K31 ["Property"]
      440 CALL                             R14 3 -1
      441 CALL                             R11 -1 1
      442 SETTABLEKS                       R11 R10 K22 ["interactor"]
      444 SETTABLE                         R10 R8 R9
      445 MOVE                             R9 R3
      446 LOADK                            R10 K65 ["CombinedImageColor"]
      447 LOADK                            R11 K69 ["ImageLabel"]
      448 LOADK                            R12 K20 ["Virtual"]
      449 CALL                             R9 3 1
      450 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      451 GETTABLEKS                       R11 R4 K26 ["fromType"]
      453 LOADK                            R12 K28 ["CombinedColor"]
      454 LOADB                            R13 0
      455 CALL                             R11 2 1
      456 SETTABLEKS                       R11 R10 K21 ["info"]
      458 MOVE                             R11 R7
      459 MOVE                             R12 R3
      460 LOADK                            R13 K67 ["ImageColor3"]
      461 LOADK                            R14 K69 ["ImageLabel"]
      462 LOADK                            R15 K31 ["Property"]
      463 CALL                             R12 3 1
      464 LOADNIL                          R13
      465 MOVE                             R14 R3
      466 LOADK                            R15 K68 ["ImageTransparency"]
      467 LOADK                            R16 K69 ["ImageLabel"]
      468 LOADK                            R17 K31 ["Property"]
      469 CALL                             R14 3 -1
      470 CALL                             R11 -1 1
      471 SETTABLEKS                       R11 R10 K22 ["interactor"]
      473 SETTABLE                         R10 R8 R9
      474 MOVE                             R9 R3
      475 LOADK                            R10 K70 ["CombinedTextColor"]
      476 LOADK                            R11 K71 ["TextBox"]
      477 LOADK                            R12 K20 ["Virtual"]
      478 CALL                             R9 3 1
      479 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      480 GETTABLEKS                       R11 R4 K26 ["fromType"]
      482 LOADK                            R12 K28 ["CombinedColor"]
      483 LOADB                            R13 0
      484 CALL                             R11 2 1
      485 SETTABLEKS                       R11 R10 K21 ["info"]
      487 MOVE                             R11 R7
      488 MOVE                             R12 R3
      489 LOADK                            R13 K72 ["TextColor3"]
      490 LOADK                            R14 K71 ["TextBox"]
      491 LOADK                            R15 K31 ["Property"]
      492 CALL                             R12 3 1
      493 LOADNIL                          R13
      494 MOVE                             R14 R3
      495 LOADK                            R15 K73 ["TextTransparency"]
      496 LOADK                            R16 K71 ["TextBox"]
      497 LOADK                            R17 K31 ["Property"]
      498 CALL                             R14 3 -1
      499 CALL                             R11 -1 1
      500 SETTABLEKS                       R11 R10 K22 ["interactor"]
      502 SETTABLE                         R10 R8 R9
      503 MOVE                             R9 R3
      504 LOADK                            R10 K74 ["CombinedTextStrokeColor"]
      505 LOADK                            R11 K71 ["TextBox"]
      506 LOADK                            R12 K20 ["Virtual"]
      507 CALL                             R9 3 1
      508 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      509 GETTABLEKS                       R11 R4 K26 ["fromType"]
      511 LOADK                            R12 K28 ["CombinedColor"]
      512 LOADB                            R13 0
      513 CALL                             R11 2 1
      514 SETTABLEKS                       R11 R10 K21 ["info"]
      516 MOVE                             R11 R7
      517 MOVE                             R12 R3
      518 LOADK                            R13 K75 ["TextStrokeColor3"]
      519 LOADK                            R14 K71 ["TextBox"]
      520 LOADK                            R15 K31 ["Property"]
      521 CALL                             R12 3 1
      522 LOADNIL                          R13
      523 MOVE                             R14 R3
      524 LOADK                            R15 K76 ["TextStrokeTransparency"]
      525 LOADK                            R16 K71 ["TextBox"]
      526 LOADK                            R17 K31 ["Property"]
      527 CALL                             R14 3 -1
      528 CALL                             R11 -1 1
      529 SETTABLEKS                       R11 R10 K22 ["interactor"]
      531 SETTABLE                         R10 R8 R9
      532 MOVE                             R9 R3
      533 LOADK                            R10 K70 ["CombinedTextColor"]
      534 LOADK                            R11 K77 ["TextButton"]
      535 LOADK                            R12 K20 ["Virtual"]
      536 CALL                             R9 3 1
      537 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      538 GETTABLEKS                       R11 R4 K26 ["fromType"]
      540 LOADK                            R12 K28 ["CombinedColor"]
      541 LOADB                            R13 0
      542 CALL                             R11 2 1
      543 SETTABLEKS                       R11 R10 K21 ["info"]
      545 MOVE                             R11 R7
      546 MOVE                             R12 R3
      547 LOADK                            R13 K72 ["TextColor3"]
      548 LOADK                            R14 K77 ["TextButton"]
      549 LOADK                            R15 K31 ["Property"]
      550 CALL                             R12 3 1
      551 LOADNIL                          R13
      552 MOVE                             R14 R3
      553 LOADK                            R15 K73 ["TextTransparency"]
      554 LOADK                            R16 K77 ["TextButton"]
      555 LOADK                            R17 K31 ["Property"]
      556 CALL                             R14 3 -1
      557 CALL                             R11 -1 1
      558 SETTABLEKS                       R11 R10 K22 ["interactor"]
      560 SETTABLE                         R10 R8 R9
      561 MOVE                             R9 R3
      562 LOADK                            R10 K74 ["CombinedTextStrokeColor"]
      563 LOADK                            R11 K77 ["TextButton"]
      564 LOADK                            R12 K20 ["Virtual"]
      565 CALL                             R9 3 1
      566 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      567 GETTABLEKS                       R11 R4 K26 ["fromType"]
      569 LOADK                            R12 K28 ["CombinedColor"]
      570 LOADB                            R13 0
      571 CALL                             R11 2 1
      572 SETTABLEKS                       R11 R10 K21 ["info"]
      574 MOVE                             R11 R7
      575 MOVE                             R12 R3
      576 LOADK                            R13 K75 ["TextStrokeColor3"]
      577 LOADK                            R14 K77 ["TextButton"]
      578 LOADK                            R15 K31 ["Property"]
      579 CALL                             R12 3 1
      580 LOADNIL                          R13
      581 MOVE                             R14 R3
      582 LOADK                            R15 K76 ["TextStrokeTransparency"]
      583 LOADK                            R16 K77 ["TextButton"]
      584 LOADK                            R17 K31 ["Property"]
      585 CALL                             R14 3 -1
      586 CALL                             R11 -1 1
      587 SETTABLEKS                       R11 R10 K22 ["interactor"]
      589 SETTABLE                         R10 R8 R9
      590 MOVE                             R9 R3
      591 LOADK                            R10 K70 ["CombinedTextColor"]
      592 LOADK                            R11 K78 ["TextLabel"]
      593 LOADK                            R12 K20 ["Virtual"]
      594 CALL                             R9 3 1
      595 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      596 GETTABLEKS                       R11 R4 K26 ["fromType"]
      598 LOADK                            R12 K28 ["CombinedColor"]
      599 LOADB                            R13 0
      600 CALL                             R11 2 1
      601 SETTABLEKS                       R11 R10 K21 ["info"]
      603 MOVE                             R11 R7
      604 MOVE                             R12 R3
      605 LOADK                            R13 K72 ["TextColor3"]
      606 LOADK                            R14 K78 ["TextLabel"]
      607 LOADK                            R15 K31 ["Property"]
      608 CALL                             R12 3 1
      609 LOADNIL                          R13
      610 MOVE                             R14 R3
      611 LOADK                            R15 K73 ["TextTransparency"]
      612 LOADK                            R16 K78 ["TextLabel"]
      613 LOADK                            R17 K31 ["Property"]
      614 CALL                             R14 3 -1
      615 CALL                             R11 -1 1
      616 SETTABLEKS                       R11 R10 K22 ["interactor"]
      618 SETTABLE                         R10 R8 R9
      619 MOVE                             R9 R3
      620 LOADK                            R10 K74 ["CombinedTextStrokeColor"]
      621 LOADK                            R11 K78 ["TextLabel"]
      622 LOADK                            R12 K20 ["Virtual"]
      623 CALL                             R9 3 1
      624 DUPTABLE                         R10 K23 [{"info", "interactor"}]
      625 GETTABLEKS                       R11 R4 K26 ["fromType"]
      627 LOADK                            R12 K28 ["CombinedColor"]
      628 LOADB                            R13 0
      629 CALL                             R11 2 1
      630 SETTABLEKS                       R11 R10 K21 ["info"]
      632 MOVE                             R11 R7
      633 MOVE                             R12 R3
      634 LOADK                            R13 K75 ["TextStrokeColor3"]
      635 LOADK                            R14 K78 ["TextLabel"]
      636 LOADK                            R15 K31 ["Property"]
      637 CALL                             R12 3 1
      638 LOADNIL                          R13
      639 MOVE                             R14 R3
      640 LOADK                            R15 K76 ["TextStrokeTransparency"]
      641 LOADK                            R16 K78 ["TextLabel"]
      642 LOADK                            R17 K31 ["Property"]
      643 CALL                             R14 3 -1
      644 CALL                             R11 -1 1
      645 SETTABLEKS                       R11 R10 K22 ["interactor"]
      647 SETTABLE                         R10 R8 R9
      648 RETURN                           R8 1
