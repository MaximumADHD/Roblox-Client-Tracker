PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 SETTABLE                         R1 R2 R3
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R4 K0 ["BasePart"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Not a BasePart"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R2 R0 K5 ["CanCollide"]
       12 NOT                              R1 R2
       13 RETURN                           R1 1

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
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K6 ["PropertyInteraction"]
       76 GETTABLEKS                       R9 R9 K17 ["propertyIdToString"]
       78 CALL                             R8 1 1
       79 NEWTABLE                         R9 0 0
       81 NEWTABLE                         R10 0 0
       83 DUPCLOSURE                       R11 K18 [PROTO_0]
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R8
       86 DUPCLOSURE                       R12 K19 [PROTO_1]
       87 CAPTURE                          VAL R10
       88 MOVE                             R13 R3
       89 LOADK                            R14 K20 ["CanQuery"]
       90 LOADK                            R15 K21 ["BasePart"]
       91 LOADK                            R16 K22 ["Property"]
       92 CALL                             R13 3 1
       93 DUPTABLE                         R14 K24 [{"isVisible"}]
       94 DUPCLOSURE                       R15 K25 [PROTO_2]
       95 SETTABLEKS                       R15 R14 K23 ["isVisible"]
       97 MOVE                             R15 R8
       98 MOVE                             R16 R13
       99 CALL                             R15 1 1
      100 SETTABLE                         R14 R9 R15
      101 MOVE                             R13 R3
      102 LOADK                            R14 K26 ["Self"]
      103 LOADK                            R15 K27 ["Instance"]
      104 LOADK                            R16 K28 ["Virtual"]
      105 CALL                             R13 3 1
      106 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      107 GETTABLEKS                       R15 R4 K32 ["fromInstanceRefType"]
      109 LOADB                            R16 1
      110 LOADK                            R17 K27 ["Instance"]
      111 CALL                             R15 2 1
      112 SETTABLEKS                       R15 R14 K29 ["info"]
      114 SETTABLEKS                       R1 R14 K30 ["interactor"]
      116 SETTABLE                         R14 R10 R13
      117 MOVE                             R13 R3
      118 LOADK                            R14 K10 ["MeshId"]
      119 LOADK                            R15 K33 ["MeshPart"]
      120 LOADK                            R16 K28 ["Virtual"]
      121 CALL                             R13 3 1
      122 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      123 GETTABLEKS                       R15 R4 K34 ["fromType"]
      125 LOADK                            R16 K35 ["string"]
      126 LOADB                            R17 0
      127 CALL                             R15 2 1
      128 SETTABLEKS                       R15 R14 K29 ["info"]
      130 SETTABLEKS                       R2 R14 K30 ["interactor"]
      132 SETTABLE                         R14 R10 R13
      133 MOVE                             R13 R3
      134 LOADK                            R14 K36 ["CombinedColor"]
      135 LOADK                            R15 K21 ["BasePart"]
      136 LOADK                            R16 K28 ["Virtual"]
      137 CALL                             R13 3 1
      138 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      139 GETTABLEKS                       R15 R4 K34 ["fromType"]
      141 LOADK                            R16 K36 ["CombinedColor"]
      142 LOADB                            R17 0
      143 CALL                             R15 2 1
      144 SETTABLEKS                       R15 R14 K29 ["info"]
      146 MOVE                             R15 R7
      147 MOVE                             R16 R3
      148 LOADK                            R17 K37 ["Color"]
      149 LOADK                            R18 K21 ["BasePart"]
      150 LOADK                            R19 K22 ["Property"]
      151 CALL                             R16 3 1
      152 MOVE                             R17 R3
      153 LOADK                            R18 K38 ["BrickColor"]
      154 LOADK                            R19 K21 ["BasePart"]
      155 LOADK                            R20 K22 ["Property"]
      156 CALL                             R17 3 1
      157 MOVE                             R18 R3
      158 LOADK                            R19 K39 ["Transparency"]
      159 LOADK                            R20 K21 ["BasePart"]
      160 LOADK                            R21 K22 ["Property"]
      161 CALL                             R18 3 -1
      162 CALL                             R15 -1 1
      163 SETTABLEKS                       R15 R14 K30 ["interactor"]
      165 SETTABLE                         R14 R10 R13
      166 MOVE                             R13 R3
      167 LOADK                            R14 K40 ["CombinedHeadColor"]
      168 LOADK                            R15 K41 ["BodyColors"]
      169 LOADK                            R16 K28 ["Virtual"]
      170 CALL                             R13 3 1
      171 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      172 GETTABLEKS                       R15 R4 K34 ["fromType"]
      174 LOADK                            R16 K36 ["CombinedColor"]
      175 LOADB                            R17 0
      176 CALL                             R15 2 1
      177 SETTABLEKS                       R15 R14 K29 ["info"]
      179 MOVE                             R15 R7
      180 MOVE                             R16 R3
      181 LOADK                            R17 K42 ["HeadColor3"]
      182 LOADK                            R18 K41 ["BodyColors"]
      183 LOADK                            R19 K22 ["Property"]
      184 CALL                             R16 3 1
      185 MOVE                             R17 R3
      186 LOADK                            R18 K43 ["HeadColor"]
      187 LOADK                            R19 K41 ["BodyColors"]
      188 LOADK                            R20 K22 ["Property"]
      189 CALL                             R17 3 1
      190 LOADNIL                          R18
      191 CALL                             R15 3 1
      192 SETTABLEKS                       R15 R14 K30 ["interactor"]
      194 SETTABLE                         R14 R10 R13
      195 MOVE                             R13 R3
      196 LOADK                            R14 K44 ["CombinedLeftArmColor"]
      197 LOADK                            R15 K41 ["BodyColors"]
      198 LOADK                            R16 K28 ["Virtual"]
      199 CALL                             R13 3 1
      200 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      201 GETTABLEKS                       R15 R4 K34 ["fromType"]
      203 LOADK                            R16 K36 ["CombinedColor"]
      204 LOADB                            R17 0
      205 CALL                             R15 2 1
      206 SETTABLEKS                       R15 R14 K29 ["info"]
      208 MOVE                             R15 R7
      209 MOVE                             R16 R3
      210 LOADK                            R17 K45 ["LeftArmColor3"]
      211 LOADK                            R18 K41 ["BodyColors"]
      212 LOADK                            R19 K22 ["Property"]
      213 CALL                             R16 3 1
      214 MOVE                             R17 R3
      215 LOADK                            R18 K46 ["LeftArmColor"]
      216 LOADK                            R19 K41 ["BodyColors"]
      217 LOADK                            R20 K22 ["Property"]
      218 CALL                             R17 3 1
      219 LOADNIL                          R18
      220 CALL                             R15 3 1
      221 SETTABLEKS                       R15 R14 K30 ["interactor"]
      223 SETTABLE                         R14 R10 R13
      224 MOVE                             R13 R3
      225 LOADK                            R14 K47 ["CombinedLeftLegColor"]
      226 LOADK                            R15 K41 ["BodyColors"]
      227 LOADK                            R16 K28 ["Virtual"]
      228 CALL                             R13 3 1
      229 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      230 GETTABLEKS                       R15 R4 K34 ["fromType"]
      232 LOADK                            R16 K36 ["CombinedColor"]
      233 LOADB                            R17 0
      234 CALL                             R15 2 1
      235 SETTABLEKS                       R15 R14 K29 ["info"]
      237 MOVE                             R15 R7
      238 MOVE                             R16 R3
      239 LOADK                            R17 K48 ["LeftLegColor3"]
      240 LOADK                            R18 K41 ["BodyColors"]
      241 LOADK                            R19 K22 ["Property"]
      242 CALL                             R16 3 1
      243 MOVE                             R17 R3
      244 LOADK                            R18 K49 ["LeftLegColor"]
      245 LOADK                            R19 K41 ["BodyColors"]
      246 LOADK                            R20 K22 ["Property"]
      247 CALL                             R17 3 1
      248 LOADNIL                          R18
      249 CALL                             R15 3 1
      250 SETTABLEKS                       R15 R14 K30 ["interactor"]
      252 SETTABLE                         R14 R10 R13
      253 MOVE                             R13 R3
      254 LOADK                            R14 K50 ["CombinedRightArmColor"]
      255 LOADK                            R15 K41 ["BodyColors"]
      256 LOADK                            R16 K28 ["Virtual"]
      257 CALL                             R13 3 1
      258 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      259 GETTABLEKS                       R15 R4 K34 ["fromType"]
      261 LOADK                            R16 K36 ["CombinedColor"]
      262 LOADB                            R17 0
      263 CALL                             R15 2 1
      264 SETTABLEKS                       R15 R14 K29 ["info"]
      266 MOVE                             R15 R7
      267 MOVE                             R16 R3
      268 LOADK                            R17 K51 ["RightArmColor3"]
      269 LOADK                            R18 K41 ["BodyColors"]
      270 LOADK                            R19 K22 ["Property"]
      271 CALL                             R16 3 1
      272 MOVE                             R17 R3
      273 LOADK                            R18 K52 ["RightArmColor"]
      274 LOADK                            R19 K41 ["BodyColors"]
      275 LOADK                            R20 K22 ["Property"]
      276 CALL                             R17 3 1
      277 LOADNIL                          R18
      278 CALL                             R15 3 1
      279 SETTABLEKS                       R15 R14 K30 ["interactor"]
      281 SETTABLE                         R14 R10 R13
      282 MOVE                             R13 R3
      283 LOADK                            R14 K53 ["CombinedRightLegColor"]
      284 LOADK                            R15 K41 ["BodyColors"]
      285 LOADK                            R16 K28 ["Virtual"]
      286 CALL                             R13 3 1
      287 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      288 GETTABLEKS                       R15 R4 K34 ["fromType"]
      290 LOADK                            R16 K36 ["CombinedColor"]
      291 LOADB                            R17 0
      292 CALL                             R15 2 1
      293 SETTABLEKS                       R15 R14 K29 ["info"]
      295 MOVE                             R15 R7
      296 MOVE                             R16 R3
      297 LOADK                            R17 K54 ["RightLegColor3"]
      298 LOADK                            R18 K41 ["BodyColors"]
      299 LOADK                            R19 K22 ["Property"]
      300 CALL                             R16 3 1
      301 MOVE                             R17 R3
      302 LOADK                            R18 K55 ["RightLegColor"]
      303 LOADK                            R19 K41 ["BodyColors"]
      304 LOADK                            R20 K22 ["Property"]
      305 CALL                             R17 3 1
      306 LOADNIL                          R18
      307 CALL                             R15 3 1
      308 SETTABLEKS                       R15 R14 K30 ["interactor"]
      310 SETTABLE                         R14 R10 R13
      311 MOVE                             R13 R3
      312 LOADK                            R14 K56 ["CombinedTorsoColor"]
      313 LOADK                            R15 K41 ["BodyColors"]
      314 LOADK                            R16 K28 ["Virtual"]
      315 CALL                             R13 3 1
      316 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      317 GETTABLEKS                       R15 R4 K34 ["fromType"]
      319 LOADK                            R16 K36 ["CombinedColor"]
      320 LOADB                            R17 0
      321 CALL                             R15 2 1
      322 SETTABLEKS                       R15 R14 K29 ["info"]
      324 MOVE                             R15 R7
      325 MOVE                             R16 R3
      326 LOADK                            R17 K57 ["TorsoColor3"]
      327 LOADK                            R18 K41 ["BodyColors"]
      328 LOADK                            R19 K22 ["Property"]
      329 CALL                             R16 3 1
      330 MOVE                             R17 R3
      331 LOADK                            R18 K58 ["TorsoColor"]
      332 LOADK                            R19 K41 ["BodyColors"]
      333 LOADK                            R20 K22 ["Property"]
      334 CALL                             R17 3 1
      335 LOADNIL                          R18
      336 CALL                             R15 3 1
      337 SETTABLEKS                       R15 R14 K30 ["interactor"]
      339 SETTABLE                         R14 R10 R13
      340 MOVE                             R13 R3
      341 LOADK                            R14 K59 ["CombinedFillColor"]
      342 LOADK                            R15 K60 ["Highlight"]
      343 LOADK                            R16 K28 ["Virtual"]
      344 CALL                             R13 3 1
      345 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      346 GETTABLEKS                       R15 R4 K34 ["fromType"]
      348 LOADK                            R16 K36 ["CombinedColor"]
      349 LOADB                            R17 0
      350 CALL                             R15 2 1
      351 SETTABLEKS                       R15 R14 K29 ["info"]
      353 MOVE                             R15 R7
      354 MOVE                             R16 R3
      355 LOADK                            R17 K61 ["FillColor"]
      356 LOADK                            R18 K60 ["Highlight"]
      357 LOADK                            R19 K22 ["Property"]
      358 CALL                             R16 3 1
      359 LOADNIL                          R17
      360 MOVE                             R18 R3
      361 LOADK                            R19 K62 ["FillTransparency"]
      362 LOADK                            R20 K60 ["Highlight"]
      363 LOADK                            R21 K22 ["Property"]
      364 CALL                             R18 3 -1
      365 CALL                             R15 -1 1
      366 SETTABLEKS                       R15 R14 K30 ["interactor"]
      368 SETTABLE                         R14 R10 R13
      369 MOVE                             R13 R3
      370 LOADK                            R14 K63 ["CombinedOutlineColor"]
      371 LOADK                            R15 K60 ["Highlight"]
      372 LOADK                            R16 K28 ["Virtual"]
      373 CALL                             R13 3 1
      374 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      375 GETTABLEKS                       R15 R4 K34 ["fromType"]
      377 LOADK                            R16 K36 ["CombinedColor"]
      378 LOADB                            R17 0
      379 CALL                             R15 2 1
      380 SETTABLEKS                       R15 R14 K29 ["info"]
      382 MOVE                             R15 R7
      383 MOVE                             R16 R3
      384 LOADK                            R17 K64 ["OutlineColor"]
      385 LOADK                            R18 K60 ["Highlight"]
      386 LOADK                            R19 K22 ["Property"]
      387 CALL                             R16 3 1
      388 LOADNIL                          R17
      389 MOVE                             R18 R3
      390 LOADK                            R19 K65 ["OutlineTransparency"]
      391 LOADK                            R20 K60 ["Highlight"]
      392 LOADK                            R21 K22 ["Property"]
      393 CALL                             R18 3 -1
      394 CALL                             R15 -1 1
      395 SETTABLEKS                       R15 R14 K30 ["interactor"]
      397 SETTABLE                         R14 R10 R13
      398 MOVE                             R13 R3
      399 LOADK                            R14 K66 ["CombinedBackgroundColor"]
      400 LOADK                            R15 K67 ["GuiObject"]
      401 LOADK                            R16 K28 ["Virtual"]
      402 CALL                             R13 3 1
      403 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      404 GETTABLEKS                       R15 R4 K34 ["fromType"]
      406 LOADK                            R16 K36 ["CombinedColor"]
      407 LOADB                            R17 0
      408 CALL                             R15 2 1
      409 SETTABLEKS                       R15 R14 K29 ["info"]
      411 MOVE                             R15 R7
      412 MOVE                             R16 R3
      413 LOADK                            R17 K68 ["BackgroundColor3"]
      414 LOADK                            R18 K67 ["GuiObject"]
      415 LOADK                            R19 K22 ["Property"]
      416 CALL                             R16 3 1
      417 MOVE                             R17 R3
      418 LOADK                            R18 K69 ["BackgroundColor"]
      419 LOADK                            R19 K67 ["GuiObject"]
      420 LOADK                            R20 K22 ["Property"]
      421 CALL                             R17 3 1
      422 MOVE                             R18 R3
      423 LOADK                            R19 K70 ["BackgroundTransparency"]
      424 LOADK                            R20 K67 ["GuiObject"]
      425 LOADK                            R21 K22 ["Property"]
      426 CALL                             R18 3 -1
      427 CALL                             R15 -1 1
      428 SETTABLEKS                       R15 R14 K30 ["interactor"]
      430 SETTABLE                         R14 R10 R13
      431 MOVE                             R13 R3
      432 LOADK                            R14 K71 ["CombinedImageColor"]
      433 LOADK                            R15 K72 ["ImageButton"]
      434 LOADK                            R16 K28 ["Virtual"]
      435 CALL                             R13 3 1
      436 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      437 GETTABLEKS                       R15 R4 K34 ["fromType"]
      439 LOADK                            R16 K36 ["CombinedColor"]
      440 LOADB                            R17 0
      441 CALL                             R15 2 1
      442 SETTABLEKS                       R15 R14 K29 ["info"]
      444 MOVE                             R15 R7
      445 MOVE                             R16 R3
      446 LOADK                            R17 K73 ["ImageColor3"]
      447 LOADK                            R18 K72 ["ImageButton"]
      448 LOADK                            R19 K22 ["Property"]
      449 CALL                             R16 3 1
      450 LOADNIL                          R17
      451 MOVE                             R18 R3
      452 LOADK                            R19 K74 ["ImageTransparency"]
      453 LOADK                            R20 K72 ["ImageButton"]
      454 LOADK                            R21 K22 ["Property"]
      455 CALL                             R18 3 -1
      456 CALL                             R15 -1 1
      457 SETTABLEKS                       R15 R14 K30 ["interactor"]
      459 SETTABLE                         R14 R10 R13
      460 MOVE                             R13 R3
      461 LOADK                            R14 K71 ["CombinedImageColor"]
      462 LOADK                            R15 K75 ["ImageLabel"]
      463 LOADK                            R16 K28 ["Virtual"]
      464 CALL                             R13 3 1
      465 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      466 GETTABLEKS                       R15 R4 K34 ["fromType"]
      468 LOADK                            R16 K36 ["CombinedColor"]
      469 LOADB                            R17 0
      470 CALL                             R15 2 1
      471 SETTABLEKS                       R15 R14 K29 ["info"]
      473 MOVE                             R15 R7
      474 MOVE                             R16 R3
      475 LOADK                            R17 K73 ["ImageColor3"]
      476 LOADK                            R18 K75 ["ImageLabel"]
      477 LOADK                            R19 K22 ["Property"]
      478 CALL                             R16 3 1
      479 LOADNIL                          R17
      480 MOVE                             R18 R3
      481 LOADK                            R19 K74 ["ImageTransparency"]
      482 LOADK                            R20 K75 ["ImageLabel"]
      483 LOADK                            R21 K22 ["Property"]
      484 CALL                             R18 3 -1
      485 CALL                             R15 -1 1
      486 SETTABLEKS                       R15 R14 K30 ["interactor"]
      488 SETTABLE                         R14 R10 R13
      489 MOVE                             R13 R3
      490 LOADK                            R14 K76 ["CombinedTextColor"]
      491 LOADK                            R15 K77 ["TextBox"]
      492 LOADK                            R16 K28 ["Virtual"]
      493 CALL                             R13 3 1
      494 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      495 GETTABLEKS                       R15 R4 K34 ["fromType"]
      497 LOADK                            R16 K36 ["CombinedColor"]
      498 LOADB                            R17 0
      499 CALL                             R15 2 1
      500 SETTABLEKS                       R15 R14 K29 ["info"]
      502 MOVE                             R15 R7
      503 MOVE                             R16 R3
      504 LOADK                            R17 K78 ["TextColor3"]
      505 LOADK                            R18 K77 ["TextBox"]
      506 LOADK                            R19 K22 ["Property"]
      507 CALL                             R16 3 1
      508 LOADNIL                          R17
      509 MOVE                             R18 R3
      510 LOADK                            R19 K79 ["TextTransparency"]
      511 LOADK                            R20 K77 ["TextBox"]
      512 LOADK                            R21 K22 ["Property"]
      513 CALL                             R18 3 -1
      514 CALL                             R15 -1 1
      515 SETTABLEKS                       R15 R14 K30 ["interactor"]
      517 SETTABLE                         R14 R10 R13
      518 MOVE                             R13 R3
      519 LOADK                            R14 K80 ["CombinedTextStrokeColor"]
      520 LOADK                            R15 K77 ["TextBox"]
      521 LOADK                            R16 K28 ["Virtual"]
      522 CALL                             R13 3 1
      523 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      524 GETTABLEKS                       R15 R4 K34 ["fromType"]
      526 LOADK                            R16 K36 ["CombinedColor"]
      527 LOADB                            R17 0
      528 CALL                             R15 2 1
      529 SETTABLEKS                       R15 R14 K29 ["info"]
      531 MOVE                             R15 R7
      532 MOVE                             R16 R3
      533 LOADK                            R17 K81 ["TextStrokeColor3"]
      534 LOADK                            R18 K77 ["TextBox"]
      535 LOADK                            R19 K22 ["Property"]
      536 CALL                             R16 3 1
      537 LOADNIL                          R17
      538 MOVE                             R18 R3
      539 LOADK                            R19 K82 ["TextStrokeTransparency"]
      540 LOADK                            R20 K77 ["TextBox"]
      541 LOADK                            R21 K22 ["Property"]
      542 CALL                             R18 3 -1
      543 CALL                             R15 -1 1
      544 SETTABLEKS                       R15 R14 K30 ["interactor"]
      546 SETTABLE                         R14 R10 R13
      547 MOVE                             R13 R3
      548 LOADK                            R14 K76 ["CombinedTextColor"]
      549 LOADK                            R15 K83 ["TextButton"]
      550 LOADK                            R16 K28 ["Virtual"]
      551 CALL                             R13 3 1
      552 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      553 GETTABLEKS                       R15 R4 K34 ["fromType"]
      555 LOADK                            R16 K36 ["CombinedColor"]
      556 LOADB                            R17 0
      557 CALL                             R15 2 1
      558 SETTABLEKS                       R15 R14 K29 ["info"]
      560 MOVE                             R15 R7
      561 MOVE                             R16 R3
      562 LOADK                            R17 K78 ["TextColor3"]
      563 LOADK                            R18 K83 ["TextButton"]
      564 LOADK                            R19 K22 ["Property"]
      565 CALL                             R16 3 1
      566 LOADNIL                          R17
      567 MOVE                             R18 R3
      568 LOADK                            R19 K79 ["TextTransparency"]
      569 LOADK                            R20 K83 ["TextButton"]
      570 LOADK                            R21 K22 ["Property"]
      571 CALL                             R18 3 -1
      572 CALL                             R15 -1 1
      573 SETTABLEKS                       R15 R14 K30 ["interactor"]
      575 SETTABLE                         R14 R10 R13
      576 MOVE                             R13 R3
      577 LOADK                            R14 K80 ["CombinedTextStrokeColor"]
      578 LOADK                            R15 K83 ["TextButton"]
      579 LOADK                            R16 K28 ["Virtual"]
      580 CALL                             R13 3 1
      581 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      582 GETTABLEKS                       R15 R4 K34 ["fromType"]
      584 LOADK                            R16 K36 ["CombinedColor"]
      585 LOADB                            R17 0
      586 CALL                             R15 2 1
      587 SETTABLEKS                       R15 R14 K29 ["info"]
      589 MOVE                             R15 R7
      590 MOVE                             R16 R3
      591 LOADK                            R17 K81 ["TextStrokeColor3"]
      592 LOADK                            R18 K83 ["TextButton"]
      593 LOADK                            R19 K22 ["Property"]
      594 CALL                             R16 3 1
      595 LOADNIL                          R17
      596 MOVE                             R18 R3
      597 LOADK                            R19 K82 ["TextStrokeTransparency"]
      598 LOADK                            R20 K83 ["TextButton"]
      599 LOADK                            R21 K22 ["Property"]
      600 CALL                             R18 3 -1
      601 CALL                             R15 -1 1
      602 SETTABLEKS                       R15 R14 K30 ["interactor"]
      604 SETTABLE                         R14 R10 R13
      605 MOVE                             R13 R3
      606 LOADK                            R14 K76 ["CombinedTextColor"]
      607 LOADK                            R15 K84 ["TextLabel"]
      608 LOADK                            R16 K28 ["Virtual"]
      609 CALL                             R13 3 1
      610 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      611 GETTABLEKS                       R15 R4 K34 ["fromType"]
      613 LOADK                            R16 K36 ["CombinedColor"]
      614 LOADB                            R17 0
      615 CALL                             R15 2 1
      616 SETTABLEKS                       R15 R14 K29 ["info"]
      618 MOVE                             R15 R7
      619 MOVE                             R16 R3
      620 LOADK                            R17 K78 ["TextColor3"]
      621 LOADK                            R18 K84 ["TextLabel"]
      622 LOADK                            R19 K22 ["Property"]
      623 CALL                             R16 3 1
      624 LOADNIL                          R17
      625 MOVE                             R18 R3
      626 LOADK                            R19 K79 ["TextTransparency"]
      627 LOADK                            R20 K84 ["TextLabel"]
      628 LOADK                            R21 K22 ["Property"]
      629 CALL                             R18 3 -1
      630 CALL                             R15 -1 1
      631 SETTABLEKS                       R15 R14 K30 ["interactor"]
      633 SETTABLE                         R14 R10 R13
      634 MOVE                             R13 R3
      635 LOADK                            R14 K80 ["CombinedTextStrokeColor"]
      636 LOADK                            R15 K84 ["TextLabel"]
      637 LOADK                            R16 K28 ["Virtual"]
      638 CALL                             R13 3 1
      639 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      640 GETTABLEKS                       R15 R4 K34 ["fromType"]
      642 LOADK                            R16 K36 ["CombinedColor"]
      643 LOADB                            R17 0
      644 CALL                             R15 2 1
      645 SETTABLEKS                       R15 R14 K29 ["info"]
      647 MOVE                             R15 R7
      648 MOVE                             R16 R3
      649 LOADK                            R17 K81 ["TextStrokeColor3"]
      650 LOADK                            R18 K84 ["TextLabel"]
      651 LOADK                            R19 K22 ["Property"]
      652 CALL                             R16 3 1
      653 LOADNIL                          R17
      654 MOVE                             R18 R3
      655 LOADK                            R19 K82 ["TextStrokeTransparency"]
      656 LOADK                            R20 K84 ["TextLabel"]
      657 LOADK                            R21 K22 ["Property"]
      658 CALL                             R18 3 -1
      659 CALL                             R15 -1 1
      660 SETTABLEKS                       R15 R14 K30 ["interactor"]
      662 SETTABLE                         R14 R10 R13
      663 DUPTABLE                         R13 K87 [{"propertyPatches", "virtualPropertyDefinitions"}]
      664 SETTABLEKS                       R9 R13 K85 ["propertyPatches"]
      666 SETTABLEKS                       R10 R13 K86 ["virtualPropertyDefinitions"]
      668 RETURN                           R13 1
