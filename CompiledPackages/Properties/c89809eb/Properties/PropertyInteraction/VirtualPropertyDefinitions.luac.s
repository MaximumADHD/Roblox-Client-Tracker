MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyInteraction"]
       11 GETTABLEKS                       R2 R2 K7 ["Interactors"]
       13 GETTABLEKS                       R2 R2 K8 ["VirtualInteractor"]
       15 GETTABLEKS                       R2 R2 K9 ["InstanceSelf"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["PropertyInteraction"]
       22 GETTABLEKS                       R3 R3 K7 ["Interactors"]
       24 GETTABLEKS                       R3 R3 K8 ["VirtualInteractor"]
       26 GETTABLEKS                       R3 R3 K10 ["MeshId"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["PropertyInteraction"]
       33 GETTABLEKS                       R4 R4 K11 ["PropertyId"]
       35 GETTABLEKS                       R4 R4 K12 ["fromClass"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["PropertyInteraction"]
       42 GETTABLEKS                       R5 R5 K13 ["PropertyInfo"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K14 ["PropertyTypes"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["PropertyInteraction"]
       54 GETTABLEKS                       R7 R7 K7 ["Interactors"]
       56 GETTABLEKS                       R7 R7 K8 ["VirtualInteractor"]
       58 GETTABLEKS                       R7 R7 K15 ["VirtualPropertyDataTypes"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["PropertyInteraction"]
       65 GETTABLEKS                       R8 R8 K7 ["Interactors"]
       67 GETTABLEKS                       R8 R8 K8 ["VirtualInteractor"]
       69 GETTABLEKS                       R8 R8 K16 ["createCombinedColor"]
       71 CALL                             R7 1 1
       72 NEWTABLE                         R8 32 0
       74 MOVE                             R9 R3
       75 LOADK                            R10 K17 ["Self"]
       76 LOADK                            R11 K18 ["Instance"]
       77 LOADK                            R12 K19 ["Virtual"]
       78 CALL                             R9 3 1
       79 DUPTABLE                         R10 K22 [{"info", "interactor"}]
       80 GETTABLEKS                       R11 R4 K23 ["fromInstanceRefType"]
       82 LOADB                            R12 1
       83 LOADK                            R13 K18 ["Instance"]
       84 CALL                             R11 2 1
       85 SETTABLEKS                       R11 R10 K20 ["info"]
       87 SETTABLEKS                       R1 R10 K21 ["interactor"]
       89 SETTABLE                         R10 R8 R9
       90 MOVE                             R9 R3
       91 LOADK                            R10 K10 ["MeshId"]
       92 LOADK                            R11 K24 ["MeshPart"]
       93 LOADK                            R12 K19 ["Virtual"]
       94 CALL                             R9 3 1
       95 DUPTABLE                         R10 K22 [{"info", "interactor"}]
       96 GETTABLEKS                       R11 R4 K25 ["fromType"]
       98 LOADK                            R12 K26 ["string"]
       99 LOADB                            R13 0
      100 CALL                             R11 2 1
      101 SETTABLEKS                       R11 R10 K20 ["info"]
      103 SETTABLEKS                       R2 R10 K21 ["interactor"]
      105 SETTABLE                         R10 R8 R9
      106 MOVE                             R9 R3
      107 LOADK                            R10 K27 ["CombinedColor"]
      108 LOADK                            R11 K28 ["BasePart"]
      109 LOADK                            R12 K19 ["Virtual"]
      110 CALL                             R9 3 1
      111 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      112 GETTABLEKS                       R11 R4 K25 ["fromType"]
      114 LOADK                            R12 K27 ["CombinedColor"]
      115 LOADB                            R13 0
      116 CALL                             R11 2 1
      117 SETTABLEKS                       R11 R10 K20 ["info"]
      119 MOVE                             R11 R7
      120 MOVE                             R12 R3
      121 LOADK                            R13 K29 ["Color"]
      122 LOADK                            R14 K28 ["BasePart"]
      123 LOADK                            R15 K30 ["Property"]
      124 CALL                             R12 3 1
      125 MOVE                             R13 R3
      126 LOADK                            R14 K31 ["BrickColor"]
      127 LOADK                            R15 K28 ["BasePart"]
      128 LOADK                            R16 K30 ["Property"]
      129 CALL                             R13 3 1
      130 MOVE                             R14 R3
      131 LOADK                            R15 K32 ["Transparency"]
      132 LOADK                            R16 K28 ["BasePart"]
      133 LOADK                            R17 K30 ["Property"]
      134 CALL                             R14 3 -1
      135 CALL                             R11 -1 1
      136 SETTABLEKS                       R11 R10 K21 ["interactor"]
      138 SETTABLE                         R10 R8 R9
      139 MOVE                             R9 R3
      140 LOADK                            R10 K33 ["CombinedHeadColor"]
      141 LOADK                            R11 K34 ["BodyColors"]
      142 LOADK                            R12 K19 ["Virtual"]
      143 CALL                             R9 3 1
      144 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      145 GETTABLEKS                       R11 R4 K25 ["fromType"]
      147 LOADK                            R12 K27 ["CombinedColor"]
      148 LOADB                            R13 0
      149 CALL                             R11 2 1
      150 SETTABLEKS                       R11 R10 K20 ["info"]
      152 MOVE                             R11 R7
      153 MOVE                             R12 R3
      154 LOADK                            R13 K35 ["HeadColor3"]
      155 LOADK                            R14 K34 ["BodyColors"]
      156 LOADK                            R15 K30 ["Property"]
      157 CALL                             R12 3 1
      158 MOVE                             R13 R3
      159 LOADK                            R14 K36 ["HeadColor"]
      160 LOADK                            R15 K34 ["BodyColors"]
      161 LOADK                            R16 K30 ["Property"]
      162 CALL                             R13 3 1
      163 LOADNIL                          R14
      164 CALL                             R11 3 1
      165 SETTABLEKS                       R11 R10 K21 ["interactor"]
      167 SETTABLE                         R10 R8 R9
      168 MOVE                             R9 R3
      169 LOADK                            R10 K37 ["CombinedLeftArmColor"]
      170 LOADK                            R11 K34 ["BodyColors"]
      171 LOADK                            R12 K19 ["Virtual"]
      172 CALL                             R9 3 1
      173 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      174 GETTABLEKS                       R11 R4 K25 ["fromType"]
      176 LOADK                            R12 K27 ["CombinedColor"]
      177 LOADB                            R13 0
      178 CALL                             R11 2 1
      179 SETTABLEKS                       R11 R10 K20 ["info"]
      181 MOVE                             R11 R7
      182 MOVE                             R12 R3
      183 LOADK                            R13 K38 ["LeftArmColor3"]
      184 LOADK                            R14 K34 ["BodyColors"]
      185 LOADK                            R15 K30 ["Property"]
      186 CALL                             R12 3 1
      187 MOVE                             R13 R3
      188 LOADK                            R14 K39 ["LeftArmColor"]
      189 LOADK                            R15 K34 ["BodyColors"]
      190 LOADK                            R16 K30 ["Property"]
      191 CALL                             R13 3 1
      192 LOADNIL                          R14
      193 CALL                             R11 3 1
      194 SETTABLEKS                       R11 R10 K21 ["interactor"]
      196 SETTABLE                         R10 R8 R9
      197 MOVE                             R9 R3
      198 LOADK                            R10 K40 ["CombinedLeftLegColor"]
      199 LOADK                            R11 K34 ["BodyColors"]
      200 LOADK                            R12 K19 ["Virtual"]
      201 CALL                             R9 3 1
      202 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      203 GETTABLEKS                       R11 R4 K25 ["fromType"]
      205 LOADK                            R12 K27 ["CombinedColor"]
      206 LOADB                            R13 0
      207 CALL                             R11 2 1
      208 SETTABLEKS                       R11 R10 K20 ["info"]
      210 MOVE                             R11 R7
      211 MOVE                             R12 R3
      212 LOADK                            R13 K41 ["LeftLegColor3"]
      213 LOADK                            R14 K34 ["BodyColors"]
      214 LOADK                            R15 K30 ["Property"]
      215 CALL                             R12 3 1
      216 MOVE                             R13 R3
      217 LOADK                            R14 K42 ["LeftLegColor"]
      218 LOADK                            R15 K34 ["BodyColors"]
      219 LOADK                            R16 K30 ["Property"]
      220 CALL                             R13 3 1
      221 LOADNIL                          R14
      222 CALL                             R11 3 1
      223 SETTABLEKS                       R11 R10 K21 ["interactor"]
      225 SETTABLE                         R10 R8 R9
      226 MOVE                             R9 R3
      227 LOADK                            R10 K43 ["CombinedRightArmColor"]
      228 LOADK                            R11 K34 ["BodyColors"]
      229 LOADK                            R12 K19 ["Virtual"]
      230 CALL                             R9 3 1
      231 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      232 GETTABLEKS                       R11 R4 K25 ["fromType"]
      234 LOADK                            R12 K27 ["CombinedColor"]
      235 LOADB                            R13 0
      236 CALL                             R11 2 1
      237 SETTABLEKS                       R11 R10 K20 ["info"]
      239 MOVE                             R11 R7
      240 MOVE                             R12 R3
      241 LOADK                            R13 K44 ["RightArmColor3"]
      242 LOADK                            R14 K34 ["BodyColors"]
      243 LOADK                            R15 K30 ["Property"]
      244 CALL                             R12 3 1
      245 MOVE                             R13 R3
      246 LOADK                            R14 K45 ["RightArmColor"]
      247 LOADK                            R15 K34 ["BodyColors"]
      248 LOADK                            R16 K30 ["Property"]
      249 CALL                             R13 3 1
      250 LOADNIL                          R14
      251 CALL                             R11 3 1
      252 SETTABLEKS                       R11 R10 K21 ["interactor"]
      254 SETTABLE                         R10 R8 R9
      255 MOVE                             R9 R3
      256 LOADK                            R10 K46 ["CombinedRightLegColor"]
      257 LOADK                            R11 K34 ["BodyColors"]
      258 LOADK                            R12 K19 ["Virtual"]
      259 CALL                             R9 3 1
      260 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      261 GETTABLEKS                       R11 R4 K25 ["fromType"]
      263 LOADK                            R12 K27 ["CombinedColor"]
      264 LOADB                            R13 0
      265 CALL                             R11 2 1
      266 SETTABLEKS                       R11 R10 K20 ["info"]
      268 MOVE                             R11 R7
      269 MOVE                             R12 R3
      270 LOADK                            R13 K47 ["RightLegColor3"]
      271 LOADK                            R14 K34 ["BodyColors"]
      272 LOADK                            R15 K30 ["Property"]
      273 CALL                             R12 3 1
      274 MOVE                             R13 R3
      275 LOADK                            R14 K48 ["RightLegColor"]
      276 LOADK                            R15 K34 ["BodyColors"]
      277 LOADK                            R16 K30 ["Property"]
      278 CALL                             R13 3 1
      279 LOADNIL                          R14
      280 CALL                             R11 3 1
      281 SETTABLEKS                       R11 R10 K21 ["interactor"]
      283 SETTABLE                         R10 R8 R9
      284 MOVE                             R9 R3
      285 LOADK                            R10 K49 ["CombinedTorsoColor"]
      286 LOADK                            R11 K34 ["BodyColors"]
      287 LOADK                            R12 K19 ["Virtual"]
      288 CALL                             R9 3 1
      289 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      290 GETTABLEKS                       R11 R4 K25 ["fromType"]
      292 LOADK                            R12 K27 ["CombinedColor"]
      293 LOADB                            R13 0
      294 CALL                             R11 2 1
      295 SETTABLEKS                       R11 R10 K20 ["info"]
      297 MOVE                             R11 R7
      298 MOVE                             R12 R3
      299 LOADK                            R13 K50 ["TorsoColor3"]
      300 LOADK                            R14 K34 ["BodyColors"]
      301 LOADK                            R15 K30 ["Property"]
      302 CALL                             R12 3 1
      303 MOVE                             R13 R3
      304 LOADK                            R14 K51 ["TorsoColor"]
      305 LOADK                            R15 K34 ["BodyColors"]
      306 LOADK                            R16 K30 ["Property"]
      307 CALL                             R13 3 1
      308 LOADNIL                          R14
      309 CALL                             R11 3 1
      310 SETTABLEKS                       R11 R10 K21 ["interactor"]
      312 SETTABLE                         R10 R8 R9
      313 MOVE                             R9 R3
      314 LOADK                            R10 K52 ["CombinedFillColor"]
      315 LOADK                            R11 K53 ["Highlight"]
      316 LOADK                            R12 K19 ["Virtual"]
      317 CALL                             R9 3 1
      318 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      319 GETTABLEKS                       R11 R4 K25 ["fromType"]
      321 LOADK                            R12 K27 ["CombinedColor"]
      322 LOADB                            R13 0
      323 CALL                             R11 2 1
      324 SETTABLEKS                       R11 R10 K20 ["info"]
      326 MOVE                             R11 R7
      327 MOVE                             R12 R3
      328 LOADK                            R13 K54 ["FillColor"]
      329 LOADK                            R14 K53 ["Highlight"]
      330 LOADK                            R15 K30 ["Property"]
      331 CALL                             R12 3 1
      332 LOADNIL                          R13
      333 MOVE                             R14 R3
      334 LOADK                            R15 K55 ["FillTransparency"]
      335 LOADK                            R16 K53 ["Highlight"]
      336 LOADK                            R17 K30 ["Property"]
      337 CALL                             R14 3 -1
      338 CALL                             R11 -1 1
      339 SETTABLEKS                       R11 R10 K21 ["interactor"]
      341 SETTABLE                         R10 R8 R9
      342 MOVE                             R9 R3
      343 LOADK                            R10 K56 ["CombinedOutlineColor"]
      344 LOADK                            R11 K53 ["Highlight"]
      345 LOADK                            R12 K19 ["Virtual"]
      346 CALL                             R9 3 1
      347 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      348 GETTABLEKS                       R11 R4 K25 ["fromType"]
      350 LOADK                            R12 K27 ["CombinedColor"]
      351 LOADB                            R13 0
      352 CALL                             R11 2 1
      353 SETTABLEKS                       R11 R10 K20 ["info"]
      355 MOVE                             R11 R7
      356 MOVE                             R12 R3
      357 LOADK                            R13 K57 ["OutlineColor"]
      358 LOADK                            R14 K53 ["Highlight"]
      359 LOADK                            R15 K30 ["Property"]
      360 CALL                             R12 3 1
      361 LOADNIL                          R13
      362 MOVE                             R14 R3
      363 LOADK                            R15 K58 ["OutlineTransparency"]
      364 LOADK                            R16 K53 ["Highlight"]
      365 LOADK                            R17 K30 ["Property"]
      366 CALL                             R14 3 -1
      367 CALL                             R11 -1 1
      368 SETTABLEKS                       R11 R10 K21 ["interactor"]
      370 SETTABLE                         R10 R8 R9
      371 MOVE                             R9 R3
      372 LOADK                            R10 K59 ["CombinedBackgroundColor"]
      373 LOADK                            R11 K60 ["GuiObject"]
      374 LOADK                            R12 K19 ["Virtual"]
      375 CALL                             R9 3 1
      376 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      377 GETTABLEKS                       R11 R4 K25 ["fromType"]
      379 LOADK                            R12 K27 ["CombinedColor"]
      380 LOADB                            R13 0
      381 CALL                             R11 2 1
      382 SETTABLEKS                       R11 R10 K20 ["info"]
      384 MOVE                             R11 R7
      385 MOVE                             R12 R3
      386 LOADK                            R13 K61 ["BackgroundColor3"]
      387 LOADK                            R14 K60 ["GuiObject"]
      388 LOADK                            R15 K30 ["Property"]
      389 CALL                             R12 3 1
      390 MOVE                             R13 R3
      391 LOADK                            R14 K62 ["BackgroundColor"]
      392 LOADK                            R15 K60 ["GuiObject"]
      393 LOADK                            R16 K30 ["Property"]
      394 CALL                             R13 3 1
      395 MOVE                             R14 R3
      396 LOADK                            R15 K63 ["BackgroundTransparency"]
      397 LOADK                            R16 K60 ["GuiObject"]
      398 LOADK                            R17 K30 ["Property"]
      399 CALL                             R14 3 -1
      400 CALL                             R11 -1 1
      401 SETTABLEKS                       R11 R10 K21 ["interactor"]
      403 SETTABLE                         R10 R8 R9
      404 MOVE                             R9 R3
      405 LOADK                            R10 K64 ["CombinedImageColor"]
      406 LOADK                            R11 K65 ["ImageButton"]
      407 LOADK                            R12 K19 ["Virtual"]
      408 CALL                             R9 3 1
      409 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      410 GETTABLEKS                       R11 R4 K25 ["fromType"]
      412 LOADK                            R12 K27 ["CombinedColor"]
      413 LOADB                            R13 0
      414 CALL                             R11 2 1
      415 SETTABLEKS                       R11 R10 K20 ["info"]
      417 MOVE                             R11 R7
      418 MOVE                             R12 R3
      419 LOADK                            R13 K66 ["ImageColor3"]
      420 LOADK                            R14 K65 ["ImageButton"]
      421 LOADK                            R15 K30 ["Property"]
      422 CALL                             R12 3 1
      423 LOADNIL                          R13
      424 MOVE                             R14 R3
      425 LOADK                            R15 K67 ["ImageTransparency"]
      426 LOADK                            R16 K65 ["ImageButton"]
      427 LOADK                            R17 K30 ["Property"]
      428 CALL                             R14 3 -1
      429 CALL                             R11 -1 1
      430 SETTABLEKS                       R11 R10 K21 ["interactor"]
      432 SETTABLE                         R10 R8 R9
      433 MOVE                             R9 R3
      434 LOADK                            R10 K64 ["CombinedImageColor"]
      435 LOADK                            R11 K68 ["ImageLabel"]
      436 LOADK                            R12 K19 ["Virtual"]
      437 CALL                             R9 3 1
      438 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      439 GETTABLEKS                       R11 R4 K25 ["fromType"]
      441 LOADK                            R12 K27 ["CombinedColor"]
      442 LOADB                            R13 0
      443 CALL                             R11 2 1
      444 SETTABLEKS                       R11 R10 K20 ["info"]
      446 MOVE                             R11 R7
      447 MOVE                             R12 R3
      448 LOADK                            R13 K66 ["ImageColor3"]
      449 LOADK                            R14 K68 ["ImageLabel"]
      450 LOADK                            R15 K30 ["Property"]
      451 CALL                             R12 3 1
      452 LOADNIL                          R13
      453 MOVE                             R14 R3
      454 LOADK                            R15 K67 ["ImageTransparency"]
      455 LOADK                            R16 K68 ["ImageLabel"]
      456 LOADK                            R17 K30 ["Property"]
      457 CALL                             R14 3 -1
      458 CALL                             R11 -1 1
      459 SETTABLEKS                       R11 R10 K21 ["interactor"]
      461 SETTABLE                         R10 R8 R9
      462 MOVE                             R9 R3
      463 LOADK                            R10 K69 ["CombinedTextColor"]
      464 LOADK                            R11 K70 ["TextBox"]
      465 LOADK                            R12 K19 ["Virtual"]
      466 CALL                             R9 3 1
      467 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      468 GETTABLEKS                       R11 R4 K25 ["fromType"]
      470 LOADK                            R12 K27 ["CombinedColor"]
      471 LOADB                            R13 0
      472 CALL                             R11 2 1
      473 SETTABLEKS                       R11 R10 K20 ["info"]
      475 MOVE                             R11 R7
      476 MOVE                             R12 R3
      477 LOADK                            R13 K71 ["TextColor3"]
      478 LOADK                            R14 K70 ["TextBox"]
      479 LOADK                            R15 K30 ["Property"]
      480 CALL                             R12 3 1
      481 LOADNIL                          R13
      482 MOVE                             R14 R3
      483 LOADK                            R15 K72 ["TextTransparency"]
      484 LOADK                            R16 K70 ["TextBox"]
      485 LOADK                            R17 K30 ["Property"]
      486 CALL                             R14 3 -1
      487 CALL                             R11 -1 1
      488 SETTABLEKS                       R11 R10 K21 ["interactor"]
      490 SETTABLE                         R10 R8 R9
      491 MOVE                             R9 R3
      492 LOADK                            R10 K73 ["CombinedTextStrokeColor"]
      493 LOADK                            R11 K70 ["TextBox"]
      494 LOADK                            R12 K19 ["Virtual"]
      495 CALL                             R9 3 1
      496 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      497 GETTABLEKS                       R11 R4 K25 ["fromType"]
      499 LOADK                            R12 K27 ["CombinedColor"]
      500 LOADB                            R13 0
      501 CALL                             R11 2 1
      502 SETTABLEKS                       R11 R10 K20 ["info"]
      504 MOVE                             R11 R7
      505 MOVE                             R12 R3
      506 LOADK                            R13 K74 ["TextStrokeColor3"]
      507 LOADK                            R14 K70 ["TextBox"]
      508 LOADK                            R15 K30 ["Property"]
      509 CALL                             R12 3 1
      510 LOADNIL                          R13
      511 MOVE                             R14 R3
      512 LOADK                            R15 K75 ["TextStrokeTransparency"]
      513 LOADK                            R16 K70 ["TextBox"]
      514 LOADK                            R17 K30 ["Property"]
      515 CALL                             R14 3 -1
      516 CALL                             R11 -1 1
      517 SETTABLEKS                       R11 R10 K21 ["interactor"]
      519 SETTABLE                         R10 R8 R9
      520 MOVE                             R9 R3
      521 LOADK                            R10 K69 ["CombinedTextColor"]
      522 LOADK                            R11 K76 ["TextButton"]
      523 LOADK                            R12 K19 ["Virtual"]
      524 CALL                             R9 3 1
      525 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      526 GETTABLEKS                       R11 R4 K25 ["fromType"]
      528 LOADK                            R12 K27 ["CombinedColor"]
      529 LOADB                            R13 0
      530 CALL                             R11 2 1
      531 SETTABLEKS                       R11 R10 K20 ["info"]
      533 MOVE                             R11 R7
      534 MOVE                             R12 R3
      535 LOADK                            R13 K71 ["TextColor3"]
      536 LOADK                            R14 K76 ["TextButton"]
      537 LOADK                            R15 K30 ["Property"]
      538 CALL                             R12 3 1
      539 LOADNIL                          R13
      540 MOVE                             R14 R3
      541 LOADK                            R15 K72 ["TextTransparency"]
      542 LOADK                            R16 K76 ["TextButton"]
      543 LOADK                            R17 K30 ["Property"]
      544 CALL                             R14 3 -1
      545 CALL                             R11 -1 1
      546 SETTABLEKS                       R11 R10 K21 ["interactor"]
      548 SETTABLE                         R10 R8 R9
      549 MOVE                             R9 R3
      550 LOADK                            R10 K73 ["CombinedTextStrokeColor"]
      551 LOADK                            R11 K76 ["TextButton"]
      552 LOADK                            R12 K19 ["Virtual"]
      553 CALL                             R9 3 1
      554 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      555 GETTABLEKS                       R11 R4 K25 ["fromType"]
      557 LOADK                            R12 K27 ["CombinedColor"]
      558 LOADB                            R13 0
      559 CALL                             R11 2 1
      560 SETTABLEKS                       R11 R10 K20 ["info"]
      562 MOVE                             R11 R7
      563 MOVE                             R12 R3
      564 LOADK                            R13 K74 ["TextStrokeColor3"]
      565 LOADK                            R14 K76 ["TextButton"]
      566 LOADK                            R15 K30 ["Property"]
      567 CALL                             R12 3 1
      568 LOADNIL                          R13
      569 MOVE                             R14 R3
      570 LOADK                            R15 K75 ["TextStrokeTransparency"]
      571 LOADK                            R16 K76 ["TextButton"]
      572 LOADK                            R17 K30 ["Property"]
      573 CALL                             R14 3 -1
      574 CALL                             R11 -1 1
      575 SETTABLEKS                       R11 R10 K21 ["interactor"]
      577 SETTABLE                         R10 R8 R9
      578 MOVE                             R9 R3
      579 LOADK                            R10 K69 ["CombinedTextColor"]
      580 LOADK                            R11 K77 ["TextLabel"]
      581 LOADK                            R12 K19 ["Virtual"]
      582 CALL                             R9 3 1
      583 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      584 GETTABLEKS                       R11 R4 K25 ["fromType"]
      586 LOADK                            R12 K27 ["CombinedColor"]
      587 LOADB                            R13 0
      588 CALL                             R11 2 1
      589 SETTABLEKS                       R11 R10 K20 ["info"]
      591 MOVE                             R11 R7
      592 MOVE                             R12 R3
      593 LOADK                            R13 K71 ["TextColor3"]
      594 LOADK                            R14 K77 ["TextLabel"]
      595 LOADK                            R15 K30 ["Property"]
      596 CALL                             R12 3 1
      597 LOADNIL                          R13
      598 MOVE                             R14 R3
      599 LOADK                            R15 K72 ["TextTransparency"]
      600 LOADK                            R16 K77 ["TextLabel"]
      601 LOADK                            R17 K30 ["Property"]
      602 CALL                             R14 3 -1
      603 CALL                             R11 -1 1
      604 SETTABLEKS                       R11 R10 K21 ["interactor"]
      606 SETTABLE                         R10 R8 R9
      607 MOVE                             R9 R3
      608 LOADK                            R10 K73 ["CombinedTextStrokeColor"]
      609 LOADK                            R11 K77 ["TextLabel"]
      610 LOADK                            R12 K19 ["Virtual"]
      611 CALL                             R9 3 1
      612 DUPTABLE                         R10 K22 [{"info", "interactor"}]
      613 GETTABLEKS                       R11 R4 K25 ["fromType"]
      615 LOADK                            R12 K27 ["CombinedColor"]
      616 LOADB                            R13 0
      617 CALL                             R11 2 1
      618 SETTABLEKS                       R11 R10 K20 ["info"]
      620 MOVE                             R11 R7
      621 MOVE                             R12 R3
      622 LOADK                            R13 K74 ["TextStrokeColor3"]
      623 LOADK                            R14 K77 ["TextLabel"]
      624 LOADK                            R15 K30 ["Property"]
      625 CALL                             R12 3 1
      626 LOADNIL                          R13
      627 MOVE                             R14 R3
      628 LOADK                            R15 K75 ["TextStrokeTransparency"]
      629 LOADK                            R16 K77 ["TextLabel"]
      630 LOADK                            R17 K30 ["Property"]
      631 CALL                             R14 3 -1
      632 CALL                             R11 -1 1
      633 SETTABLEKS                       R11 R10 K21 ["interactor"]
      635 SETTABLE                         R10 R8 R9
      636 RETURN                           R8 1
