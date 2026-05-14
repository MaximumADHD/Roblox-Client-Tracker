PROTO_0:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 LOADK                            R1 K1 ["ID"]
        4 GETUPVAL                         R3 0
        5 FASTCALL1                        TOSTRING R3 ; [+2]
        6 GETIMPORT                        R2 K3 [tostring]
        8 CALL                             R2 1 1
        9 CONCAT                           R0 R1 R2
       10 RETURN                           R0 1

PROTO_1:
        0 LOADN                            R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          REF R0
        3 CLOSEUPVALS                      R0
        4 RETURN                           R1 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 LOADN                            R3 0
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          REF R3
       17 CLOSEUPVALS                      R3
       18 DUPTABLE                         R3 K11 [{"id", "name", "children"}]
       19 LOADK                            R4 K12 ["{F9335871-7386-4AFA-B6B3-CF1A4FDB2BFE}"]
       20 SETTABLEKS                       R4 R3 K8 ["id"]
       22 LOADK                            R4 K13 ["Mock Compositor 1"]
       23 SETTABLEKS                       R4 R3 K9 ["name"]
       25 NEWTABLE                         R4 0 1
       27 DUPTABLE                         R5 K16 [{"children", "className", "id", "props"}]
       28 NEWTABLE                         R6 0 3
       30 DUPTABLE                         R7 K18 [{"children", "className", "name", "id", "props", "weight"}]
       31 NEWTABLE                         R8 0 3
       33 DUPTABLE                         R9 K21 [{"children", "className", "name", "id", "linkData", "props", "weight", "watches"}]
       34 NEWTABLE                         R10 0 0
       36 SETTABLEKS                       R10 R9 K10 ["children"]
       38 LOADK                            R10 K22 ["RestPose"]
       39 SETTABLEKS                       R10 R9 K14 ["className"]
       41 LOADK                            R10 K23 ["Debug B"]
       42 SETTABLEKS                       R10 R9 K9 ["name"]
       44 LOADK                            R10 K24 ["{20BFB42C-2D06-4E75-868D-0DA9AF1CBEB4}"]
       45 SETTABLEKS                       R10 R9 K8 ["id"]
       47 DUPTABLE                         R10 K26 [{"position"}]
       48 LOADN                            R11 1
       49 SETTABLEKS                       R11 R10 K25 ["position"]
       51 SETTABLEKS                       R10 R9 K19 ["linkData"]
       53 NEWTABLE                         R10 0 0
       55 SETTABLEKS                       R10 R9 K15 ["props"]
       57 LOADK                            R10 K27 [0.5]
       58 SETTABLEKS                       R10 R9 K17 ["weight"]
       60 NEWTABLE                         R10 2 0
       62 LOADK                            R11 K28 ["FOO"]
       63 SETTABLEKS                       R11 R10 K29 ["foo"]
       65 LOADK                            R11 K30 ["BAR"]
       66 SETTABLEKS                       R11 R10 K31 ["bar"]
       68 SETTABLEKS                       R10 R9 K20 ["watches"]
       70 DUPTABLE                         R10 K33 [{"children", "className", "name", "id", "linkData", "props", "state", "weight"}]
       71 NEWTABLE                         R11 0 0
       73 SETTABLEKS                       R11 R10 K10 ["children"]
       75 LOADK                            R11 K34 ["ClipLayer"]
       76 SETTABLEKS                       R11 R10 K14 ["className"]
       78 LOADK                            R11 K35 ["Debug C"]
       79 SETTABLEKS                       R11 R10 K9 ["name"]
       81 LOADK                            R11 K36 ["{E577542C-2F20-4F2E-836B-0E5BC148CBE6}"]
       82 SETTABLEKS                       R11 R10 K8 ["id"]
       84 DUPTABLE                         R11 K26 [{"position"}]
       85 LOADN                            R12 3
       86 SETTABLEKS                       R12 R11 K25 ["position"]
       88 SETTABLEKS                       R11 R10 K19 ["linkData"]
       90 DUPTABLE                         R11 K40 [{"animationId", "isLooping", "speed"}]
       91 LOADK                            R12 K41 ["rbxassetid://10921541949"]
       92 SETTABLEKS                       R12 R11 K37 ["animationId"]
       94 LOADB                            R12 1
       95 SETTABLEKS                       R12 R11 K38 ["isLooping"]
       97 LOADN                            R12 1
       98 SETTABLEKS                       R12 R11 K39 ["speed"]
      100 SETTABLEKS                       R11 R10 K15 ["props"]
      102 DUPTABLE                         R11 K44 [{"timePositionNormalized", "length"}]
      103 LOADN                            R12 0
      104 SETTABLEKS                       R12 R11 K42 ["timePositionNormalized"]
      106 LOADN                            R12 5
      107 SETTABLEKS                       R12 R11 K43 ["length"]
      109 SETTABLEKS                       R11 R10 K32 ["state"]
      111 LOADK                            R11 K45 [0.3]
      112 SETTABLEKS                       R11 R10 K17 ["weight"]
      114 DUPTABLE                         R11 K46 [{"children", "className", "name", "id", "linkData", "props", "state", "watches"}]
      115 NEWTABLE                         R12 0 0
      117 SETTABLEKS                       R12 R11 K10 ["children"]
      119 LOADK                            R12 K34 ["ClipLayer"]
      120 SETTABLEKS                       R12 R11 K14 ["className"]
      122 LOADK                            R12 K47 ["Debug D"]
      123 SETTABLEKS                       R12 R11 K9 ["name"]
      125 LOADK                            R12 K48 ["{2321A81C-9EB4-4017-A496-87F0570B99F9}"]
      126 SETTABLEKS                       R12 R11 K8 ["id"]
      128 DUPTABLE                         R12 K26 [{"position"}]
      129 LOADN                            R13 5
      130 SETTABLEKS                       R13 R12 K25 ["position"]
      132 SETTABLEKS                       R12 R11 K19 ["linkData"]
      134 DUPTABLE                         R12 K40 [{"animationId", "isLooping", "speed"}]
      135 LOADK                            R13 K49 ["rbxassetid://10899968825"]
      136 SETTABLEKS                       R13 R12 K37 ["animationId"]
      138 LOADB                            R13 1
      139 SETTABLEKS                       R13 R12 K38 ["isLooping"]
      141 LOADN                            R13 1
      142 SETTABLEKS                       R13 R12 K39 ["speed"]
      144 SETTABLEKS                       R12 R11 K15 ["props"]
      146 DUPTABLE                         R12 K44 [{"timePositionNormalized", "length"}]
      147 LOADK                            R13 K27 [0.5]
      148 SETTABLEKS                       R13 R12 K42 ["timePositionNormalized"]
      150 LOADN                            R13 4
      151 SETTABLEKS                       R13 R12 K43 ["length"]
      153 SETTABLEKS                       R12 R11 K32 ["state"]
      155 NEWTABLE                         R12 2 0
      157 DUPCLOSURE                       R13 K50 [PROTO_2]
      158 SETTABLEKS                       R13 R12 K51 ["function"]
      160 NEWTABLE                         R13 0 0
      162 SETTABLEKS                       R13 R12 K52 ["table"]
      164 SETTABLEKS                       R12 R11 K20 ["watches"]
      166 SETLIST                          R8 R9 3 [1]
      168 SETTABLEKS                       R8 R7 K10 ["children"]
      170 LOADK                            R8 K53 ["Blend1D"]
      171 SETTABLEKS                       R8 R7 K14 ["className"]
      173 LOADK                            R8 K54 ["Debug A"]
      174 SETTABLEKS                       R8 R7 K9 ["name"]
      176 LOADK                            R8 K55 ["{275F34E0-57F4-4354-BC5A-38518EF2EB37}"]
      177 SETTABLEKS                       R8 R7 K8 ["id"]
      179 DUPTABLE                         R8 K57 [{"targetPosition", "speed"}]
      180 LOADN                            R9 2
      181 SETTABLEKS                       R9 R8 K56 ["targetPosition"]
      183 LOADN                            R9 1
      184 SETTABLEKS                       R9 R8 K39 ["speed"]
      186 SETTABLEKS                       R8 R7 K15 ["props"]
      188 LOADN                            R8 1
      189 SETTABLEKS                       R8 R7 K17 ["weight"]
      191 DUPTABLE                         R8 K18 [{"children", "className", "name", "id", "props", "weight"}]
      192 NEWTABLE                         R9 0 3
      194 DUPTABLE                         R10 K21 [{"children", "className", "name", "id", "linkData", "props", "weight", "watches"}]
      195 NEWTABLE                         R11 0 0
      197 SETTABLEKS                       R11 R10 K10 ["children"]
      199 LOADK                            R11 K22 ["RestPose"]
      200 SETTABLEKS                       R11 R10 K14 ["className"]
      202 LOADK                            R11 K58 ["Debug G"]
      203 SETTABLEKS                       R11 R10 K9 ["name"]
      205 LOADK                            R11 K59 ["{FB02B42C-2D06-4E75-868D-0DA9AF1C4BEB}"]
      206 SETTABLEKS                       R11 R10 K8 ["id"]
      208 DUPTABLE                         R11 K26 [{"position"}]
      209 GETIMPORT                        R12 K62 [Vector2.new]
      211 LOADN                            R13 0
      212 LOADN                            R14 0
      213 CALL                             R12 2 1
      214 SETTABLEKS                       R12 R11 K25 ["position"]
      216 SETTABLEKS                       R11 R10 K19 ["linkData"]
      218 NEWTABLE                         R11 0 0
      220 SETTABLEKS                       R11 R10 K15 ["props"]
      222 LOADK                            R11 K27 [0.5]
      223 SETTABLEKS                       R11 R10 K17 ["weight"]
      225 NEWTABLE                         R11 2 0
      227 LOADK                            R12 K28 ["FOO"]
      228 SETTABLEKS                       R12 R11 K29 ["foo"]
      230 LOADK                            R12 K30 ["BAR"]
      231 SETTABLEKS                       R12 R11 K31 ["bar"]
      233 SETTABLEKS                       R11 R10 K20 ["watches"]
      235 DUPTABLE                         R11 K33 [{"children", "className", "name", "id", "linkData", "props", "state", "weight"}]
      236 NEWTABLE                         R12 0 0
      238 SETTABLEKS                       R12 R11 K10 ["children"]
      240 LOADK                            R12 K34 ["ClipLayer"]
      241 SETTABLEKS                       R12 R11 K14 ["className"]
      243 LOADK                            R12 K63 ["Debug H"]
      244 SETTABLEKS                       R12 R11 K9 ["name"]
      246 LOADK                            R12 K64 ["{775E542C-2F20-4F2E-836B-0E5BC1486EBC}"]
      247 SETTABLEKS                       R12 R11 K8 ["id"]
      249 DUPTABLE                         R12 K26 [{"position"}]
      250 GETIMPORT                        R13 K62 [Vector2.new]
      252 LOADN                            R14 0
      253 LOADN                            R15 2
      254 CALL                             R13 2 1
      255 SETTABLEKS                       R13 R12 K25 ["position"]
      257 SETTABLEKS                       R12 R11 K19 ["linkData"]
      259 DUPTABLE                         R12 K40 [{"animationId", "isLooping", "speed"}]
      260 LOADK                            R13 K41 ["rbxassetid://10921541949"]
      261 SETTABLEKS                       R13 R12 K37 ["animationId"]
      263 LOADB                            R13 1
      264 SETTABLEKS                       R13 R12 K38 ["isLooping"]
      266 LOADN                            R13 1
      267 SETTABLEKS                       R13 R12 K39 ["speed"]
      269 SETTABLEKS                       R12 R11 K15 ["props"]
      271 DUPTABLE                         R12 K44 [{"timePositionNormalized", "length"}]
      272 LOADN                            R13 0
      273 SETTABLEKS                       R13 R12 K42 ["timePositionNormalized"]
      275 LOADN                            R13 5
      276 SETTABLEKS                       R13 R12 K43 ["length"]
      278 SETTABLEKS                       R12 R11 K32 ["state"]
      280 LOADK                            R12 K45 [0.3]
      281 SETTABLEKS                       R12 R11 K17 ["weight"]
      283 DUPTABLE                         R12 K46 [{"children", "className", "name", "id", "linkData", "props", "state", "watches"}]
      284 NEWTABLE                         R13 0 0
      286 SETTABLEKS                       R13 R12 K10 ["children"]
      288 LOADK                            R13 K34 ["ClipLayer"]
      289 SETTABLEKS                       R13 R12 K14 ["className"]
      291 LOADK                            R13 K65 ["Debug I"]
      292 SETTABLEKS                       R13 R12 K9 ["name"]
      294 LOADK                            R13 K66 ["{1231A81C-9EB4-4017-A496-87F0570B9F65}"]
      295 SETTABLEKS                       R13 R12 K8 ["id"]
      297 DUPTABLE                         R13 K26 [{"position"}]
      298 GETIMPORT                        R14 K62 [Vector2.new]
      300 LOADN                            R15 1
      301 LOADN                            R16 1
      302 CALL                             R14 2 1
      303 SETTABLEKS                       R14 R13 K25 ["position"]
      305 SETTABLEKS                       R13 R12 K19 ["linkData"]
      307 DUPTABLE                         R13 K40 [{"animationId", "isLooping", "speed"}]
      308 LOADK                            R14 K49 ["rbxassetid://10899968825"]
      309 SETTABLEKS                       R14 R13 K37 ["animationId"]
      311 LOADB                            R14 1
      312 SETTABLEKS                       R14 R13 K38 ["isLooping"]
      314 LOADN                            R14 1
      315 SETTABLEKS                       R14 R13 K39 ["speed"]
      317 SETTABLEKS                       R13 R12 K15 ["props"]
      319 DUPTABLE                         R13 K44 [{"timePositionNormalized", "length"}]
      320 LOADK                            R14 K27 [0.5]
      321 SETTABLEKS                       R14 R13 K42 ["timePositionNormalized"]
      323 LOADN                            R14 4
      324 SETTABLEKS                       R14 R13 K43 ["length"]
      326 SETTABLEKS                       R13 R12 K32 ["state"]
      328 NEWTABLE                         R13 2 0
      330 DUPCLOSURE                       R14 K67 [PROTO_3]
      331 SETTABLEKS                       R14 R13 K51 ["function"]
      333 NEWTABLE                         R14 0 0
      335 SETTABLEKS                       R14 R13 K52 ["table"]
      337 SETTABLEKS                       R13 R12 K20 ["watches"]
      339 SETLIST                          R9 R10 3 [1]
      341 SETTABLEKS                       R9 R8 K10 ["children"]
      343 LOADK                            R9 K68 ["Blend2D"]
      344 SETTABLEKS                       R9 R8 K14 ["className"]
      346 LOADK                            R9 K69 ["Debug F"]
      347 SETTABLEKS                       R9 R8 K9 ["name"]
      349 LOADK                            R9 K70 ["{F57234E0-57F4-4354-BC5A-38518EF273BE}"]
      350 SETTABLEKS                       R9 R8 K8 ["id"]
      352 DUPTABLE                         R9 K57 [{"targetPosition", "speed"}]
      353 GETIMPORT                        R10 K62 [Vector2.new]
      355 LOADK                            R11 K27 [0.5]
      356 LOADK                            R12 K27 [0.5]
      357 CALL                             R10 2 1
      358 SETTABLEKS                       R10 R9 K56 ["targetPosition"]
      360 LOADN                            R10 1
      361 SETTABLEKS                       R10 R9 K39 ["speed"]
      363 SETTABLEKS                       R9 R8 K15 ["props"]
      365 LOADN                            R9 1
      366 SETTABLEKS                       R9 R8 K17 ["weight"]
      368 DUPTABLE                         R9 K18 [{"children", "className", "name", "id", "props", "weight"}]
      369 NEWTABLE                         R10 0 0
      371 SETTABLEKS                       R10 R9 K10 ["children"]
      373 LOADK                            R10 K34 ["ClipLayer"]
      374 SETTABLEKS                       R10 R9 K14 ["className"]
      376 LOADK                            R10 K71 ["Debug E"]
      377 SETTABLEKS                       R10 R9 K9 ["name"]
      379 LOADK                            R10 K72 ["{B1A616DC-DBA5-4E75-ACFC-D073FBBF921F}"]
      380 SETTABLEKS                       R10 R9 K8 ["id"]
      382 DUPTABLE                         R10 K40 [{"animationId", "isLooping", "speed"}]
      383 LOADK                            R11 K73 ["rbxassetid://10921258489"]
      384 SETTABLEKS                       R11 R10 K37 ["animationId"]
      386 LOADB                            R11 1
      387 SETTABLEKS                       R11 R10 K38 ["isLooping"]
      389 LOADN                            R11 1
      390 SETTABLEKS                       R11 R10 K39 ["speed"]
      392 SETTABLEKS                       R10 R9 K15 ["props"]
      394 LOADN                            R10 0
      395 SETTABLEKS                       R10 R9 K17 ["weight"]
      397 SETLIST                          R6 R7 3 [1]
      399 SETTABLEKS                       R6 R5 K10 ["children"]
      401 LOADK                            R6 K74 ["SelectLayer"]
      402 SETTABLEKS                       R6 R5 K14 ["className"]
      404 LOADK                            R6 K75 ["{6F4A739B-8775-4B8E-9A89-1DBD43E9A4EF}"]
      405 SETTABLEKS                       R6 R5 K8 ["id"]
      407 DUPTABLE                         R6 K79 [{"fadeInTimeSeconds", "fadeOutTimeSeconds", "selection"}]
      408 LOADK                            R7 K80 [0.2]
      409 SETTABLEKS                       R7 R6 K76 ["fadeInTimeSeconds"]
      411 LOADK                            R7 K80 [0.2]
      412 SETTABLEKS                       R7 R6 K77 ["fadeOutTimeSeconds"]
      414 LOADK                            R7 K81 ["Idle"]
      415 SETTABLEKS                       R7 R6 K78 ["selection"]
      417 SETTABLEKS                       R6 R5 K15 ["props"]
      419 SETLIST                          R4 R5 1 [1]
      421 SETTABLEKS                       R4 R3 K10 ["children"]
      423 DUPTABLE                         R4 K11 [{"id", "name", "children"}]
      424 LOADK                            R5 K82 ["{CF1A4FDB-7386-4AFA-B6B3-2BFEF9335871}"]
      425 SETTABLEKS                       R5 R4 K8 ["id"]
      427 LOADK                            R5 K83 ["Mock Compositor 2"]
      428 SETTABLEKS                       R5 R4 K9 ["name"]
      430 NEWTABLE                         R5 0 1
      432 DUPTABLE                         R6 K84 [{"children", "className", "name", "id", "props"}]
      433 NEWTABLE                         R7 0 1
      435 DUPTABLE                         R8 K86 [{"children", "className", "id", "name", "props", "state", "data"}]
      436 NEWTABLE                         R9 0 0
      438 SETTABLEKS                       R9 R8 K10 ["children"]
      440 LOADK                            R9 K34 ["ClipLayer"]
      441 SETTABLEKS                       R9 R8 K14 ["className"]
      443 LOADK                            R9 K87 ["{4017A81C-9EB4-4017-A496-87F0570B99F9}"]
      444 SETTABLEKS                       R9 R8 K8 ["id"]
      446 LOADK                            R9 K88 ["My Layer"]
      447 SETTABLEKS                       R9 R8 K9 ["name"]
      449 DUPTABLE                         R9 K40 [{"animationId", "isLooping", "speed"}]
      450 LOADK                            R10 K49 ["rbxassetid://10899968825"]
      451 SETTABLEKS                       R10 R9 K37 ["animationId"]
      453 LOADB                            R10 1
      454 SETTABLEKS                       R10 R9 K38 ["isLooping"]
      456 LOADN                            R10 1
      457 SETTABLEKS                       R10 R9 K39 ["speed"]
      459 SETTABLEKS                       R9 R8 K15 ["props"]
      461 DUPTABLE                         R9 K89 [{"length", "timePositionNormalized"}]
      462 LOADN                            R10 4
      463 SETTABLEKS                       R10 R9 K43 ["length"]
      465 LOADK                            R10 K27 [0.5]
      466 SETTABLEKS                       R10 R9 K42 ["timePositionNormalized"]
      468 SETTABLEKS                       R9 R8 K32 ["state"]
      470 NEWTABLE                         R9 2 0
      472 DUPCLOSURE                       R10 K90 [PROTO_4]
      473 SETTABLEKS                       R10 R9 K51 ["function"]
      475 NEWTABLE                         R10 0 0
      477 SETTABLEKS                       R10 R9 K52 ["table"]
      479 SETTABLEKS                       R9 R8 K85 ["data"]
      481 SETLIST                          R7 R8 1 [1]
      483 SETTABLEKS                       R7 R6 K10 ["children"]
      485 LOADK                            R7 K34 ["ClipLayer"]
      486 SETTABLEKS                       R7 R6 K14 ["className"]
      488 LOADK                            R7 K69 ["Debug F"]
      489 SETTABLEKS                       R7 R6 K9 ["name"]
      491 LOADK                            R7 K91 ["{43E9A4EF-8775-4B8E-9A89-1DBD6F4A739B}"]
      492 SETTABLEKS                       R7 R6 K8 ["id"]
      494 DUPTABLE                         R7 K40 [{"animationId", "isLooping", "speed"}]
      495 LOADK                            R8 K73 ["rbxassetid://10921258489"]
      496 SETTABLEKS                       R8 R7 K37 ["animationId"]
      498 LOADB                            R8 1
      499 SETTABLEKS                       R8 R7 K38 ["isLooping"]
      501 LOADN                            R8 1
      502 SETTABLEKS                       R8 R7 K39 ["speed"]
      504 SETTABLEKS                       R7 R6 K15 ["props"]
      506 SETLIST                          R5 R6 1 [1]
      508 SETTABLEKS                       R5 R4 K10 ["children"]
      510 DUPTABLE                         R5 K103 [{"mockPayload1", "mockPayload2", "sortByIndex", "sortByName", "sortByClassName", "sortById", "clipLayerView", "blend1DLayerView", "blend1DLayerViewWrongType", "blend2DLayerViewWrongType", "blend2DLayerView", "state"}]
      511 SETTABLEKS                       R3 R5 K92 ["mockPayload1"]
      513 SETTABLEKS                       R4 R5 K93 ["mockPayload2"]
      515 DUPTABLE                         R6 K11 [{"id", "name", "children"}]
      516 MOVE                             R7 R2
      517 CALL                             R7 0 1
      518 SETTABLEKS                       R7 R6 K8 ["id"]
      520 LOADK                            R7 K104 ["Sort by Index"]
      521 SETTABLEKS                       R7 R6 K9 ["name"]
      523 NEWTABLE                         R7 0 3
      525 DUPTABLE                         R8 K106 [{"id", "name", "index", "className", "children"}]
      526 MOVE                             R9 R2
      527 CALL                             R9 0 1
      528 SETTABLEKS                       R9 R8 K8 ["id"]
      530 LOADK                            R9 K107 ["Third"]
      531 SETTABLEKS                       R9 R8 K9 ["name"]
      533 LOADN                            R9 3
      534 SETTABLEKS                       R9 R8 K105 ["index"]
      536 LOADK                            R9 K34 ["ClipLayer"]
      537 SETTABLEKS                       R9 R8 K14 ["className"]
      539 NEWTABLE                         R9 0 0
      541 SETTABLEKS                       R9 R8 K10 ["children"]
      543 DUPTABLE                         R9 K106 [{"id", "name", "index", "className", "children"}]
      544 MOVE                             R10 R2
      545 CALL                             R10 0 1
      546 SETTABLEKS                       R10 R9 K8 ["id"]
      548 LOADK                            R10 K108 ["First"]
      549 SETTABLEKS                       R10 R9 K9 ["name"]
      551 LOADN                            R10 1
      552 SETTABLEKS                       R10 R9 K105 ["index"]
      554 LOADK                            R10 K34 ["ClipLayer"]
      555 SETTABLEKS                       R10 R9 K14 ["className"]
      557 NEWTABLE                         R10 0 0
      559 SETTABLEKS                       R10 R9 K10 ["children"]
      561 DUPTABLE                         R10 K106 [{"id", "name", "index", "className", "children"}]
      562 MOVE                             R11 R2
      563 CALL                             R11 0 1
      564 SETTABLEKS                       R11 R10 K8 ["id"]
      566 LOADK                            R11 K109 ["Second"]
      567 SETTABLEKS                       R11 R10 K9 ["name"]
      569 LOADN                            R11 2
      570 SETTABLEKS                       R11 R10 K105 ["index"]
      572 LOADK                            R11 K34 ["ClipLayer"]
      573 SETTABLEKS                       R11 R10 K14 ["className"]
      575 NEWTABLE                         R11 0 0
      577 SETTABLEKS                       R11 R10 K10 ["children"]
      579 SETLIST                          R7 R8 3 [1]
      581 SETTABLEKS                       R7 R6 K10 ["children"]
      583 SETTABLEKS                       R6 R5 K94 ["sortByIndex"]
      585 DUPTABLE                         R6 K11 [{"id", "name", "children"}]
      586 MOVE                             R7 R2
      587 CALL                             R7 0 1
      588 SETTABLEKS                       R7 R6 K8 ["id"]
      590 LOADK                            R7 K110 ["Sort by Name"]
      591 SETTABLEKS                       R7 R6 K9 ["name"]
      593 NEWTABLE                         R7 0 3
      595 DUPTABLE                         R8 K111 [{"id", "name", "className", "children"}]
      596 MOVE                             R9 R2
      597 CALL                             R9 0 1
      598 SETTABLEKS                       R9 R8 K8 ["id"]
      600 LOADK                            R9 K112 ["[C] Third"]
      601 SETTABLEKS                       R9 R8 K9 ["name"]
      603 LOADK                            R9 K34 ["ClipLayer"]
      604 SETTABLEKS                       R9 R8 K14 ["className"]
      606 NEWTABLE                         R9 0 0
      608 SETTABLEKS                       R9 R8 K10 ["children"]
      610 DUPTABLE                         R9 K111 [{"id", "name", "className", "children"}]
      611 MOVE                             R10 R2
      612 CALL                             R10 0 1
      613 SETTABLEKS                       R10 R9 K8 ["id"]
      615 LOADK                            R10 K113 ["[B] Second"]
      616 SETTABLEKS                       R10 R9 K9 ["name"]
      618 LOADK                            R10 K34 ["ClipLayer"]
      619 SETTABLEKS                       R10 R9 K14 ["className"]
      621 NEWTABLE                         R10 0 0
      623 SETTABLEKS                       R10 R9 K10 ["children"]
      625 DUPTABLE                         R10 K111 [{"id", "name", "className", "children"}]
      626 MOVE                             R11 R2
      627 CALL                             R11 0 1
      628 SETTABLEKS                       R11 R10 K8 ["id"]
      630 LOADK                            R11 K114 ["[A] First"]
      631 SETTABLEKS                       R11 R10 K9 ["name"]
      633 LOADK                            R11 K34 ["ClipLayer"]
      634 SETTABLEKS                       R11 R10 K14 ["className"]
      636 NEWTABLE                         R11 0 0
      638 SETTABLEKS                       R11 R10 K10 ["children"]
      640 SETLIST                          R7 R8 3 [1]
      642 SETTABLEKS                       R7 R6 K10 ["children"]
      644 SETTABLEKS                       R6 R5 K95 ["sortByName"]
      646 DUPTABLE                         R6 K11 [{"id", "name", "children"}]
      647 MOVE                             R7 R2
      648 CALL                             R7 0 1
      649 SETTABLEKS                       R7 R6 K8 ["id"]
      651 LOADK                            R7 K115 ["Sort by Classname"]
      652 SETTABLEKS                       R7 R6 K9 ["name"]
      654 NEWTABLE                         R7 0 3
      656 DUPTABLE                         R8 K116 [{"id", "className", "children"}]
      657 MOVE                             R9 R2
      658 CALL                             R9 0 1
      659 SETTABLEKS                       R9 R8 K8 ["id"]
      661 LOADK                            R9 K117 ["SequenceLayer"]
      662 SETTABLEKS                       R9 R8 K14 ["className"]
      664 NEWTABLE                         R9 0 0
      666 SETTABLEKS                       R9 R8 K10 ["children"]
      668 DUPTABLE                         R9 K116 [{"id", "className", "children"}]
      669 MOVE                             R10 R2
      670 CALL                             R10 0 1
      671 SETTABLEKS                       R10 R9 K8 ["id"]
      673 LOADK                            R10 K53 ["Blend1D"]
      674 SETTABLEKS                       R10 R9 K14 ["className"]
      676 NEWTABLE                         R10 0 0
      678 SETTABLEKS                       R10 R9 K10 ["children"]
      680 DUPTABLE                         R10 K116 [{"id", "className", "children"}]
      681 MOVE                             R11 R2
      682 CALL                             R11 0 1
      683 SETTABLEKS                       R11 R10 K8 ["id"]
      685 LOADK                            R11 K34 ["ClipLayer"]
      686 SETTABLEKS                       R11 R10 K14 ["className"]
      688 NEWTABLE                         R11 0 0
      690 SETTABLEKS                       R11 R10 K10 ["children"]
      692 SETLIST                          R7 R8 3 [1]
      694 SETTABLEKS                       R7 R6 K10 ["children"]
      696 SETTABLEKS                       R6 R5 K96 ["sortByClassName"]
      698 DUPTABLE                         R6 K11 [{"id", "name", "children"}]
      699 MOVE                             R7 R2
      700 CALL                             R7 0 1
      701 SETTABLEKS                       R7 R6 K8 ["id"]
      703 LOADK                            R7 K118 ["Sort by Id"]
      704 SETTABLEKS                       R7 R6 K9 ["name"]
      706 NEWTABLE                         R7 0 3
      708 DUPTABLE                         R8 K116 [{"id", "className", "children"}]
      709 MOVE                             R9 R2
      710 CALL                             R9 0 1
      711 SETTABLEKS                       R9 R8 K8 ["id"]
      713 LOADK                            R9 K34 ["ClipLayer"]
      714 SETTABLEKS                       R9 R8 K14 ["className"]
      716 NEWTABLE                         R9 0 0
      718 SETTABLEKS                       R9 R8 K10 ["children"]
      720 DUPTABLE                         R9 K116 [{"id", "className", "children"}]
      721 MOVE                             R10 R2
      722 CALL                             R10 0 1
      723 SETTABLEKS                       R10 R9 K8 ["id"]
      725 LOADK                            R10 K34 ["ClipLayer"]
      726 SETTABLEKS                       R10 R9 K14 ["className"]
      728 NEWTABLE                         R10 0 0
      730 SETTABLEKS                       R10 R9 K10 ["children"]
      732 DUPTABLE                         R10 K116 [{"id", "className", "children"}]
      733 MOVE                             R11 R2
      734 CALL                             R11 0 1
      735 SETTABLEKS                       R11 R10 K8 ["id"]
      737 LOADK                            R11 K34 ["ClipLayer"]
      738 SETTABLEKS                       R11 R10 K14 ["className"]
      740 NEWTABLE                         R11 0 0
      742 SETTABLEKS                       R11 R10 K10 ["children"]
      744 SETLIST                          R7 R8 3 [1]
      746 SETTABLEKS                       R7 R6 K10 ["children"]
      748 SETTABLEKS                       R6 R5 K97 ["sortById"]
      750 DUPTABLE                         R6 K121 [{"ExpandedSections", "LayerData"}]
      751 NEWTABLE                         R7 4 0
      753 LOADB                            R8 1
      754 SETTABLEKS                       R8 R7 K122 ["LayerDetails"]
      756 LOADB                            R8 1
      757 SETTABLEKS                       R8 R7 K123 ["Properties"]
      759 LOADB                            R8 0
      760 SETTABLEKS                       R8 R7 K124 ["State"]
      762 LOADB                            R8 1
      763 SETTABLEKS                       R8 R7 K125 ["Watches"]
      765 SETTABLEKS                       R7 R6 K119 ["ExpandedSections"]
      767 GETTABLEKS                       R10 R3 K10 ["children"]
      769 GETTABLEN                        R9 R10 1
      770 GETTABLEKS                       R9 R9 K10 ["children"]
      772 GETTABLEN                        R8 R9 1
      773 GETTABLEKS                       R8 R8 K10 ["children"]
      775 GETTABLEN                        R7 R8 3
      776 SETTABLEKS                       R7 R6 K120 ["LayerData"]
      778 SETTABLEKS                       R6 R5 K98 ["clipLayerView"]
      780 DUPTABLE                         R6 K121 [{"ExpandedSections", "LayerData"}]
      781 NEWTABLE                         R7 2 0
      783 LOADB                            R8 1
      784 SETTABLEKS                       R8 R7 K122 ["LayerDetails"]
      786 LOADB                            R8 1
      787 SETTABLEKS                       R8 R7 K123 ["Properties"]
      789 SETTABLEKS                       R7 R6 K119 ["ExpandedSections"]
      791 GETTABLEKS                       R9 R3 K10 ["children"]
      793 GETTABLEN                        R8 R9 1
      794 GETTABLEKS                       R8 R8 K10 ["children"]
      796 GETTABLEN                        R7 R8 1
      797 SETTABLEKS                       R7 R6 K120 ["LayerData"]
      799 SETTABLEKS                       R6 R5 K99 ["blend1DLayerView"]
      801 DUPTABLE                         R6 K121 [{"ExpandedSections", "LayerData"}]
      802 NEWTABLE                         R7 2 0
      804 LOADB                            R8 1
      805 SETTABLEKS                       R8 R7 K122 ["LayerDetails"]
      807 LOADB                            R8 1
      808 SETTABLEKS                       R8 R7 K123 ["Properties"]
      810 SETTABLEKS                       R7 R6 K119 ["ExpandedSections"]
      812 DUPTABLE                         R7 K18 [{"children", "className", "name", "id", "props", "weight"}]
      813 NEWTABLE                         R8 0 4
      815 DUPTABLE                         R9 K126 [{"linkData"}]
      816 DUPTABLE                         R10 K26 [{"position"}]
      817 GETIMPORT                        R11 K62 [Vector2.new]
      819 LOADN                            R12 1
      820 LOADN                            R13 1
      821 CALL                             R11 2 1
      822 SETTABLEKS                       R11 R10 K25 ["position"]
      824 SETTABLEKS                       R10 R9 K19 ["linkData"]
      826 DUPTABLE                         R10 K126 [{"linkData"}]
      827 DUPTABLE                         R11 K26 [{"position"}]
      828 LOADK                            R12 K127 [{3, 0, 0}]
      829 SETTABLEKS                       R12 R11 K25 ["position"]
      831 SETTABLEKS                       R11 R10 K19 ["linkData"]
      833 DUPTABLE                         R11 K126 [{"linkData"}]
      834 DUPTABLE                         R12 K26 [{"position"}]
      835 DUPTABLE                         R13 K129 [{"X"}]
      836 LOADN                            R14 5
      837 SETTABLEKS                       R14 R13 K128 ["X"]
      839 SETTABLEKS                       R13 R12 K25 ["position"]
      841 SETTABLEKS                       R12 R11 K19 ["linkData"]
      843 DUPTABLE                         R12 K126 [{"linkData"}]
      844 DUPTABLE                         R13 K26 [{"position"}]
      845 LOADK                            R14 K28 ["FOO"]
      846 SETTABLEKS                       R14 R13 K25 ["position"]
      848 SETTABLEKS                       R13 R12 K19 ["linkData"]
      850 SETLIST                          R8 R9 4 [1]
      852 SETTABLEKS                       R8 R7 K10 ["children"]
      854 LOADK                            R8 K53 ["Blend1D"]
      855 SETTABLEKS                       R8 R7 K14 ["className"]
      857 LOADK                            R8 K130 ["WrongTargets"]
      858 SETTABLEKS                       R8 R7 K9 ["name"]
      860 LOADK                            R8 K131 ["{275F34E0-57F4-4534-A5CB-38518EF2EB37}"]
      861 SETTABLEKS                       R8 R7 K8 ["id"]
      863 DUPTABLE                         R8 K57 [{"targetPosition", "speed"}]
      864 LOADN                            R9 2
      865 SETTABLEKS                       R9 R8 K56 ["targetPosition"]
      867 LOADN                            R9 1
      868 SETTABLEKS                       R9 R8 K39 ["speed"]
      870 SETTABLEKS                       R8 R7 K15 ["props"]
      872 LOADN                            R8 1
      873 SETTABLEKS                       R8 R7 K17 ["weight"]
      875 SETTABLEKS                       R7 R6 K120 ["LayerData"]
      877 SETTABLEKS                       R6 R5 K100 ["blend1DLayerViewWrongType"]
      879 DUPTABLE                         R6 K121 [{"ExpandedSections", "LayerData"}]
      880 NEWTABLE                         R7 2 0
      882 LOADB                            R8 1
      883 SETTABLEKS                       R8 R7 K122 ["LayerDetails"]
      885 LOADB                            R8 1
      886 SETTABLEKS                       R8 R7 K123 ["Properties"]
      888 SETTABLEKS                       R7 R6 K119 ["ExpandedSections"]
      890 DUPTABLE                         R7 K18 [{"children", "className", "name", "id", "props", "weight"}]
      891 NEWTABLE                         R8 0 4
      893 DUPTABLE                         R9 K126 [{"linkData"}]
      894 DUPTABLE                         R10 K26 [{"position"}]
      895 LOADN                            R11 1
      896 SETTABLEKS                       R11 R10 K25 ["position"]
      898 SETTABLEKS                       R10 R9 K19 ["linkData"]
      900 DUPTABLE                         R10 K126 [{"linkData"}]
      901 DUPTABLE                         R11 K26 [{"position"}]
      902 LOADK                            R12 K132 [{3, 2, 0}]
      903 SETTABLEKS                       R12 R11 K25 ["position"]
      905 SETTABLEKS                       R11 R10 K19 ["linkData"]
      907 DUPTABLE                         R11 K126 [{"linkData"}]
      908 DUPTABLE                         R12 K26 [{"position"}]
      909 DUPTABLE                         R13 K134 [{"X", "Y"}]
      910 LOADN                            R14 5
      911 SETTABLEKS                       R14 R13 K128 ["X"]
      913 LOADN                            R14 1
      914 SETTABLEKS                       R14 R13 K133 ["Y"]
      916 SETTABLEKS                       R13 R12 K25 ["position"]
      918 SETTABLEKS                       R12 R11 K19 ["linkData"]
      920 DUPTABLE                         R12 K126 [{"linkData"}]
      921 DUPTABLE                         R13 K26 [{"position"}]
      922 LOADK                            R14 K28 ["FOO"]
      923 SETTABLEKS                       R14 R13 K25 ["position"]
      925 SETTABLEKS                       R13 R12 K19 ["linkData"]
      927 SETLIST                          R8 R9 4 [1]
      929 SETTABLEKS                       R8 R7 K10 ["children"]
      931 LOADK                            R8 K68 ["Blend2D"]
      932 SETTABLEKS                       R8 R7 K14 ["className"]
      934 LOADK                            R8 K130 ["WrongTargets"]
      935 SETTABLEKS                       R8 R7 K9 ["name"]
      937 LOADK                            R8 K131 ["{275F34E0-57F4-4534-A5CB-38518EF2EB37}"]
      938 SETTABLEKS                       R8 R7 K8 ["id"]
      940 DUPTABLE                         R8 K57 [{"targetPosition", "speed"}]
      941 GETIMPORT                        R9 K62 [Vector2.new]
      943 LOADK                            R10 K27 [0.5]
      944 LOADK                            R11 K27 [0.5]
      945 CALL                             R9 2 1
      946 SETTABLEKS                       R9 R8 K56 ["targetPosition"]
      948 LOADN                            R9 1
      949 SETTABLEKS                       R9 R8 K39 ["speed"]
      951 SETTABLEKS                       R8 R7 K15 ["props"]
      953 LOADN                            R8 1
      954 SETTABLEKS                       R8 R7 K17 ["weight"]
      956 SETTABLEKS                       R7 R6 K120 ["LayerData"]
      958 SETTABLEKS                       R6 R5 K101 ["blend2DLayerViewWrongType"]
      960 DUPTABLE                         R6 K121 [{"ExpandedSections", "LayerData"}]
      961 NEWTABLE                         R7 2 0
      963 LOADB                            R8 1
      964 SETTABLEKS                       R8 R7 K122 ["LayerDetails"]
      966 LOADB                            R8 1
      967 SETTABLEKS                       R8 R7 K123 ["Properties"]
      969 SETTABLEKS                       R7 R6 K119 ["ExpandedSections"]
      971 GETTABLEKS                       R9 R3 K10 ["children"]
      973 GETTABLEN                        R8 R9 1
      974 GETTABLEKS                       R8 R8 K10 ["children"]
      976 GETTABLEN                        R7 R8 2
      977 SETTABLEKS                       R7 R6 K120 ["LayerData"]
      979 SETTABLEKS                       R6 R5 K102 ["blend2DLayerView"]
      981 DUPTABLE                         R6 K44 [{"timePositionNormalized", "length"}]
      982 LOADK                            R7 K27 [0.5]
      983 SETTABLEKS                       R7 R6 K42 ["timePositionNormalized"]
      985 LOADN                            R7 4
      986 SETTABLEKS                       R7 R6 K43 ["length"]
      988 SETTABLEKS                       R6 R5 K32 ["state"]
      990 RETURN                           R5 1
