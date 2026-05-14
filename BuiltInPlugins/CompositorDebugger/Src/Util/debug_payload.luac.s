PROTO_0:
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
       14 DUPTABLE                         R2 K13 [{"children", "id", "hrpCFrame", "name", "timestamp"}]
       15 NEWTABLE                         R3 0 1
       17 DUPTABLE                         R4 K18 [{"children", "className", "id", "name", "props", "state", "weight"}]
       18 NEWTABLE                         R5 0 1
       20 DUPTABLE                         R6 K18 [{"children", "className", "id", "name", "props", "state", "weight"}]
       21 NEWTABLE                         R7 0 2
       23 DUPTABLE                         R8 K18 [{"children", "className", "id", "name", "props", "state", "weight"}]
       24 NEWTABLE                         R9 0 0
       26 SETTABLEKS                       R9 R8 K8 ["children"]
       28 LOADK                            R9 K19 ["ClipLayer"]
       29 SETTABLEKS                       R9 R8 K14 ["className"]
       31 LOADK                            R9 K20 ["{91a192be-2369-41cb-801a-26bd4fc053d2}"]
       32 SETTABLEKS                       R9 R8 K9 ["id"]
       34 LOADK                            R9 K21 ["Tool None"]
       35 SETTABLEKS                       R9 R8 K11 ["name"]
       37 DUPTABLE                         R9 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
       38 LOADK                            R10 K32 ["rbxassetid://507768375"]
       39 SETTABLEKS                       R10 R9 K22 ["animationId"]
       41 LOADK                            R10 K33 [""]
       42 SETTABLEKS                       R10 R9 K23 ["didLoopEventName"]
       44 LOADK                            R10 K34 [∞]
       45 SETTABLEKS                       R10 R9 K24 ["endTime"]
       47 LOADN                            R10 255
       48 SETTABLEKS                       R10 R9 K25 ["looping"]
       50 NEWTABLE                         R10 0 0
       52 SETTABLEKS                       R10 R9 K26 ["markerEvents"]
       54 LOADB                            R10 1
       55 SETTABLEKS                       R10 R9 K27 ["preload"]
       57 LOADN                            R10 1
       58 SETTABLEKS                       R10 R9 K28 ["speed"]
       60 LOADN                            R10 0
       61 SETTABLEKS                       R10 R9 K29 ["startTime"]
       63 NEWTABLE                         R10 0 0
       65 SETTABLEKS                       R10 R9 K30 ["timePositionEvents"]
       67 SETTABLEKS                       R9 R8 K15 ["props"]
       69 DUPTABLE                         R9 K41 [{"currentAnimationId", "length", "loadingState", "markerEvents", "prevTimePosition", "timePosition", "timePositionEvents", "timePositionNormalized"}]
       70 LOADK                            R10 K32 ["rbxassetid://507768375"]
       71 SETTABLEKS                       R10 R9 K35 ["currentAnimationId"]
       73 LOADK                            R10 K42 [0.0416666679084301]
       74 SETTABLEKS                       R10 R9 K36 ["length"]
       76 LOADK                            R10 K43 ["Loaded"]
       77 SETTABLEKS                       R10 R9 K37 ["loadingState"]
       79 NEWTABLE                         R10 0 0
       81 SETTABLEKS                       R10 R9 K26 ["markerEvents"]
       83 LOADK                            R10 K44 [0.0333335059694946]
       84 SETTABLEKS                       R10 R9 K38 ["prevTimePosition"]
       86 LOADK                            R10 K44 [0.0333335059694946]
       87 SETTABLEKS                       R10 R9 K39 ["timePosition"]
       89 NEWTABLE                         R10 0 0
       91 SETTABLEKS                       R10 R9 K30 ["timePositionEvents"]
       93 LOADK                            R10 K45 [0.800004119425889]
       94 SETTABLEKS                       R10 R9 K40 ["timePositionNormalized"]
       96 SETTABLEKS                       R9 R8 K16 ["state"]
       98 LOADN                            R9 1
       99 SETTABLEKS                       R9 R8 K17 ["weight"]
      101 SETTABLEN                        R8 R7 1
      102 DUPTABLE                         R8 K46 [{"children", "className", "id", "props", "state", "weight"}]
      103 NEWTABLE                         R9 0 10
      105 DUPTABLE                         R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
      106 NEWTABLE                         R11 0 11
      108 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
      109 NEWTABLE                         R13 0 0
      111 SETTABLEKS                       R13 R12 K8 ["children"]
      113 LOADK                            R13 K51 ["RestPose"]
      114 SETTABLEKS                       R13 R12 K14 ["className"]
      116 LOADK                            R13 K52 ["{b93312c4-8c4d-453c-93ed-9541195b7fe7}"]
      117 SETTABLEKS                       R13 R12 K9 ["id"]
      119 LOADN                            R13 1
      120 SETTABLEKS                       R13 R12 K49 ["index"]
      122 DUPTABLE                         R13 K54 [{"position"}]
      123 GETIMPORT                        R14 K57 [Vector2.new]
      125 LOADN                            R15 0
      126 LOADN                            R16 0
      127 CALL                             R14 2 1
      128 SETTABLEKS                       R14 R13 K53 ["position"]
      130 SETTABLEKS                       R13 R12 K47 ["linkData"]
      132 LOADK                            R13 K58 ["Origin"]
      133 SETTABLEKS                       R13 R12 K11 ["name"]
      135 DUPTABLE                         R13 K60 [{"duration"}]
      136 LOADN                            R14 1
      137 SETTABLEKS                       R14 R13 K59 ["duration"]
      139 SETTABLEKS                       R13 R12 K15 ["props"]
      141 DUPTABLE                         R13 K61 [{"length", "timePositionNormalized"}]
      142 LOADN                            R14 1
      143 SETTABLEKS                       R14 R13 K36 ["length"]
      145 LOADN                            R14 0
      146 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
      148 SETTABLEKS                       R13 R12 K16 ["state"]
      150 LOADN                            R13 0
      151 SETTABLEKS                       R13 R12 K17 ["weight"]
      153 SETTABLEN                        R12 R11 1
      154 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
      155 NEWTABLE                         R13 0 0
      157 SETTABLEKS                       R13 R12 K8 ["children"]
      159 LOADK                            R13 K19 ["ClipLayer"]
      160 SETTABLEKS                       R13 R12 K14 ["className"]
      162 LOADK                            R13 K62 ["{6556d92c-2ab0-47f6-9633-1e8b22e8c823}"]
      163 SETTABLEKS                       R13 R12 K9 ["id"]
      165 LOADN                            R13 2
      166 SETTABLEKS                       R13 R12 K49 ["index"]
      168 DUPTABLE                         R13 K54 [{"position"}]
      169 GETIMPORT                        R14 K57 [Vector2.new]
      171 LOADN                            R15 1
      172 LOADN                            R16 0
      173 CALL                             R14 2 1
      174 SETTABLEKS                       R14 R13 K53 ["position"]
      176 SETTABLEKS                       R13 R12 K47 ["linkData"]
      178 LOADK                            R13 K63 ["Right Walk"]
      179 SETTABLEKS                       R13 R12 K11 ["name"]
      181 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
      182 LOADK                            R14 K64 ["rbxassetid://10847107747"]
      183 SETTABLEKS                       R14 R13 K22 ["animationId"]
      185 LOADK                            R14 K33 [""]
      186 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
      188 LOADK                            R14 K34 [∞]
      189 SETTABLEKS                       R14 R13 K24 ["endTime"]
      191 LOADN                            R14 255
      192 SETTABLEKS                       R14 R13 K25 ["looping"]
      194 NEWTABLE                         R14 0 0
      196 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      198 LOADB                            R14 1
      199 SETTABLEKS                       R14 R13 K27 ["preload"]
      201 LOADN                            R14 1
      202 SETTABLEKS                       R14 R13 K28 ["speed"]
      204 LOADN                            R14 0
      205 SETTABLEKS                       R14 R13 K29 ["startTime"]
      207 NEWTABLE                         R14 0 0
      209 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      211 SETTABLEKS                       R13 R12 K15 ["props"]
      213 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
      214 LOADK                            R14 K64 ["rbxassetid://10847107747"]
      215 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
      217 LOADK                            R14 K66 [0.625]
      218 SETTABLEKS                       R14 R13 K36 ["length"]
      220 LOADK                            R14 K43 ["Loaded"]
      221 SETTABLEKS                       R14 R13 K37 ["loadingState"]
      223 NEWTABLE                         R14 0 0
      225 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      227 LOADN                            R14 0
      228 SETTABLEKS                       R14 R13 K39 ["timePosition"]
      230 NEWTABLE                         R14 0 0
      232 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      234 LOADN                            R14 0
      235 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
      237 SETTABLEKS                       R13 R12 K16 ["state"]
      239 LOADN                            R13 0
      240 SETTABLEKS                       R13 R12 K17 ["weight"]
      242 SETTABLEN                        R12 R11 2
      243 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
      244 NEWTABLE                         R13 0 0
      246 SETTABLEKS                       R13 R12 K8 ["children"]
      248 LOADK                            R13 K19 ["ClipLayer"]
      249 SETTABLEKS                       R13 R12 K14 ["className"]
      251 LOADK                            R13 K67 ["{782abac9-1ad8-46b8-9441-dd901a6e923f}"]
      252 SETTABLEKS                       R13 R12 K9 ["id"]
      254 LOADN                            R13 3
      255 SETTABLEKS                       R13 R12 K49 ["index"]
      257 DUPTABLE                         R13 K54 [{"position"}]
      258 GETIMPORT                        R14 K57 [Vector2.new]
      260 LOADN                            R15 2
      261 LOADN                            R16 0
      262 CALL                             R14 2 1
      263 SETTABLEKS                       R14 R13 K53 ["position"]
      265 SETTABLEKS                       R13 R12 K47 ["linkData"]
      267 LOADK                            R13 K68 ["Right Run"]
      268 SETTABLEKS                       R13 R12 K11 ["name"]
      270 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
      271 LOADK                            R14 K69 ["rbxassetid://10847291554"]
      272 SETTABLEKS                       R14 R13 K22 ["animationId"]
      274 LOADK                            R14 K33 [""]
      275 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
      277 LOADK                            R14 K34 [∞]
      278 SETTABLEKS                       R14 R13 K24 ["endTime"]
      280 LOADN                            R14 255
      281 SETTABLEKS                       R14 R13 K25 ["looping"]
      283 NEWTABLE                         R14 0 0
      285 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      287 LOADB                            R14 1
      288 SETTABLEKS                       R14 R13 K27 ["preload"]
      290 LOADN                            R14 1
      291 SETTABLEKS                       R14 R13 K28 ["speed"]
      293 LOADN                            R14 0
      294 SETTABLEKS                       R14 R13 K29 ["startTime"]
      296 NEWTABLE                         R14 0 0
      298 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      300 SETTABLEKS                       R13 R12 K15 ["props"]
      302 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
      303 LOADK                            R14 K69 ["rbxassetid://10847291554"]
      304 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
      306 LOADK                            R14 K66 [0.625]
      307 SETTABLEKS                       R14 R13 K36 ["length"]
      309 LOADK                            R14 K43 ["Loaded"]
      310 SETTABLEKS                       R14 R13 K37 ["loadingState"]
      312 NEWTABLE                         R14 0 0
      314 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      316 LOADN                            R14 0
      317 SETTABLEKS                       R14 R13 K39 ["timePosition"]
      319 NEWTABLE                         R14 0 0
      321 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      323 LOADN                            R14 0
      324 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
      326 SETTABLEKS                       R13 R12 K16 ["state"]
      328 LOADN                            R13 0
      329 SETTABLEKS                       R13 R12 K17 ["weight"]
      331 SETTABLEN                        R12 R11 3
      332 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
      333 NEWTABLE                         R13 0 0
      335 SETTABLEKS                       R13 R12 K8 ["children"]
      337 LOADK                            R13 K19 ["ClipLayer"]
      338 SETTABLEKS                       R13 R12 K14 ["className"]
      340 LOADK                            R13 K70 ["{816c6077-957c-4748-9ed6-72985a98a8af}"]
      341 SETTABLEKS                       R13 R12 K9 ["id"]
      343 LOADN                            R13 4
      344 SETTABLEKS                       R13 R12 K49 ["index"]
      346 DUPTABLE                         R13 K54 [{"position"}]
      347 GETIMPORT                        R14 K57 [Vector2.new]
      349 LOADN                            R15 255
      350 LOADN                            R16 0
      351 CALL                             R14 2 1
      352 SETTABLEKS                       R14 R13 K53 ["position"]
      354 SETTABLEKS                       R13 R12 K47 ["linkData"]
      356 LOADK                            R13 K71 ["Left Walk"]
      357 SETTABLEKS                       R13 R12 K11 ["name"]
      359 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
      360 LOADK                            R14 K72 ["rbxassetid://10382771806"]
      361 SETTABLEKS                       R14 R13 K22 ["animationId"]
      363 LOADK                            R14 K33 [""]
      364 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
      366 LOADK                            R14 K34 [∞]
      367 SETTABLEKS                       R14 R13 K24 ["endTime"]
      369 LOADN                            R14 255
      370 SETTABLEKS                       R14 R13 K25 ["looping"]
      372 NEWTABLE                         R14 0 0
      374 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      376 LOADB                            R14 1
      377 SETTABLEKS                       R14 R13 K27 ["preload"]
      379 LOADN                            R14 1
      380 SETTABLEKS                       R14 R13 K28 ["speed"]
      382 LOADN                            R14 0
      383 SETTABLEKS                       R14 R13 K29 ["startTime"]
      385 NEWTABLE                         R14 0 0
      387 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      389 SETTABLEKS                       R13 R12 K15 ["props"]
      391 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
      392 LOADK                            R14 K72 ["rbxassetid://10382771806"]
      393 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
      395 LOADK                            R14 K66 [0.625]
      396 SETTABLEKS                       R14 R13 K36 ["length"]
      398 LOADK                            R14 K43 ["Loaded"]
      399 SETTABLEKS                       R14 R13 K37 ["loadingState"]
      401 NEWTABLE                         R14 0 0
      403 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      405 LOADN                            R14 0
      406 SETTABLEKS                       R14 R13 K39 ["timePosition"]
      408 NEWTABLE                         R14 0 0
      410 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      412 LOADN                            R14 0
      413 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
      415 SETTABLEKS                       R13 R12 K16 ["state"]
      417 LOADN                            R13 0
      418 SETTABLEKS                       R13 R12 K17 ["weight"]
      420 SETTABLEN                        R12 R11 4
      421 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
      422 NEWTABLE                         R13 0 0
      424 SETTABLEKS                       R13 R12 K8 ["children"]
      426 LOADK                            R13 K19 ["ClipLayer"]
      427 SETTABLEKS                       R13 R12 K14 ["className"]
      429 LOADK                            R13 K73 ["{9a4dc8c8-59ec-40a8-88ae-36d8c2e7476d}"]
      430 SETTABLEKS                       R13 R12 K9 ["id"]
      432 LOADN                            R13 5
      433 SETTABLEKS                       R13 R12 K49 ["index"]
      435 DUPTABLE                         R13 K54 [{"position"}]
      436 GETIMPORT                        R14 K57 [Vector2.new]
      438 LOADN                            R15 254
      439 LOADN                            R16 0
      440 CALL                             R14 2 1
      441 SETTABLEKS                       R14 R13 K53 ["position"]
      443 SETTABLEKS                       R13 R12 K47 ["linkData"]
      445 LOADK                            R13 K74 ["Left Run"]
      446 SETTABLEKS                       R13 R12 K11 ["name"]
      448 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
      449 LOADK                            R14 K75 ["rbxassetid://10847298457"]
      450 SETTABLEKS                       R14 R13 K22 ["animationId"]
      452 LOADK                            R14 K33 [""]
      453 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
      455 LOADK                            R14 K34 [∞]
      456 SETTABLEKS                       R14 R13 K24 ["endTime"]
      458 LOADN                            R14 255
      459 SETTABLEKS                       R14 R13 K25 ["looping"]
      461 NEWTABLE                         R14 0 0
      463 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      465 LOADB                            R14 1
      466 SETTABLEKS                       R14 R13 K27 ["preload"]
      468 LOADN                            R14 1
      469 SETTABLEKS                       R14 R13 K28 ["speed"]
      471 LOADN                            R14 0
      472 SETTABLEKS                       R14 R13 K29 ["startTime"]
      474 NEWTABLE                         R14 0 0
      476 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      478 SETTABLEKS                       R13 R12 K15 ["props"]
      480 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
      481 LOADK                            R14 K75 ["rbxassetid://10847298457"]
      482 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
      484 LOADK                            R14 K66 [0.625]
      485 SETTABLEKS                       R14 R13 K36 ["length"]
      487 LOADK                            R14 K43 ["Loaded"]
      488 SETTABLEKS                       R14 R13 K37 ["loadingState"]
      490 NEWTABLE                         R14 0 0
      492 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      494 LOADN                            R14 0
      495 SETTABLEKS                       R14 R13 K39 ["timePosition"]
      497 NEWTABLE                         R14 0 0
      499 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      501 LOADN                            R14 0
      502 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
      504 SETTABLEKS                       R13 R12 K16 ["state"]
      506 LOADN                            R13 0
      507 SETTABLEKS                       R13 R12 K17 ["weight"]
      509 SETTABLEN                        R12 R11 5
      510 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
      511 NEWTABLE                         R13 0 0
      513 SETTABLEKS                       R13 R12 K8 ["children"]
      515 LOADK                            R13 K19 ["ClipLayer"]
      516 SETTABLEKS                       R13 R12 K14 ["className"]
      518 LOADK                            R13 K76 ["{ae2f3459-80bc-4487-a5fb-7b82c38f2f8d}"]
      519 SETTABLEKS                       R13 R12 K9 ["id"]
      521 LOADN                            R13 6
      522 SETTABLEKS                       R13 R12 K49 ["index"]
      524 DUPTABLE                         R13 K54 [{"position"}]
      525 GETIMPORT                        R14 K57 [Vector2.new]
      527 LOADN                            R15 0
      528 LOADN                            R16 255
      529 CALL                             R14 2 1
      530 SETTABLEKS                       R14 R13 K53 ["position"]
      532 SETTABLEKS                       R13 R12 K47 ["linkData"]
      534 LOADK                            R13 K77 ["Backward Walk"]
      535 SETTABLEKS                       R13 R12 K11 ["name"]
      537 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
      538 LOADK                            R14 K78 ["rbxassetid://10358505520"]
      539 SETTABLEKS                       R14 R13 K22 ["animationId"]
      541 LOADK                            R14 K33 [""]
      542 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
      544 LOADK                            R14 K34 [∞]
      545 SETTABLEKS                       R14 R13 K24 ["endTime"]
      547 LOADN                            R14 255
      548 SETTABLEKS                       R14 R13 K25 ["looping"]
      550 NEWTABLE                         R14 0 0
      552 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      554 LOADB                            R14 1
      555 SETTABLEKS                       R14 R13 K27 ["preload"]
      557 LOADN                            R14 1
      558 SETTABLEKS                       R14 R13 K28 ["speed"]
      560 LOADN                            R14 0
      561 SETTABLEKS                       R14 R13 K29 ["startTime"]
      563 NEWTABLE                         R14 0 0
      565 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      567 SETTABLEKS                       R13 R12 K15 ["props"]
      569 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
      570 LOADK                            R14 K78 ["rbxassetid://10358505520"]
      571 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
      573 LOADK                            R14 K66 [0.625]
      574 SETTABLEKS                       R14 R13 K36 ["length"]
      576 LOADK                            R14 K43 ["Loaded"]
      577 SETTABLEKS                       R14 R13 K37 ["loadingState"]
      579 NEWTABLE                         R14 0 0
      581 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      583 LOADN                            R14 0
      584 SETTABLEKS                       R14 R13 K39 ["timePosition"]
      586 NEWTABLE                         R14 0 0
      588 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      590 LOADN                            R14 0
      591 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
      593 SETTABLEKS                       R13 R12 K16 ["state"]
      595 LOADN                            R13 0
      596 SETTABLEKS                       R13 R12 K17 ["weight"]
      598 SETTABLEN                        R12 R11 6
      599 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
      600 NEWTABLE                         R13 0 0
      602 SETTABLEKS                       R13 R12 K8 ["children"]
      604 LOADK                            R13 K19 ["ClipLayer"]
      605 SETTABLEKS                       R13 R12 K14 ["className"]
      607 LOADK                            R13 K79 ["{c6b01432-2acf-4e04-bca4-ecee93647ac6}"]
      608 SETTABLEKS                       R13 R12 K9 ["id"]
      610 LOADN                            R13 7
      611 SETTABLEKS                       R13 R12 K49 ["index"]
      613 DUPTABLE                         R13 K54 [{"position"}]
      614 GETIMPORT                        R14 K57 [Vector2.new]
      616 LOADN                            R15 0
      617 LOADN                            R16 254
      618 CALL                             R14 2 1
      619 SETTABLEKS                       R14 R13 K53 ["position"]
      621 SETTABLEKS                       R13 R12 K47 ["linkData"]
      623 LOADK                            R13 K80 ["Backward Run"]
      624 SETTABLEKS                       R13 R12 K11 ["name"]
      626 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
      627 LOADK                            R14 K81 ["rbxassetid://10358526981"]
      628 SETTABLEKS                       R14 R13 K22 ["animationId"]
      630 LOADK                            R14 K33 [""]
      631 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
      633 LOADK                            R14 K34 [∞]
      634 SETTABLEKS                       R14 R13 K24 ["endTime"]
      636 LOADN                            R14 255
      637 SETTABLEKS                       R14 R13 K25 ["looping"]
      639 NEWTABLE                         R14 0 0
      641 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      643 LOADB                            R14 1
      644 SETTABLEKS                       R14 R13 K27 ["preload"]
      646 LOADN                            R14 1
      647 SETTABLEKS                       R14 R13 K28 ["speed"]
      649 LOADN                            R14 0
      650 SETTABLEKS                       R14 R13 K29 ["startTime"]
      652 NEWTABLE                         R14 0 0
      654 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      656 SETTABLEKS                       R13 R12 K15 ["props"]
      658 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
      659 LOADK                            R14 K81 ["rbxassetid://10358526981"]
      660 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
      662 LOADK                            R14 K66 [0.625]
      663 SETTABLEKS                       R14 R13 K36 ["length"]
      665 LOADK                            R14 K43 ["Loaded"]
      666 SETTABLEKS                       R14 R13 K37 ["loadingState"]
      668 NEWTABLE                         R14 0 0
      670 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      672 LOADN                            R14 0
      673 SETTABLEKS                       R14 R13 K39 ["timePosition"]
      675 NEWTABLE                         R14 0 0
      677 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      679 LOADN                            R14 0
      680 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
      682 SETTABLEKS                       R13 R12 K16 ["state"]
      684 LOADN                            R13 0
      685 SETTABLEKS                       R13 R12 K17 ["weight"]
      687 SETTABLEN                        R12 R11 7
      688 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
      689 NEWTABLE                         R13 0 0
      691 SETTABLEKS                       R13 R12 K8 ["children"]
      693 LOADK                            R13 K19 ["ClipLayer"]
      694 SETTABLEKS                       R13 R12 K14 ["className"]
      696 LOADK                            R13 K82 ["{e466dbc1-f3d2-4271-8ad8-e0ac692c1356}"]
      697 SETTABLEKS                       R13 R12 K9 ["id"]
      699 LOADN                            R13 8
      700 SETTABLEKS                       R13 R12 K49 ["index"]
      702 DUPTABLE                         R13 K54 [{"position"}]
      703 GETIMPORT                        R14 K57 [Vector2.new]
      705 LOADK                            R15 K83 [-0.707106769]
      706 LOADK                            R16 K83 [-0.707106769]
      707 CALL                             R14 2 1
      708 SETTABLEKS                       R14 R13 K53 ["position"]
      710 SETTABLEKS                       R13 R12 K47 ["linkData"]
      712 LOADK                            R13 K84 ["Backward Left Walk"]
      713 SETTABLEKS                       R13 R12 K11 ["name"]
      715 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
      716 LOADK                            R14 K72 ["rbxassetid://10382771806"]
      717 SETTABLEKS                       R14 R13 K22 ["animationId"]
      719 LOADK                            R14 K33 [""]
      720 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
      722 LOADK                            R14 K34 [∞]
      723 SETTABLEKS                       R14 R13 K24 ["endTime"]
      725 LOADN                            R14 255
      726 SETTABLEKS                       R14 R13 K25 ["looping"]
      728 NEWTABLE                         R14 0 0
      730 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      732 LOADB                            R14 1
      733 SETTABLEKS                       R14 R13 K27 ["preload"]
      735 LOADN                            R14 1
      736 SETTABLEKS                       R14 R13 K28 ["speed"]
      738 LOADN                            R14 0
      739 SETTABLEKS                       R14 R13 K29 ["startTime"]
      741 NEWTABLE                         R14 0 0
      743 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      745 SETTABLEKS                       R13 R12 K15 ["props"]
      747 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
      748 LOADK                            R14 K72 ["rbxassetid://10382771806"]
      749 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
      751 LOADK                            R14 K66 [0.625]
      752 SETTABLEKS                       R14 R13 K36 ["length"]
      754 LOADK                            R14 K43 ["Loaded"]
      755 SETTABLEKS                       R14 R13 K37 ["loadingState"]
      757 NEWTABLE                         R14 0 0
      759 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      761 LOADN                            R14 0
      762 SETTABLEKS                       R14 R13 K39 ["timePosition"]
      764 NEWTABLE                         R14 0 0
      766 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      768 LOADN                            R14 0
      769 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
      771 SETTABLEKS                       R13 R12 K16 ["state"]
      773 LOADN                            R13 0
      774 SETTABLEKS                       R13 R12 K17 ["weight"]
      776 SETTABLEN                        R12 R11 8
      777 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
      778 NEWTABLE                         R13 0 0
      780 SETTABLEKS                       R13 R12 K8 ["children"]
      782 LOADK                            R13 K19 ["ClipLayer"]
      783 SETTABLEKS                       R13 R12 K14 ["className"]
      785 LOADK                            R13 K85 ["{605421b4-16f3-40f9-a781-561ea5fa97fe}"]
      786 SETTABLEKS                       R13 R12 K9 ["id"]
      788 LOADN                            R13 9
      789 SETTABLEKS                       R13 R12 K49 ["index"]
      791 DUPTABLE                         R13 K54 [{"position"}]
      792 GETIMPORT                        R14 K57 [Vector2.new]
      794 LOADK                            R15 K86 [0.707106769]
      795 LOADK                            R16 K83 [-0.707106769]
      796 CALL                             R14 2 1
      797 SETTABLEKS                       R14 R13 K53 ["position"]
      799 SETTABLEKS                       R13 R12 K47 ["linkData"]
      801 LOADK                            R13 K87 ["Backward Right Walk"]
      802 SETTABLEKS                       R13 R12 K11 ["name"]
      804 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
      805 LOADK                            R14 K88 ["rbxassetid://10382635795"]
      806 SETTABLEKS                       R14 R13 K22 ["animationId"]
      808 LOADK                            R14 K33 [""]
      809 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
      811 LOADK                            R14 K34 [∞]
      812 SETTABLEKS                       R14 R13 K24 ["endTime"]
      814 LOADN                            R14 255
      815 SETTABLEKS                       R14 R13 K25 ["looping"]
      817 NEWTABLE                         R14 0 0
      819 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      821 LOADB                            R14 1
      822 SETTABLEKS                       R14 R13 K27 ["preload"]
      824 LOADN                            R14 1
      825 SETTABLEKS                       R14 R13 K28 ["speed"]
      827 LOADN                            R14 0
      828 SETTABLEKS                       R14 R13 K29 ["startTime"]
      830 NEWTABLE                         R14 0 0
      832 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      834 SETTABLEKS                       R13 R12 K15 ["props"]
      836 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
      837 LOADK                            R14 K88 ["rbxassetid://10382635795"]
      838 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
      840 LOADK                            R14 K66 [0.625]
      841 SETTABLEKS                       R14 R13 K36 ["length"]
      843 LOADK                            R14 K43 ["Loaded"]
      844 SETTABLEKS                       R14 R13 K37 ["loadingState"]
      846 NEWTABLE                         R14 0 0
      848 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      850 LOADN                            R14 0
      851 SETTABLEKS                       R14 R13 K39 ["timePosition"]
      853 NEWTABLE                         R14 0 0
      855 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      857 LOADN                            R14 0
      858 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
      860 SETTABLEKS                       R13 R12 K16 ["state"]
      862 LOADN                            R13 0
      863 SETTABLEKS                       R13 R12 K17 ["weight"]
      865 SETTABLEN                        R12 R11 9
      866 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
      867 NEWTABLE                         R13 0 0
      869 SETTABLEKS                       R13 R12 K8 ["children"]
      871 LOADK                            R13 K19 ["ClipLayer"]
      872 SETTABLEKS                       R13 R12 K14 ["className"]
      874 LOADK                            R13 K89 ["{3f08126d-f7f8-405e-bc24-026900d76dc4}"]
      875 SETTABLEKS                       R13 R12 K9 ["id"]
      877 LOADN                            R13 10
      878 SETTABLEKS                       R13 R12 K49 ["index"]
      880 DUPTABLE                         R13 K54 [{"position"}]
      881 GETIMPORT                        R14 K57 [Vector2.new]
      883 LOADK                            R15 K90 [-1.41421354]
      884 LOADK                            R16 K90 [-1.41421354]
      885 CALL                             R14 2 1
      886 SETTABLEKS                       R14 R13 K53 ["position"]
      888 SETTABLEKS                       R13 R12 K47 ["linkData"]
      890 LOADK                            R13 K91 ["Backward Left Run"]
      891 SETTABLEKS                       R13 R12 K11 ["name"]
      893 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
      894 LOADK                            R14 K92 ["rbxassetid://10382960556"]
      895 SETTABLEKS                       R14 R13 K22 ["animationId"]
      897 LOADK                            R14 K33 [""]
      898 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
      900 LOADK                            R14 K34 [∞]
      901 SETTABLEKS                       R14 R13 K24 ["endTime"]
      903 LOADN                            R14 255
      904 SETTABLEKS                       R14 R13 K25 ["looping"]
      906 NEWTABLE                         R14 0 0
      908 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      910 LOADB                            R14 1
      911 SETTABLEKS                       R14 R13 K27 ["preload"]
      913 LOADN                            R14 1
      914 SETTABLEKS                       R14 R13 K28 ["speed"]
      916 LOADN                            R14 0
      917 SETTABLEKS                       R14 R13 K29 ["startTime"]
      919 NEWTABLE                         R14 0 0
      921 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      923 SETTABLEKS                       R13 R12 K15 ["props"]
      925 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
      926 LOADK                            R14 K92 ["rbxassetid://10382960556"]
      927 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
      929 LOADK                            R14 K66 [0.625]
      930 SETTABLEKS                       R14 R13 K36 ["length"]
      932 LOADK                            R14 K43 ["Loaded"]
      933 SETTABLEKS                       R14 R13 K37 ["loadingState"]
      935 NEWTABLE                         R14 0 0
      937 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      939 LOADN                            R14 0
      940 SETTABLEKS                       R14 R13 K39 ["timePosition"]
      942 NEWTABLE                         R14 0 0
      944 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
      946 LOADN                            R14 0
      947 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
      949 SETTABLEKS                       R13 R12 K16 ["state"]
      951 LOADN                            R13 0
      952 SETTABLEKS                       R13 R12 K17 ["weight"]
      954 SETTABLEN                        R12 R11 10
      955 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
      956 NEWTABLE                         R13 0 0
      958 SETTABLEKS                       R13 R12 K8 ["children"]
      960 LOADK                            R13 K19 ["ClipLayer"]
      961 SETTABLEKS                       R13 R12 K14 ["className"]
      963 LOADK                            R13 K93 ["{bf7bf7ee-c275-4ac6-aa71-86df90705fee}"]
      964 SETTABLEKS                       R13 R12 K9 ["id"]
      966 LOADN                            R13 11
      967 SETTABLEKS                       R13 R12 K49 ["index"]
      969 DUPTABLE                         R13 K54 [{"position"}]
      970 GETIMPORT                        R14 K57 [Vector2.new]
      972 LOADK                            R15 K94 [1.41421354]
      973 LOADK                            R16 K90 [-1.41421354]
      974 CALL                             R14 2 1
      975 SETTABLEKS                       R14 R13 K53 ["position"]
      977 SETTABLEKS                       R13 R12 K47 ["linkData"]
      979 LOADK                            R13 K95 ["Backward Right Run"]
      980 SETTABLEKS                       R13 R12 K11 ["name"]
      982 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
      983 LOADK                            R14 K96 ["rbxassetid://10382949241"]
      984 SETTABLEKS                       R14 R13 K22 ["animationId"]
      986 LOADK                            R14 K33 [""]
      987 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
      989 LOADK                            R14 K34 [∞]
      990 SETTABLEKS                       R14 R13 K24 ["endTime"]
      992 LOADN                            R14 255
      993 SETTABLEKS                       R14 R13 K25 ["looping"]
      995 NEWTABLE                         R14 0 0
      997 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
      999 LOADB                            R14 1
     1000 SETTABLEKS                       R14 R13 K27 ["preload"]
     1002 LOADN                            R14 1
     1003 SETTABLEKS                       R14 R13 K28 ["speed"]
     1005 LOADN                            R14 0
     1006 SETTABLEKS                       R14 R13 K29 ["startTime"]
     1008 NEWTABLE                         R14 0 0
     1010 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     1012 SETTABLEKS                       R13 R12 K15 ["props"]
     1014 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     1015 LOADK                            R14 K96 ["rbxassetid://10382949241"]
     1016 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
     1018 LOADK                            R14 K66 [0.625]
     1019 SETTABLEKS                       R14 R13 K36 ["length"]
     1021 LOADK                            R14 K43 ["Loaded"]
     1022 SETTABLEKS                       R14 R13 K37 ["loadingState"]
     1024 NEWTABLE                         R14 0 0
     1026 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     1028 LOADN                            R14 0
     1029 SETTABLEKS                       R14 R13 K39 ["timePosition"]
     1031 NEWTABLE                         R14 0 0
     1033 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     1035 LOADN                            R14 0
     1036 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
     1038 SETTABLEKS                       R13 R12 K16 ["state"]
     1040 LOADN                            R13 0
     1041 SETTABLEKS                       R13 R12 K17 ["weight"]
     1043 SETTABLEN                        R12 R11 11
     1044 SETTABLEKS                       R11 R10 K8 ["children"]
     1046 LOADK                            R11 K97 ["BlendSpace"]
     1047 SETTABLEKS                       R11 R10 K14 ["className"]
     1049 LOADK                            R11 K98 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
     1050 SETTABLEKS                       R11 R10 K9 ["id"]
     1052 NEWTABLE                         R11 0 1
     1054 LOADK                            R12 K99 ["LocomotingBackward"]
     1055 SETTABLEN                        R12 R11 1
     1056 SETTABLEKS                       R11 R10 K47 ["linkData"]
     1058 LOADK                            R11 K100 ["Backward Locomotion"]
     1059 SETTABLEKS                       R11 R10 K11 ["name"]
     1061 DUPTABLE                         R11 K105 [{"blendSpaceType", "lowLodThreshold", "positionSmoothingTime", "speed", "targetPosition"}]
     1062 LOADK                            R12 K106 ["Locomotion"]
     1063 SETTABLEKS                       R12 R11 K101 ["blendSpaceType"]
     1065 LOADN                            R12 2
     1066 SETTABLEKS                       R12 R11 K102 ["lowLodThreshold"]
     1068 LOADN                            R12 0
     1069 SETTABLEKS                       R12 R11 K103 ["positionSmoothingTime"]
     1071 LOADN                            R12 0
     1072 SETTABLEKS                       R12 R11 K28 ["speed"]
     1074 GETIMPORT                        R12 K57 [Vector2.new]
     1076 LOADN                            R13 0
     1077 LOADN                            R14 0
     1078 CALL                             R12 2 1
     1079 SETTABLEKS                       R12 R11 K104 ["targetPosition"]
     1081 SETTABLEKS                       R11 R10 K15 ["props"]
     1083 DUPTABLE                         R11 K61 [{"length", "timePositionNormalized"}]
     1084 LOADN                            R12 0
     1085 SETTABLEKS                       R12 R11 K36 ["length"]
     1087 LOADN                            R12 0
     1088 SETTABLEKS                       R12 R11 K40 ["timePositionNormalized"]
     1090 SETTABLEKS                       R11 R10 K16 ["state"]
     1092 LOADN                            R11 0
     1093 SETTABLEKS                       R11 R10 K17 ["weight"]
     1095 SETTABLEN                        R10 R9 1
     1096 DUPTABLE                         R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
     1097 NEWTABLE                         R11 0 0
     1099 SETTABLEKS                       R11 R10 K8 ["children"]
     1101 LOADK                            R11 K19 ["ClipLayer"]
     1102 SETTABLEKS                       R11 R10 K14 ["className"]
     1104 LOADK                            R11 K107 ["{67afe536-0b3e-4542-b392-26a3e7691d57}"]
     1105 SETTABLEKS                       R11 R10 K9 ["id"]
     1107 NEWTABLE                         R11 0 1
     1109 LOADK                            R12 K108 ["Climbing"]
     1110 SETTABLEN                        R12 R11 1
     1111 SETTABLEKS                       R11 R10 K47 ["linkData"]
     1113 LOADK                            R11 K108 ["Climbing"]
     1114 SETTABLEKS                       R11 R10 K11 ["name"]
     1116 DUPTABLE                         R11 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     1117 LOADK                            R12 K109 ["rbxassetid://507765644"]
     1118 SETTABLEKS                       R12 R11 K22 ["animationId"]
     1120 LOADK                            R12 K33 [""]
     1121 SETTABLEKS                       R12 R11 K23 ["didLoopEventName"]
     1123 LOADK                            R12 K34 [∞]
     1124 SETTABLEKS                       R12 R11 K24 ["endTime"]
     1126 LOADN                            R12 255
     1127 SETTABLEKS                       R12 R11 K25 ["looping"]
     1129 NEWTABLE                         R12 0 0
     1131 SETTABLEKS                       R12 R11 K26 ["markerEvents"]
     1133 LOADB                            R12 1
     1134 SETTABLEKS                       R12 R11 K27 ["preload"]
     1136 LOADN                            R12 0
     1137 SETTABLEKS                       R12 R11 K28 ["speed"]
     1139 LOADN                            R12 0
     1140 SETTABLEKS                       R12 R11 K29 ["startTime"]
     1142 NEWTABLE                         R12 0 0
     1144 SETTABLEKS                       R12 R11 K30 ["timePositionEvents"]
     1146 SETTABLEKS                       R11 R10 K15 ["props"]
     1148 DUPTABLE                         R11 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     1149 LOADK                            R12 K109 ["rbxassetid://507765644"]
     1150 SETTABLEKS                       R12 R11 K35 ["currentAnimationId"]
     1152 LOADK                            R12 K110 [1.04167497158051]
     1153 SETTABLEKS                       R12 R11 K36 ["length"]
     1155 LOADK                            R12 K43 ["Loaded"]
     1156 SETTABLEKS                       R12 R11 K37 ["loadingState"]
     1158 NEWTABLE                         R12 0 0
     1160 SETTABLEKS                       R12 R11 K26 ["markerEvents"]
     1162 LOADN                            R12 0
     1163 SETTABLEKS                       R12 R11 K39 ["timePosition"]
     1165 NEWTABLE                         R12 0 0
     1167 SETTABLEKS                       R12 R11 K30 ["timePositionEvents"]
     1169 LOADN                            R12 0
     1170 SETTABLEKS                       R12 R11 K40 ["timePositionNormalized"]
     1172 SETTABLEKS                       R11 R10 K16 ["state"]
     1174 LOADN                            R11 0
     1175 SETTABLEKS                       R11 R10 K17 ["weight"]
     1177 SETTABLEN                        R10 R9 2
     1178 DUPTABLE                         R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
     1179 NEWTABLE                         R11 0 0
     1181 SETTABLEKS                       R11 R10 K8 ["children"]
     1183 LOADK                            R11 K19 ["ClipLayer"]
     1184 SETTABLEKS                       R11 R10 K14 ["className"]
     1186 LOADK                            R11 K111 ["{4fee757f-9545-47de-9d1b-832f0de17068}"]
     1187 SETTABLEKS                       R11 R10 K9 ["id"]
     1189 NEWTABLE                         R11 0 1
     1191 LOADK                            R12 K112 ["Emote"]
     1192 SETTABLEN                        R12 R11 1
     1193 SETTABLEKS                       R11 R10 K47 ["linkData"]
     1195 LOADK                            R11 K112 ["Emote"]
     1196 SETTABLEKS                       R11 R10 K11 ["name"]
     1198 DUPTABLE                         R11 K113 [{"didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     1199 LOADK                            R12 K33 [""]
     1200 SETTABLEKS                       R12 R11 K23 ["didLoopEventName"]
     1202 LOADK                            R12 K34 [∞]
     1203 SETTABLEKS                       R12 R11 K24 ["endTime"]
     1205 LOADN                            R12 255
     1206 SETTABLEKS                       R12 R11 K25 ["looping"]
     1208 NEWTABLE                         R12 0 0
     1210 SETTABLEKS                       R12 R11 K26 ["markerEvents"]
     1212 LOADB                            R12 1
     1213 SETTABLEKS                       R12 R11 K27 ["preload"]
     1215 LOADN                            R12 1
     1216 SETTABLEKS                       R12 R11 K28 ["speed"]
     1218 LOADN                            R12 0
     1219 SETTABLEKS                       R12 R11 K29 ["startTime"]
     1221 NEWTABLE                         R12 0 1
     1223 DUPTABLE                         R13 K115 [{"name", "shouldFireFn", "timePosition"}]
     1224 LOADK                            R14 K116 ["EmoteEnding"]
     1225 SETTABLEKS                       R14 R13 K11 ["name"]
     1227 DUPCLOSURE                       R14 K117 [PROTO_0]
     1228 SETTABLEKS                       R14 R13 K114 ["shouldFireFn"]
     1230 LOADK                            R14 K118 [-0.2]
     1231 SETTABLEKS                       R14 R13 K39 ["timePosition"]
     1233 SETTABLEN                        R13 R12 1
     1234 SETTABLEKS                       R12 R11 K30 ["timePositionEvents"]
     1236 SETTABLEKS                       R11 R10 K15 ["props"]
     1238 DUPTABLE                         R11 K119 [{"length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     1239 LOADN                            R12 0
     1240 SETTABLEKS                       R12 R11 K36 ["length"]
     1242 LOADK                            R12 K120 ["Unloaded"]
     1243 SETTABLEKS                       R12 R11 K37 ["loadingState"]
     1245 NEWTABLE                         R12 0 0
     1247 SETTABLEKS                       R12 R11 K26 ["markerEvents"]
     1249 LOADN                            R12 0
     1250 SETTABLEKS                       R12 R11 K39 ["timePosition"]
     1252 NEWTABLE                         R12 0 0
     1254 SETTABLEKS                       R12 R11 K30 ["timePositionEvents"]
     1256 LOADN                            R12 0
     1257 SETTABLEKS                       R12 R11 K40 ["timePositionNormalized"]
     1259 SETTABLEKS                       R11 R10 K16 ["state"]
     1261 LOADN                            R11 0
     1262 SETTABLEKS                       R11 R10 K17 ["weight"]
     1264 SETTABLEN                        R10 R9 3
     1265 DUPTABLE                         R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
     1266 NEWTABLE                         R11 0 0
     1268 SETTABLEKS                       R11 R10 K8 ["children"]
     1270 LOADK                            R11 K19 ["ClipLayer"]
     1271 SETTABLEKS                       R11 R10 K14 ["className"]
     1273 LOADK                            R11 K121 ["{65f0fdf6-733e-42b8-b8a1-19ef18c415c1}"]
     1274 SETTABLEKS                       R11 R10 K9 ["id"]
     1276 NEWTABLE                         R11 0 1
     1278 LOADK                            R12 K122 ["Falling"]
     1279 SETTABLEN                        R12 R11 1
     1280 SETTABLEKS                       R11 R10 K47 ["linkData"]
     1282 LOADK                            R11 K122 ["Falling"]
     1283 SETTABLEKS                       R11 R10 K11 ["name"]
     1285 DUPTABLE                         R11 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     1286 LOADK                            R12 K123 ["rbxassetid://10921262864"]
     1287 SETTABLEKS                       R12 R11 K22 ["animationId"]
     1289 LOADK                            R12 K33 [""]
     1290 SETTABLEKS                       R12 R11 K23 ["didLoopEventName"]
     1292 LOADK                            R12 K34 [∞]
     1293 SETTABLEKS                       R12 R11 K24 ["endTime"]
     1295 LOADN                            R12 255
     1296 SETTABLEKS                       R12 R11 K25 ["looping"]
     1298 NEWTABLE                         R12 0 0
     1300 SETTABLEKS                       R12 R11 K26 ["markerEvents"]
     1302 LOADB                            R12 1
     1303 SETTABLEKS                       R12 R11 K27 ["preload"]
     1305 LOADN                            R12 1
     1306 SETTABLEKS                       R12 R11 K28 ["speed"]
     1308 LOADN                            R12 0
     1309 SETTABLEKS                       R12 R11 K29 ["startTime"]
     1311 NEWTABLE                         R12 0 0
     1313 SETTABLEKS                       R12 R11 K30 ["timePositionEvents"]
     1315 SETTABLEKS                       R11 R10 K15 ["props"]
     1317 DUPTABLE                         R11 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     1318 LOADK                            R12 K123 ["rbxassetid://10921262864"]
     1319 SETTABLEKS                       R12 R11 K35 ["currentAnimationId"]
     1321 LOADK                            R12 K124 [0.75]
     1322 SETTABLEKS                       R12 R11 K36 ["length"]
     1324 LOADK                            R12 K43 ["Loaded"]
     1325 SETTABLEKS                       R12 R11 K37 ["loadingState"]
     1327 NEWTABLE                         R12 0 0
     1329 SETTABLEKS                       R12 R11 K26 ["markerEvents"]
     1331 LOADN                            R12 0
     1332 SETTABLEKS                       R12 R11 K39 ["timePosition"]
     1334 NEWTABLE                         R12 0 0
     1336 SETTABLEKS                       R12 R11 K30 ["timePositionEvents"]
     1338 LOADN                            R12 0
     1339 SETTABLEKS                       R12 R11 K40 ["timePositionNormalized"]
     1341 SETTABLEKS                       R11 R10 K16 ["state"]
     1343 LOADN                            R11 0
     1344 SETTABLEKS                       R11 R10 K17 ["weight"]
     1346 SETTABLEN                        R10 R9 4
     1347 DUPTABLE                         R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
     1348 NEWTABLE                         R11 0 11
     1350 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
     1351 NEWTABLE                         R13 0 0
     1353 SETTABLEKS                       R13 R12 K8 ["children"]
     1355 LOADK                            R13 K51 ["RestPose"]
     1356 SETTABLEKS                       R13 R12 K14 ["className"]
     1358 LOADK                            R13 K125 ["{3ccee2e5-24c1-46eb-a736-825584054a59}"]
     1359 SETTABLEKS                       R13 R12 K9 ["id"]
     1361 LOADN                            R13 1
     1362 SETTABLEKS                       R13 R12 K49 ["index"]
     1364 DUPTABLE                         R13 K54 [{"position"}]
     1365 GETIMPORT                        R14 K57 [Vector2.new]
     1367 LOADN                            R15 0
     1368 LOADN                            R16 0
     1369 CALL                             R14 2 1
     1370 SETTABLEKS                       R14 R13 K53 ["position"]
     1372 SETTABLEKS                       R13 R12 K47 ["linkData"]
     1374 LOADK                            R13 K58 ["Origin"]
     1375 SETTABLEKS                       R13 R12 K11 ["name"]
     1377 DUPTABLE                         R13 K60 [{"duration"}]
     1378 LOADN                            R14 1
     1379 SETTABLEKS                       R14 R13 K59 ["duration"]
     1381 SETTABLEKS                       R13 R12 K15 ["props"]
     1383 DUPTABLE                         R13 K61 [{"length", "timePositionNormalized"}]
     1384 LOADN                            R14 1
     1385 SETTABLEKS                       R14 R13 K36 ["length"]
     1387 LOADN                            R14 0
     1388 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
     1390 SETTABLEKS                       R13 R12 K16 ["state"]
     1392 LOADN                            R13 0
     1393 SETTABLEKS                       R13 R12 K17 ["weight"]
     1395 SETTABLEN                        R12 R11 1
     1396 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
     1397 NEWTABLE                         R13 0 0
     1399 SETTABLEKS                       R13 R12 K8 ["children"]
     1401 LOADK                            R13 K19 ["ClipLayer"]
     1402 SETTABLEKS                       R13 R12 K14 ["className"]
     1404 LOADK                            R13 K126 ["{65ac6017-a983-4124-b6b3-558227f7e545}"]
     1405 SETTABLEKS                       R13 R12 K9 ["id"]
     1407 LOADN                            R13 2
     1408 SETTABLEKS                       R13 R12 K49 ["index"]
     1410 DUPTABLE                         R13 K54 [{"position"}]
     1411 GETIMPORT                        R14 K57 [Vector2.new]
     1413 LOADN                            R15 0
     1414 LOADN                            R16 1
     1415 CALL                             R14 2 1
     1416 SETTABLEKS                       R14 R13 K53 ["position"]
     1418 SETTABLEKS                       R13 R12 K47 ["linkData"]
     1420 LOADK                            R13 K127 ["Forward Walk"]
     1421 SETTABLEKS                       R13 R12 K11 ["name"]
     1423 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     1424 LOADK                            R14 K128 ["rbxassetid://14045085169"]
     1425 SETTABLEKS                       R14 R13 K22 ["animationId"]
     1427 LOADK                            R14 K33 [""]
     1428 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
     1430 LOADK                            R14 K34 [∞]
     1431 SETTABLEKS                       R14 R13 K24 ["endTime"]
     1433 LOADN                            R14 255
     1434 SETTABLEKS                       R14 R13 K25 ["looping"]
     1436 DUPTABLE                         R14 K130 [{"Footstep"}]
     1437 LOADK                            R15 K129 ["Footstep"]
     1438 SETTABLEKS                       R15 R14 K129 ["Footstep"]
     1440 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     1442 LOADB                            R14 1
     1443 SETTABLEKS                       R14 R13 K27 ["preload"]
     1445 LOADN                            R14 1
     1446 SETTABLEKS                       R14 R13 K28 ["speed"]
     1448 LOADN                            R14 0
     1449 SETTABLEKS                       R14 R13 K29 ["startTime"]
     1451 NEWTABLE                         R14 0 0
     1453 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     1455 SETTABLEKS                       R13 R12 K15 ["props"]
     1457 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     1458 LOADK                            R14 K128 ["rbxassetid://14045085169"]
     1459 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
     1461 LOADN                            R14 0
     1462 SETTABLEKS                       R14 R13 K36 ["length"]
     1464 LOADK                            R14 K131 ["Loading"]
     1465 SETTABLEKS                       R14 R13 K37 ["loadingState"]
     1467 NEWTABLE                         R14 0 0
     1469 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     1471 LOADN                            R14 0
     1472 SETTABLEKS                       R14 R13 K39 ["timePosition"]
     1474 NEWTABLE                         R14 0 0
     1476 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     1478 LOADN                            R14 0
     1479 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
     1481 SETTABLEKS                       R13 R12 K16 ["state"]
     1483 LOADN                            R13 0
     1484 SETTABLEKS                       R13 R12 K17 ["weight"]
     1486 SETTABLEN                        R12 R11 2
     1487 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
     1488 NEWTABLE                         R13 0 0
     1490 SETTABLEKS                       R13 R12 K8 ["children"]
     1492 LOADK                            R13 K19 ["ClipLayer"]
     1493 SETTABLEKS                       R13 R12 K14 ["className"]
     1495 LOADK                            R13 K132 ["{1d71c8d7-85ee-4ecf-9c9f-aef68c69a889}"]
     1496 SETTABLEKS                       R13 R12 K9 ["id"]
     1498 LOADN                            R13 3
     1499 SETTABLEKS                       R13 R12 K49 ["index"]
     1501 DUPTABLE                         R13 K54 [{"position"}]
     1502 GETIMPORT                        R14 K57 [Vector2.new]
     1504 LOADN                            R15 0
     1505 LOADN                            R16 2
     1506 CALL                             R14 2 1
     1507 SETTABLEKS                       R14 R13 K53 ["position"]
     1509 SETTABLEKS                       R13 R12 K47 ["linkData"]
     1511 LOADK                            R13 K133 ["Forward Run"]
     1512 SETTABLEKS                       R13 R12 K11 ["name"]
     1514 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     1515 LOADK                            R14 K134 ["rbxassetid://10899968825"]
     1516 SETTABLEKS                       R14 R13 K22 ["animationId"]
     1518 LOADK                            R14 K33 [""]
     1519 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
     1521 LOADK                            R14 K34 [∞]
     1522 SETTABLEKS                       R14 R13 K24 ["endTime"]
     1524 LOADN                            R14 255
     1525 SETTABLEKS                       R14 R13 K25 ["looping"]
     1527 NEWTABLE                         R14 0 0
     1529 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     1531 LOADB                            R14 1
     1532 SETTABLEKS                       R14 R13 K27 ["preload"]
     1534 LOADN                            R14 1
     1535 SETTABLEKS                       R14 R13 K28 ["speed"]
     1537 LOADN                            R14 0
     1538 SETTABLEKS                       R14 R13 K29 ["startTime"]
     1540 NEWTABLE                         R14 0 0
     1542 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     1544 SETTABLEKS                       R13 R12 K15 ["props"]
     1546 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     1547 LOADK                            R14 K134 ["rbxassetid://10899968825"]
     1548 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
     1550 LOADK                            R14 K66 [0.625]
     1551 SETTABLEKS                       R14 R13 K36 ["length"]
     1553 LOADK                            R14 K43 ["Loaded"]
     1554 SETTABLEKS                       R14 R13 K37 ["loadingState"]
     1556 NEWTABLE                         R14 0 0
     1558 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     1560 LOADN                            R14 0
     1561 SETTABLEKS                       R14 R13 K39 ["timePosition"]
     1563 NEWTABLE                         R14 0 0
     1565 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     1567 LOADN                            R14 0
     1568 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
     1570 SETTABLEKS                       R13 R12 K16 ["state"]
     1572 LOADN                            R13 0
     1573 SETTABLEKS                       R13 R12 K17 ["weight"]
     1575 SETTABLEN                        R12 R11 3
     1576 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
     1577 NEWTABLE                         R13 0 0
     1579 SETTABLEKS                       R13 R12 K8 ["children"]
     1581 LOADK                            R13 K19 ["ClipLayer"]
     1582 SETTABLEKS                       R13 R12 K14 ["className"]
     1584 LOADK                            R13 K135 ["{4512dbbc-91da-45cc-950a-9480266b4b2d}"]
     1585 SETTABLEKS                       R13 R12 K9 ["id"]
     1587 LOADN                            R13 4
     1588 SETTABLEKS                       R13 R12 K49 ["index"]
     1590 DUPTABLE                         R13 K54 [{"position"}]
     1591 GETIMPORT                        R14 K57 [Vector2.new]
     1593 LOADN                            R15 1
     1594 LOADN                            R16 0
     1595 CALL                             R14 2 1
     1596 SETTABLEKS                       R14 R13 K53 ["position"]
     1598 SETTABLEKS                       R13 R12 K47 ["linkData"]
     1600 LOADK                            R13 K63 ["Right Walk"]
     1601 SETTABLEKS                       R13 R12 K11 ["name"]
     1603 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     1604 LOADK                            R14 K136 ["rbxassetid://10404404615"]
     1605 SETTABLEKS                       R14 R13 K22 ["animationId"]
     1607 LOADK                            R14 K33 [""]
     1608 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
     1610 LOADK                            R14 K34 [∞]
     1611 SETTABLEKS                       R14 R13 K24 ["endTime"]
     1613 LOADN                            R14 255
     1614 SETTABLEKS                       R14 R13 K25 ["looping"]
     1616 NEWTABLE                         R14 0 0
     1618 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     1620 LOADB                            R14 1
     1621 SETTABLEKS                       R14 R13 K27 ["preload"]
     1623 LOADN                            R14 1
     1624 SETTABLEKS                       R14 R13 K28 ["speed"]
     1626 LOADN                            R14 0
     1627 SETTABLEKS                       R14 R13 K29 ["startTime"]
     1629 NEWTABLE                         R14 0 0
     1631 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     1633 SETTABLEKS                       R13 R12 K15 ["props"]
     1635 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     1636 LOADK                            R14 K136 ["rbxassetid://10404404615"]
     1637 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
     1639 LOADK                            R14 K66 [0.625]
     1640 SETTABLEKS                       R14 R13 K36 ["length"]
     1642 LOADK                            R14 K43 ["Loaded"]
     1643 SETTABLEKS                       R14 R13 K37 ["loadingState"]
     1645 NEWTABLE                         R14 0 0
     1647 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     1649 LOADN                            R14 0
     1650 SETTABLEKS                       R14 R13 K39 ["timePosition"]
     1652 NEWTABLE                         R14 0 0
     1654 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     1656 LOADN                            R14 0
     1657 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
     1659 SETTABLEKS                       R13 R12 K16 ["state"]
     1661 LOADN                            R13 0
     1662 SETTABLEKS                       R13 R12 K17 ["weight"]
     1664 SETTABLEN                        R12 R11 4
     1665 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
     1666 NEWTABLE                         R13 0 0
     1668 SETTABLEKS                       R13 R12 K8 ["children"]
     1670 LOADK                            R13 K19 ["ClipLayer"]
     1671 SETTABLEKS                       R13 R12 K14 ["className"]
     1673 LOADK                            R13 K137 ["{6d769e3c-82cf-4869-a72f-71c8138a1f52}"]
     1674 SETTABLEKS                       R13 R12 K9 ["id"]
     1676 LOADN                            R13 5
     1677 SETTABLEKS                       R13 R12 K49 ["index"]
     1679 DUPTABLE                         R13 K54 [{"position"}]
     1680 GETIMPORT                        R14 K57 [Vector2.new]
     1682 LOADN                            R15 2
     1683 LOADN                            R16 0
     1684 CALL                             R14 2 1
     1685 SETTABLEKS                       R14 R13 K53 ["position"]
     1687 SETTABLEKS                       R13 R12 K47 ["linkData"]
     1689 LOADK                            R13 K68 ["Right Run"]
     1690 SETTABLEKS                       R13 R12 K11 ["name"]
     1692 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     1693 LOADK                            R14 K138 ["rbxassetid://10404627994"]
     1694 SETTABLEKS                       R14 R13 K22 ["animationId"]
     1696 LOADK                            R14 K33 [""]
     1697 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
     1699 LOADK                            R14 K34 [∞]
     1700 SETTABLEKS                       R14 R13 K24 ["endTime"]
     1702 LOADN                            R14 255
     1703 SETTABLEKS                       R14 R13 K25 ["looping"]
     1705 NEWTABLE                         R14 0 0
     1707 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     1709 LOADB                            R14 1
     1710 SETTABLEKS                       R14 R13 K27 ["preload"]
     1712 LOADN                            R14 1
     1713 SETTABLEKS                       R14 R13 K28 ["speed"]
     1715 LOADN                            R14 0
     1716 SETTABLEKS                       R14 R13 K29 ["startTime"]
     1718 NEWTABLE                         R14 0 0
     1720 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     1722 SETTABLEKS                       R13 R12 K15 ["props"]
     1724 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     1725 LOADK                            R14 K138 ["rbxassetid://10404627994"]
     1726 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
     1728 LOADK                            R14 K66 [0.625]
     1729 SETTABLEKS                       R14 R13 K36 ["length"]
     1731 LOADK                            R14 K43 ["Loaded"]
     1732 SETTABLEKS                       R14 R13 K37 ["loadingState"]
     1734 NEWTABLE                         R14 0 0
     1736 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     1738 LOADN                            R14 0
     1739 SETTABLEKS                       R14 R13 K39 ["timePosition"]
     1741 NEWTABLE                         R14 0 0
     1743 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     1745 LOADN                            R14 0
     1746 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
     1748 SETTABLEKS                       R13 R12 K16 ["state"]
     1750 LOADN                            R13 0
     1751 SETTABLEKS                       R13 R12 K17 ["weight"]
     1753 SETTABLEN                        R12 R11 5
     1754 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
     1755 NEWTABLE                         R13 0 0
     1757 SETTABLEKS                       R13 R12 K8 ["children"]
     1759 LOADK                            R13 K19 ["ClipLayer"]
     1760 SETTABLEKS                       R13 R12 K14 ["className"]
     1762 LOADK                            R13 K139 ["{0fc10906-5cea-4e87-84e7-053506e27dbf}"]
     1763 SETTABLEKS                       R13 R12 K9 ["id"]
     1765 LOADN                            R13 6
     1766 SETTABLEKS                       R13 R12 K49 ["index"]
     1768 DUPTABLE                         R13 K54 [{"position"}]
     1769 GETIMPORT                        R14 K57 [Vector2.new]
     1771 LOADN                            R15 255
     1772 LOADN                            R16 0
     1773 CALL                             R14 2 1
     1774 SETTABLEKS                       R14 R13 K53 ["position"]
     1776 SETTABLEKS                       R13 R12 K47 ["linkData"]
     1778 LOADK                            R13 K71 ["Left Walk"]
     1779 SETTABLEKS                       R13 R12 K11 ["name"]
     1781 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     1782 LOADK                            R14 K140 ["rbxassetid://10404377900"]
     1783 SETTABLEKS                       R14 R13 K22 ["animationId"]
     1785 LOADK                            R14 K33 [""]
     1786 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
     1788 LOADK                            R14 K34 [∞]
     1789 SETTABLEKS                       R14 R13 K24 ["endTime"]
     1791 LOADN                            R14 255
     1792 SETTABLEKS                       R14 R13 K25 ["looping"]
     1794 NEWTABLE                         R14 0 0
     1796 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     1798 LOADB                            R14 1
     1799 SETTABLEKS                       R14 R13 K27 ["preload"]
     1801 LOADN                            R14 1
     1802 SETTABLEKS                       R14 R13 K28 ["speed"]
     1804 LOADN                            R14 0
     1805 SETTABLEKS                       R14 R13 K29 ["startTime"]
     1807 NEWTABLE                         R14 0 0
     1809 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     1811 SETTABLEKS                       R13 R12 K15 ["props"]
     1813 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     1814 LOADK                            R14 K140 ["rbxassetid://10404377900"]
     1815 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
     1817 LOADK                            R14 K66 [0.625]
     1818 SETTABLEKS                       R14 R13 K36 ["length"]
     1820 LOADK                            R14 K43 ["Loaded"]
     1821 SETTABLEKS                       R14 R13 K37 ["loadingState"]
     1823 NEWTABLE                         R14 0 0
     1825 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     1827 LOADN                            R14 0
     1828 SETTABLEKS                       R14 R13 K39 ["timePosition"]
     1830 NEWTABLE                         R14 0 0
     1832 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     1834 LOADN                            R14 0
     1835 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
     1837 SETTABLEKS                       R13 R12 K16 ["state"]
     1839 LOADN                            R13 0
     1840 SETTABLEKS                       R13 R12 K17 ["weight"]
     1842 SETTABLEN                        R12 R11 6
     1843 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
     1844 NEWTABLE                         R13 0 0
     1846 SETTABLEKS                       R13 R12 K8 ["children"]
     1848 LOADK                            R13 K19 ["ClipLayer"]
     1849 SETTABLEKS                       R13 R12 K14 ["className"]
     1851 LOADK                            R13 K141 ["{5f721a47-53cc-4b3b-bc5b-ea223561ebad}"]
     1852 SETTABLEKS                       R13 R12 K9 ["id"]
     1854 LOADN                            R13 7
     1855 SETTABLEKS                       R13 R12 K49 ["index"]
     1857 DUPTABLE                         R13 K54 [{"position"}]
     1858 GETIMPORT                        R14 K57 [Vector2.new]
     1860 LOADN                            R15 254
     1861 LOADN                            R16 0
     1862 CALL                             R14 2 1
     1863 SETTABLEKS                       R14 R13 K53 ["position"]
     1865 SETTABLEKS                       R13 R12 K47 ["linkData"]
     1867 LOADK                            R13 K74 ["Left Run"]
     1868 SETTABLEKS                       R13 R12 K11 ["name"]
     1870 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     1871 LOADK                            R14 K142 ["rbxassetid://10404604071"]
     1872 SETTABLEKS                       R14 R13 K22 ["animationId"]
     1874 LOADK                            R14 K33 [""]
     1875 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
     1877 LOADK                            R14 K34 [∞]
     1878 SETTABLEKS                       R14 R13 K24 ["endTime"]
     1880 LOADN                            R14 255
     1881 SETTABLEKS                       R14 R13 K25 ["looping"]
     1883 NEWTABLE                         R14 0 0
     1885 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     1887 LOADB                            R14 1
     1888 SETTABLEKS                       R14 R13 K27 ["preload"]
     1890 LOADN                            R14 1
     1891 SETTABLEKS                       R14 R13 K28 ["speed"]
     1893 LOADN                            R14 0
     1894 SETTABLEKS                       R14 R13 K29 ["startTime"]
     1896 NEWTABLE                         R14 0 0
     1898 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     1900 SETTABLEKS                       R13 R12 K15 ["props"]
     1902 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     1903 LOADK                            R14 K142 ["rbxassetid://10404604071"]
     1904 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
     1906 LOADK                            R14 K66 [0.625]
     1907 SETTABLEKS                       R14 R13 K36 ["length"]
     1909 LOADK                            R14 K43 ["Loaded"]
     1910 SETTABLEKS                       R14 R13 K37 ["loadingState"]
     1912 NEWTABLE                         R14 0 0
     1914 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     1916 LOADN                            R14 0
     1917 SETTABLEKS                       R14 R13 K39 ["timePosition"]
     1919 NEWTABLE                         R14 0 0
     1921 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     1923 LOADN                            R14 0
     1924 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
     1926 SETTABLEKS                       R13 R12 K16 ["state"]
     1928 LOADN                            R13 0
     1929 SETTABLEKS                       R13 R12 K17 ["weight"]
     1931 SETTABLEN                        R12 R11 7
     1932 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
     1933 NEWTABLE                         R13 0 0
     1935 SETTABLEKS                       R13 R12 K8 ["children"]
     1937 LOADK                            R13 K19 ["ClipLayer"]
     1938 SETTABLEKS                       R13 R12 K14 ["className"]
     1940 LOADK                            R13 K143 ["{1b1a8b55-c2dc-44bb-999e-eda4f884bd02}"]
     1941 SETTABLEKS                       R13 R12 K9 ["id"]
     1943 LOADN                            R13 8
     1944 SETTABLEKS                       R13 R12 K49 ["index"]
     1946 DUPTABLE                         R13 K54 [{"position"}]
     1947 GETIMPORT                        R14 K57 [Vector2.new]
     1949 LOADK                            R15 K86 [0.707106769]
     1950 LOADK                            R16 K86 [0.707106769]
     1951 CALL                             R14 2 1
     1952 SETTABLEKS                       R14 R13 K53 ["position"]
     1954 SETTABLEKS                       R13 R12 K47 ["linkData"]
     1956 LOADK                            R13 K144 ["Forward Right Walk"]
     1957 SETTABLEKS                       R13 R12 K11 ["name"]
     1959 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     1960 LOADK                            R14 K145 ["rbxassetid://10404269576"]
     1961 SETTABLEKS                       R14 R13 K22 ["animationId"]
     1963 LOADK                            R14 K33 [""]
     1964 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
     1966 LOADK                            R14 K34 [∞]
     1967 SETTABLEKS                       R14 R13 K24 ["endTime"]
     1969 LOADN                            R14 255
     1970 SETTABLEKS                       R14 R13 K25 ["looping"]
     1972 NEWTABLE                         R14 0 0
     1974 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     1976 LOADB                            R14 1
     1977 SETTABLEKS                       R14 R13 K27 ["preload"]
     1979 LOADN                            R14 1
     1980 SETTABLEKS                       R14 R13 K28 ["speed"]
     1982 LOADN                            R14 0
     1983 SETTABLEKS                       R14 R13 K29 ["startTime"]
     1985 NEWTABLE                         R14 0 0
     1987 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     1989 SETTABLEKS                       R13 R12 K15 ["props"]
     1991 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     1992 LOADK                            R14 K145 ["rbxassetid://10404269576"]
     1993 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
     1995 LOADK                            R14 K66 [0.625]
     1996 SETTABLEKS                       R14 R13 K36 ["length"]
     1998 LOADK                            R14 K43 ["Loaded"]
     1999 SETTABLEKS                       R14 R13 K37 ["loadingState"]
     2001 NEWTABLE                         R14 0 0
     2003 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     2005 LOADN                            R14 0
     2006 SETTABLEKS                       R14 R13 K39 ["timePosition"]
     2008 NEWTABLE                         R14 0 0
     2010 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     2012 LOADN                            R14 0
     2013 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
     2015 SETTABLEKS                       R13 R12 K16 ["state"]
     2017 LOADN                            R13 0
     2018 SETTABLEKS                       R13 R12 K17 ["weight"]
     2020 SETTABLEN                        R12 R11 8
     2021 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
     2022 NEWTABLE                         R13 0 0
     2024 SETTABLEKS                       R13 R12 K8 ["children"]
     2026 LOADK                            R13 K19 ["ClipLayer"]
     2027 SETTABLEKS                       R13 R12 K14 ["className"]
     2029 LOADK                            R13 K146 ["{3423814e-2fd4-4926-803f-334847f77a83}"]
     2030 SETTABLEKS                       R13 R12 K9 ["id"]
     2032 LOADN                            R13 9
     2033 SETTABLEKS                       R13 R12 K49 ["index"]
     2035 DUPTABLE                         R13 K54 [{"position"}]
     2036 GETIMPORT                        R14 K57 [Vector2.new]
     2038 LOADK                            R15 K83 [-0.707106769]
     2039 LOADK                            R16 K86 [0.707106769]
     2040 CALL                             R14 2 1
     2041 SETTABLEKS                       R14 R13 K53 ["position"]
     2043 SETTABLEKS                       R13 R12 K47 ["linkData"]
     2045 LOADK                            R13 K147 ["Forward Left Walk"]
     2046 SETTABLEKS                       R13 R12 K11 ["name"]
     2048 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     2049 LOADK                            R14 K148 ["rbxassetid://10404251500"]
     2050 SETTABLEKS                       R14 R13 K22 ["animationId"]
     2052 LOADK                            R14 K33 [""]
     2053 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
     2055 LOADK                            R14 K34 [∞]
     2056 SETTABLEKS                       R14 R13 K24 ["endTime"]
     2058 LOADN                            R14 255
     2059 SETTABLEKS                       R14 R13 K25 ["looping"]
     2061 NEWTABLE                         R14 0 0
     2063 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     2065 LOADB                            R14 1
     2066 SETTABLEKS                       R14 R13 K27 ["preload"]
     2068 LOADN                            R14 1
     2069 SETTABLEKS                       R14 R13 K28 ["speed"]
     2071 LOADN                            R14 0
     2072 SETTABLEKS                       R14 R13 K29 ["startTime"]
     2074 NEWTABLE                         R14 0 0
     2076 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     2078 SETTABLEKS                       R13 R12 K15 ["props"]
     2080 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     2081 LOADK                            R14 K148 ["rbxassetid://10404251500"]
     2082 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
     2084 LOADK                            R14 K66 [0.625]
     2085 SETTABLEKS                       R14 R13 K36 ["length"]
     2087 LOADK                            R14 K43 ["Loaded"]
     2088 SETTABLEKS                       R14 R13 K37 ["loadingState"]
     2090 NEWTABLE                         R14 0 0
     2092 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     2094 LOADN                            R14 0
     2095 SETTABLEKS                       R14 R13 K39 ["timePosition"]
     2097 NEWTABLE                         R14 0 0
     2099 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     2101 LOADN                            R14 0
     2102 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
     2104 SETTABLEKS                       R13 R12 K16 ["state"]
     2106 LOADN                            R13 0
     2107 SETTABLEKS                       R13 R12 K17 ["weight"]
     2109 SETTABLEN                        R12 R11 9
     2110 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
     2111 NEWTABLE                         R13 0 0
     2113 SETTABLEKS                       R13 R12 K8 ["children"]
     2115 LOADK                            R13 K19 ["ClipLayer"]
     2116 SETTABLEKS                       R13 R12 K14 ["className"]
     2118 LOADK                            R13 K149 ["{d6493c48-d9cd-4368-820b-0d23c25cb833}"]
     2119 SETTABLEKS                       R13 R12 K9 ["id"]
     2121 LOADN                            R13 10
     2122 SETTABLEKS                       R13 R12 K49 ["index"]
     2124 DUPTABLE                         R13 K54 [{"position"}]
     2125 GETIMPORT                        R14 K57 [Vector2.new]
     2127 LOADK                            R15 K94 [1.41421354]
     2128 LOADK                            R16 K94 [1.41421354]
     2129 CALL                             R14 2 1
     2130 SETTABLEKS                       R14 R13 K53 ["position"]
     2132 SETTABLEKS                       R13 R12 K47 ["linkData"]
     2134 LOADK                            R13 K150 ["Forward Right Run"]
     2135 SETTABLEKS                       R13 R12 K11 ["name"]
     2137 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     2138 LOADK                            R14 K151 ["rbxassetid://10319882993"]
     2139 SETTABLEKS                       R14 R13 K22 ["animationId"]
     2141 LOADK                            R14 K33 [""]
     2142 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
     2144 LOADK                            R14 K34 [∞]
     2145 SETTABLEKS                       R14 R13 K24 ["endTime"]
     2147 LOADN                            R14 255
     2148 SETTABLEKS                       R14 R13 K25 ["looping"]
     2150 NEWTABLE                         R14 0 0
     2152 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     2154 LOADB                            R14 1
     2155 SETTABLEKS                       R14 R13 K27 ["preload"]
     2157 LOADN                            R14 1
     2158 SETTABLEKS                       R14 R13 K28 ["speed"]
     2160 LOADN                            R14 0
     2161 SETTABLEKS                       R14 R13 K29 ["startTime"]
     2163 NEWTABLE                         R14 0 0
     2165 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     2167 SETTABLEKS                       R13 R12 K15 ["props"]
     2169 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     2170 LOADK                            R14 K151 ["rbxassetid://10319882993"]
     2171 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
     2173 LOADK                            R14 K66 [0.625]
     2174 SETTABLEKS                       R14 R13 K36 ["length"]
     2176 LOADK                            R14 K43 ["Loaded"]
     2177 SETTABLEKS                       R14 R13 K37 ["loadingState"]
     2179 NEWTABLE                         R14 0 0
     2181 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     2183 LOADN                            R14 0
     2184 SETTABLEKS                       R14 R13 K39 ["timePosition"]
     2186 NEWTABLE                         R14 0 0
     2188 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     2190 LOADN                            R14 0
     2191 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
     2193 SETTABLEKS                       R13 R12 K16 ["state"]
     2195 LOADN                            R13 0
     2196 SETTABLEKS                       R13 R12 K17 ["weight"]
     2198 SETTABLEN                        R12 R11 10
     2199 DUPTABLE                         R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
     2200 NEWTABLE                         R13 0 0
     2202 SETTABLEKS                       R13 R12 K8 ["children"]
     2204 LOADK                            R13 K19 ["ClipLayer"]
     2205 SETTABLEKS                       R13 R12 K14 ["className"]
     2207 LOADK                            R13 K152 ["{117d88c1-9254-4fea-8bb6-47760516fb0f}"]
     2208 SETTABLEKS                       R13 R12 K9 ["id"]
     2210 LOADN                            R13 11
     2211 SETTABLEKS                       R13 R12 K49 ["index"]
     2213 DUPTABLE                         R13 K54 [{"position"}]
     2214 GETIMPORT                        R14 K57 [Vector2.new]
     2216 LOADK                            R15 K90 [-1.41421354]
     2217 LOADK                            R16 K94 [1.41421354]
     2218 CALL                             R14 2 1
     2219 SETTABLEKS                       R14 R13 K53 ["position"]
     2221 SETTABLEKS                       R13 R12 K47 ["linkData"]
     2223 LOADK                            R13 K153 ["Forward Left Run"]
     2224 SETTABLEKS                       R13 R12 K11 ["name"]
     2226 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     2227 LOADK                            R14 K154 ["rbxassetid://10319903622"]
     2228 SETTABLEKS                       R14 R13 K22 ["animationId"]
     2230 LOADK                            R14 K33 [""]
     2231 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
     2233 LOADK                            R14 K34 [∞]
     2234 SETTABLEKS                       R14 R13 K24 ["endTime"]
     2236 LOADN                            R14 255
     2237 SETTABLEKS                       R14 R13 K25 ["looping"]
     2239 NEWTABLE                         R14 0 0
     2241 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     2243 LOADB                            R14 1
     2244 SETTABLEKS                       R14 R13 K27 ["preload"]
     2246 LOADN                            R14 1
     2247 SETTABLEKS                       R14 R13 K28 ["speed"]
     2249 LOADN                            R14 0
     2250 SETTABLEKS                       R14 R13 K29 ["startTime"]
     2252 NEWTABLE                         R14 0 0
     2254 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     2256 SETTABLEKS                       R13 R12 K15 ["props"]
     2258 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     2259 LOADK                            R14 K154 ["rbxassetid://10319903622"]
     2260 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
     2262 LOADK                            R14 K66 [0.625]
     2263 SETTABLEKS                       R14 R13 K36 ["length"]
     2265 LOADK                            R14 K43 ["Loaded"]
     2266 SETTABLEKS                       R14 R13 K37 ["loadingState"]
     2268 NEWTABLE                         R14 0 0
     2270 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     2272 LOADN                            R14 0
     2273 SETTABLEKS                       R14 R13 K39 ["timePosition"]
     2275 NEWTABLE                         R14 0 0
     2277 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     2279 LOADN                            R14 0
     2280 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
     2282 SETTABLEKS                       R13 R12 K16 ["state"]
     2284 LOADN                            R13 0
     2285 SETTABLEKS                       R13 R12 K17 ["weight"]
     2287 SETTABLEN                        R12 R11 11
     2288 SETTABLEKS                       R11 R10 K8 ["children"]
     2290 LOADK                            R11 K97 ["BlendSpace"]
     2291 SETTABLEKS                       R11 R10 K14 ["className"]
     2293 LOADK                            R11 K155 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
     2294 SETTABLEKS                       R11 R10 K9 ["id"]
     2296 NEWTABLE                         R11 0 1
     2298 LOADK                            R12 K156 ["LocomotingForward"]
     2299 SETTABLEN                        R12 R11 1
     2300 SETTABLEKS                       R11 R10 K47 ["linkData"]
     2302 LOADK                            R11 K157 ["Forward Locomotion"]
     2303 SETTABLEKS                       R11 R10 K11 ["name"]
     2305 DUPTABLE                         R11 K105 [{"blendSpaceType", "lowLodThreshold", "positionSmoothingTime", "speed", "targetPosition"}]
     2306 LOADK                            R12 K106 ["Locomotion"]
     2307 SETTABLEKS                       R12 R11 K101 ["blendSpaceType"]
     2309 LOADN                            R12 2
     2310 SETTABLEKS                       R12 R11 K102 ["lowLodThreshold"]
     2312 LOADN                            R12 0
     2313 SETTABLEKS                       R12 R11 K103 ["positionSmoothingTime"]
     2315 LOADN                            R12 0
     2316 SETTABLEKS                       R12 R11 K28 ["speed"]
     2318 GETIMPORT                        R12 K57 [Vector2.new]
     2320 LOADN                            R13 0
     2321 LOADN                            R14 0
     2322 CALL                             R12 2 1
     2323 SETTABLEKS                       R12 R11 K104 ["targetPosition"]
     2325 SETTABLEKS                       R11 R10 K15 ["props"]
     2327 DUPTABLE                         R11 K61 [{"length", "timePositionNormalized"}]
     2328 LOADN                            R12 0
     2329 SETTABLEKS                       R12 R11 K36 ["length"]
     2331 LOADN                            R12 0
     2332 SETTABLEKS                       R12 R11 K40 ["timePositionNormalized"]
     2334 SETTABLEKS                       R11 R10 K16 ["state"]
     2336 LOADN                            R11 0
     2337 SETTABLEKS                       R11 R10 K17 ["weight"]
     2339 SETTABLEN                        R10 R9 5
     2340 DUPTABLE                         R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
     2341 NEWTABLE                         R11 0 0
     2343 SETTABLEKS                       R11 R10 K8 ["children"]
     2345 LOADK                            R11 K19 ["ClipLayer"]
     2346 SETTABLEKS                       R11 R10 K14 ["className"]
     2348 LOADK                            R11 K158 ["{80711aa0-bdf3-49e1-bcdc-a0900eaabf06}"]
     2349 SETTABLEKS                       R11 R10 K9 ["id"]
     2351 NEWTABLE                         R11 0 1
     2353 LOADK                            R12 K159 ["Idle"]
     2354 SETTABLEN                        R12 R11 1
     2355 SETTABLEKS                       R11 R10 K47 ["linkData"]
     2357 LOADK                            R11 K159 ["Idle"]
     2358 SETTABLEKS                       R11 R10 K11 ["name"]
     2360 DUPTABLE                         R11 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     2361 LOADK                            R12 K160 ["rbxassetid://10921258489"]
     2362 SETTABLEKS                       R12 R11 K22 ["animationId"]
     2364 LOADK                            R12 K161 ["IdleDidLoop"]
     2365 SETTABLEKS                       R12 R11 K23 ["didLoopEventName"]
     2367 LOADK                            R12 K34 [∞]
     2368 SETTABLEKS                       R12 R11 K24 ["endTime"]
     2370 LOADN                            R12 255
     2371 SETTABLEKS                       R12 R11 K25 ["looping"]
     2373 NEWTABLE                         R12 0 0
     2375 SETTABLEKS                       R12 R11 K26 ["markerEvents"]
     2377 LOADB                            R12 1
     2378 SETTABLEKS                       R12 R11 K27 ["preload"]
     2380 LOADN                            R12 1
     2381 SETTABLEKS                       R12 R11 K28 ["speed"]
     2383 LOADN                            R12 0
     2384 SETTABLEKS                       R12 R11 K29 ["startTime"]
     2386 NEWTABLE                         R12 0 0
     2388 SETTABLEKS                       R12 R11 K30 ["timePositionEvents"]
     2390 SETTABLEKS                       R11 R10 K15 ["props"]
     2392 DUPTABLE                         R11 K41 [{"currentAnimationId", "length", "loadingState", "markerEvents", "prevTimePosition", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     2393 LOADK                            R12 K160 ["rbxassetid://10921258489"]
     2394 SETTABLEKS                       R12 R11 K35 ["currentAnimationId"]
     2396 LOADN                            R12 10
     2397 SETTABLEKS                       R12 R11 K36 ["length"]
     2399 LOADK                            R12 K43 ["Loaded"]
     2400 SETTABLEKS                       R12 R11 K37 ["loadingState"]
     2402 NEWTABLE                         R12 0 0
     2404 SETTABLEKS                       R12 R11 K26 ["markerEvents"]
     2406 LOADK                            R12 K162 [7.2416670541279]
     2407 SETTABLEKS                       R12 R11 K38 ["prevTimePosition"]
     2409 LOADK                            R12 K162 [7.2416670541279]
     2410 SETTABLEKS                       R12 R11 K39 ["timePosition"]
     2412 NEWTABLE                         R12 0 0
     2414 SETTABLEKS                       R12 R11 K30 ["timePositionEvents"]
     2416 LOADK                            R12 K163 [0.72416670541279]
     2417 SETTABLEKS                       R12 R11 K40 ["timePositionNormalized"]
     2419 SETTABLEKS                       R11 R10 K16 ["state"]
     2421 LOADN                            R11 0
     2422 SETTABLEKS                       R11 R10 K17 ["weight"]
     2424 SETTABLEN                        R10 R9 6
     2425 DUPTABLE                         R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
     2426 NEWTABLE                         R11 0 2
     2428 DUPTABLE                         R12 K164 [{"children", "className", "id", "linkData", "props", "state", "weight"}]
     2429 NEWTABLE                         R13 0 0
     2431 SETTABLEKS                       R13 R12 K8 ["children"]
     2433 LOADK                            R13 K19 ["ClipLayer"]
     2434 SETTABLEKS                       R13 R12 K14 ["className"]
     2436 LOADK                            R13 K165 ["{9e60c31d-cf4e-4b81-bb19-b708becd9515}"]
     2437 SETTABLEKS                       R13 R12 K9 ["id"]
     2439 NEWTABLE                         R13 0 0
     2441 SETTABLEKS                       R13 R12 K47 ["linkData"]
     2443 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     2444 LOADK                            R14 K166 ["rbxassetid://10921263860"]
     2445 SETTABLEKS                       R14 R13 K22 ["animationId"]
     2447 LOADK                            R14 K33 [""]
     2448 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
     2450 LOADK                            R14 K34 [∞]
     2451 SETTABLEKS                       R14 R13 K24 ["endTime"]
     2453 LOADN                            R14 255
     2454 SETTABLEKS                       R14 R13 K25 ["looping"]
     2456 NEWTABLE                         R14 0 0
     2458 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     2460 LOADB                            R14 1
     2461 SETTABLEKS                       R14 R13 K27 ["preload"]
     2463 LOADN                            R14 1
     2464 SETTABLEKS                       R14 R13 K28 ["speed"]
     2466 LOADN                            R14 0
     2467 SETTABLEKS                       R14 R13 K29 ["startTime"]
     2469 NEWTABLE                         R14 0 0
     2471 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     2473 SETTABLEKS                       R13 R12 K15 ["props"]
     2475 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     2476 LOADK                            R14 K166 ["rbxassetid://10921263860"]
     2477 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
     2479 LOADK                            R14 K167 [1.04200005531311]
     2480 SETTABLEKS                       R14 R13 K36 ["length"]
     2482 LOADK                            R14 K43 ["Loaded"]
     2483 SETTABLEKS                       R14 R13 K37 ["loadingState"]
     2485 NEWTABLE                         R14 0 0
     2487 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     2489 LOADN                            R14 0
     2490 SETTABLEKS                       R14 R13 K39 ["timePosition"]
     2492 NEWTABLE                         R14 0 0
     2494 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     2496 LOADN                            R14 0
     2497 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
     2499 SETTABLEKS                       R13 R12 K16 ["state"]
     2501 LOADN                            R13 0
     2502 SETTABLEKS                       R13 R12 K17 ["weight"]
     2504 SETTABLEN                        R12 R11 1
     2505 DUPTABLE                         R12 K164 [{"children", "className", "id", "linkData", "props", "state", "weight"}]
     2506 NEWTABLE                         R13 0 0
     2508 SETTABLEKS                       R13 R12 K8 ["children"]
     2510 LOADK                            R13 K19 ["ClipLayer"]
     2511 SETTABLEKS                       R13 R12 K14 ["className"]
     2513 LOADK                            R13 K168 ["{b1751c84-f579-489b-8490-0b3251969695}"]
     2514 SETTABLEKS                       R13 R12 K9 ["id"]
     2516 NEWTABLE                         R13 0 0
     2518 SETTABLEKS                       R13 R12 K47 ["linkData"]
     2520 DUPTABLE                         R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     2521 LOADK                            R14 K123 ["rbxassetid://10921262864"]
     2522 SETTABLEKS                       R14 R13 K22 ["animationId"]
     2524 LOADK                            R14 K33 [""]
     2525 SETTABLEKS                       R14 R13 K23 ["didLoopEventName"]
     2527 LOADK                            R14 K34 [∞]
     2528 SETTABLEKS                       R14 R13 K24 ["endTime"]
     2530 LOADN                            R14 255
     2531 SETTABLEKS                       R14 R13 K25 ["looping"]
     2533 NEWTABLE                         R14 0 0
     2535 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     2537 LOADB                            R14 1
     2538 SETTABLEKS                       R14 R13 K27 ["preload"]
     2540 LOADN                            R14 1
     2541 SETTABLEKS                       R14 R13 K28 ["speed"]
     2543 LOADN                            R14 0
     2544 SETTABLEKS                       R14 R13 K29 ["startTime"]
     2546 NEWTABLE                         R14 0 0
     2548 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     2550 SETTABLEKS                       R13 R12 K15 ["props"]
     2552 DUPTABLE                         R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     2553 LOADK                            R14 K123 ["rbxassetid://10921262864"]
     2554 SETTABLEKS                       R14 R13 K35 ["currentAnimationId"]
     2556 LOADK                            R14 K124 [0.75]
     2557 SETTABLEKS                       R14 R13 K36 ["length"]
     2559 LOADK                            R14 K43 ["Loaded"]
     2560 SETTABLEKS                       R14 R13 K37 ["loadingState"]
     2562 NEWTABLE                         R14 0 0
     2564 SETTABLEKS                       R14 R13 K26 ["markerEvents"]
     2566 LOADN                            R14 0
     2567 SETTABLEKS                       R14 R13 K39 ["timePosition"]
     2569 NEWTABLE                         R14 0 0
     2571 SETTABLEKS                       R14 R13 K30 ["timePositionEvents"]
     2573 LOADN                            R14 0
     2574 SETTABLEKS                       R14 R13 K40 ["timePositionNormalized"]
     2576 SETTABLEKS                       R13 R12 K16 ["state"]
     2578 LOADN                            R13 0
     2579 SETTABLEKS                       R13 R12 K17 ["weight"]
     2581 SETTABLEN                        R12 R11 2
     2582 SETTABLEKS                       R11 R10 K8 ["children"]
     2584 LOADK                            R11 K169 ["SequenceLayer"]
     2585 SETTABLEKS                       R11 R10 K14 ["className"]
     2587 LOADK                            R11 K170 ["{5d480bf8-4844-4022-9d45-e56af61bf4e5}"]
     2588 SETTABLEKS                       R11 R10 K9 ["id"]
     2590 NEWTABLE                         R11 0 1
     2592 LOADK                            R12 K171 ["Jumping"]
     2593 SETTABLEN                        R12 R11 1
     2594 SETTABLEKS                       R11 R10 K47 ["linkData"]
     2596 LOADK                            R11 K172 ["Jumping Sequence"]
     2597 SETTABLEKS                       R11 R10 K11 ["name"]
     2599 DUPTABLE                         R11 K175 [{"incrementMode", "transitionDurationSeconds"}]
     2600 LOADN                            R12 1
     2601 SETTABLEKS                       R12 R11 K173 ["incrementMode"]
     2603 LOADK                            R12 K176 [0.25]
     2604 SETTABLEKS                       R12 R11 K174 ["transitionDurationSeconds"]
     2606 SETTABLEKS                       R11 R10 K15 ["props"]
     2608 NEWTABLE                         R11 0 0
     2610 SETTABLEKS                       R11 R10 K16 ["state"]
     2612 LOADN                            R11 0
     2613 SETTABLEKS                       R11 R10 K17 ["weight"]
     2615 SETTABLEN                        R10 R9 7
     2616 DUPTABLE                         R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
     2617 NEWTABLE                         R11 0 0
     2619 SETTABLEKS                       R11 R10 K8 ["children"]
     2621 LOADK                            R11 K19 ["ClipLayer"]
     2622 SETTABLEKS                       R11 R10 K14 ["className"]
     2624 LOADK                            R11 K177 ["{14ce7080-803b-435f-93ea-4eb438941c29}"]
     2625 SETTABLEKS                       R11 R10 K9 ["id"]
     2627 NEWTABLE                         R11 0 1
     2629 LOADK                            R12 K178 ["Sitting"]
     2630 SETTABLEN                        R12 R11 1
     2631 SETTABLEKS                       R11 R10 K47 ["linkData"]
     2633 LOADK                            R11 K178 ["Sitting"]
     2634 SETTABLEKS                       R11 R10 K11 ["name"]
     2636 DUPTABLE                         R11 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     2637 LOADK                            R12 K179 ["rbxassetid://2506281703"]
     2638 SETTABLEKS                       R12 R11 K22 ["animationId"]
     2640 LOADK                            R12 K33 [""]
     2641 SETTABLEKS                       R12 R11 K23 ["didLoopEventName"]
     2643 LOADK                            R12 K34 [∞]
     2644 SETTABLEKS                       R12 R11 K24 ["endTime"]
     2646 LOADN                            R12 255
     2647 SETTABLEKS                       R12 R11 K25 ["looping"]
     2649 NEWTABLE                         R12 0 0
     2651 SETTABLEKS                       R12 R11 K26 ["markerEvents"]
     2653 LOADB                            R12 1
     2654 SETTABLEKS                       R12 R11 K27 ["preload"]
     2656 LOADN                            R12 1
     2657 SETTABLEKS                       R12 R11 K28 ["speed"]
     2659 LOADN                            R12 0
     2660 SETTABLEKS                       R12 R11 K29 ["startTime"]
     2662 NEWTABLE                         R12 0 0
     2664 SETTABLEKS                       R12 R11 K30 ["timePositionEvents"]
     2666 SETTABLEKS                       R11 R10 K15 ["props"]
     2668 DUPTABLE                         R11 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     2669 LOADK                            R12 K179 ["rbxassetid://2506281703"]
     2670 SETTABLEKS                       R12 R11 K35 ["currentAnimationId"]
     2672 LOADK                            R12 K180 [0.916999995708466]
     2673 SETTABLEKS                       R12 R11 K36 ["length"]
     2675 LOADK                            R12 K43 ["Loaded"]
     2676 SETTABLEKS                       R12 R11 K37 ["loadingState"]
     2678 NEWTABLE                         R12 0 0
     2680 SETTABLEKS                       R12 R11 K26 ["markerEvents"]
     2682 LOADN                            R12 0
     2683 SETTABLEKS                       R12 R11 K39 ["timePosition"]
     2685 NEWTABLE                         R12 0 0
     2687 SETTABLEKS                       R12 R11 K30 ["timePositionEvents"]
     2689 LOADN                            R12 0
     2690 SETTABLEKS                       R12 R11 K40 ["timePositionNormalized"]
     2692 SETTABLEKS                       R11 R10 K16 ["state"]
     2694 LOADN                            R11 0
     2695 SETTABLEKS                       R11 R10 K17 ["weight"]
     2697 SETTABLEN                        R10 R9 8
     2698 DUPTABLE                         R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
     2699 NEWTABLE                         R11 0 0
     2701 SETTABLEKS                       R11 R10 K8 ["children"]
     2703 LOADK                            R11 K19 ["ClipLayer"]
     2704 SETTABLEKS                       R11 R10 K14 ["className"]
     2706 LOADK                            R11 K181 ["{f8703185-c346-4a94-94a5-438a9d9b53f4}"]
     2707 SETTABLEKS                       R11 R10 K9 ["id"]
     2709 NEWTABLE                         R11 0 1
     2711 LOADK                            R12 K182 ["Swimming"]
     2712 SETTABLEN                        R12 R11 1
     2713 SETTABLEKS                       R11 R10 K47 ["linkData"]
     2715 LOADK                            R11 K182 ["Swimming"]
     2716 SETTABLEKS                       R11 R10 K11 ["name"]
     2718 DUPTABLE                         R11 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     2719 LOADK                            R12 K183 ["rbxassetid://10921264784"]
     2720 SETTABLEKS                       R12 R11 K22 ["animationId"]
     2722 LOADK                            R12 K33 [""]
     2723 SETTABLEKS                       R12 R11 K23 ["didLoopEventName"]
     2725 LOADK                            R12 K34 [∞]
     2726 SETTABLEKS                       R12 R11 K24 ["endTime"]
     2728 LOADN                            R12 255
     2729 SETTABLEKS                       R12 R11 K25 ["looping"]
     2731 NEWTABLE                         R12 0 0
     2733 SETTABLEKS                       R12 R11 K26 ["markerEvents"]
     2735 LOADB                            R12 1
     2736 SETTABLEKS                       R12 R11 K27 ["preload"]
     2738 LOADN                            R12 0
     2739 SETTABLEKS                       R12 R11 K28 ["speed"]
     2741 LOADN                            R12 0
     2742 SETTABLEKS                       R12 R11 K29 ["startTime"]
     2744 NEWTABLE                         R12 0 0
     2746 SETTABLEKS                       R12 R11 K30 ["timePositionEvents"]
     2748 SETTABLEKS                       R11 R10 K15 ["props"]
     2750 DUPTABLE                         R11 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     2751 LOADK                            R12 K183 ["rbxassetid://10921264784"]
     2752 SETTABLEKS                       R12 R11 K35 ["currentAnimationId"]
     2754 LOADK                            R12 K184 [2.25]
     2755 SETTABLEKS                       R12 R11 K36 ["length"]
     2757 LOADK                            R12 K43 ["Loaded"]
     2758 SETTABLEKS                       R12 R11 K37 ["loadingState"]
     2760 NEWTABLE                         R12 0 0
     2762 SETTABLEKS                       R12 R11 K26 ["markerEvents"]
     2764 LOADN                            R12 0
     2765 SETTABLEKS                       R12 R11 K39 ["timePosition"]
     2767 NEWTABLE                         R12 0 0
     2769 SETTABLEKS                       R12 R11 K30 ["timePositionEvents"]
     2771 LOADN                            R12 0
     2772 SETTABLEKS                       R12 R11 K40 ["timePositionNormalized"]
     2774 SETTABLEKS                       R11 R10 K16 ["state"]
     2776 LOADN                            R11 0
     2777 SETTABLEKS                       R11 R10 K17 ["weight"]
     2779 SETTABLEN                        R10 R9 9
     2780 DUPTABLE                         R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
     2781 NEWTABLE                         R11 0 0
     2783 SETTABLEKS                       R11 R10 K8 ["children"]
     2785 LOADK                            R11 K19 ["ClipLayer"]
     2786 SETTABLEKS                       R11 R10 K14 ["className"]
     2788 LOADK                            R11 K185 ["{85ce8c33-0a03-425b-a7f4-8749f4ef200d}"]
     2789 SETTABLEKS                       R11 R10 K9 ["id"]
     2791 NEWTABLE                         R11 0 1
     2793 LOADK                            R12 K186 ["SwimmingIdle"]
     2794 SETTABLEN                        R12 R11 1
     2795 SETTABLEKS                       R11 R10 K47 ["linkData"]
     2797 LOADK                            R11 K187 ["Swimming Idle"]
     2798 SETTABLEKS                       R11 R10 K11 ["name"]
     2800 DUPTABLE                         R11 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
     2801 LOADK                            R12 K188 ["rbxassetid://10921265698"]
     2802 SETTABLEKS                       R12 R11 K22 ["animationId"]
     2804 LOADK                            R12 K33 [""]
     2805 SETTABLEKS                       R12 R11 K23 ["didLoopEventName"]
     2807 LOADK                            R12 K34 [∞]
     2808 SETTABLEKS                       R12 R11 K24 ["endTime"]
     2810 LOADN                            R12 255
     2811 SETTABLEKS                       R12 R11 K25 ["looping"]
     2813 NEWTABLE                         R12 0 0
     2815 SETTABLEKS                       R12 R11 K26 ["markerEvents"]
     2817 LOADB                            R12 1
     2818 SETTABLEKS                       R12 R11 K27 ["preload"]
     2820 LOADN                            R12 1
     2821 SETTABLEKS                       R12 R11 K28 ["speed"]
     2823 LOADN                            R12 0
     2824 SETTABLEKS                       R12 R11 K29 ["startTime"]
     2826 NEWTABLE                         R12 0 0
     2828 SETTABLEKS                       R12 R11 K30 ["timePositionEvents"]
     2830 SETTABLEKS                       R11 R10 K15 ["props"]
     2832 DUPTABLE                         R11 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
     2833 LOADK                            R12 K188 ["rbxassetid://10921265698"]
     2834 SETTABLEKS                       R12 R11 K35 ["currentAnimationId"]
     2836 LOADK                            R12 K189 [2.875]
     2837 SETTABLEKS                       R12 R11 K36 ["length"]
     2839 LOADK                            R12 K43 ["Loaded"]
     2840 SETTABLEKS                       R12 R11 K37 ["loadingState"]
     2842 NEWTABLE                         R12 0 0
     2844 SETTABLEKS                       R12 R11 K26 ["markerEvents"]
     2846 LOADN                            R12 0
     2847 SETTABLEKS                       R12 R11 K39 ["timePosition"]
     2849 NEWTABLE                         R12 0 0
     2851 SETTABLEKS                       R12 R11 K30 ["timePositionEvents"]
     2853 LOADN                            R12 0
     2854 SETTABLEKS                       R12 R11 K40 ["timePositionNormalized"]
     2856 SETTABLEKS                       R11 R10 K16 ["state"]
     2858 LOADN                            R11 0
     2859 SETTABLEKS                       R11 R10 K17 ["weight"]
     2861 SETTABLEN                        R10 R9 10
     2862 SETTABLEKS                       R9 R8 K8 ["children"]
     2864 LOADK                            R9 K190 ["SelectLayer"]
     2865 SETTABLEKS                       R9 R8 K14 ["className"]
     2867 LOADK                            R9 K191 ["{c77cf2a9-8984-419f-b208-f4a337c63839}"]
     2868 SETTABLEKS                       R9 R8 K9 ["id"]
     2870 DUPTABLE                         R9 K193 [{"lowLodThreshold", "selection", "transitionDurationSeconds"}]
     2871 LOADN                            R10 3
     2872 SETTABLEKS                       R10 R9 K102 ["lowLodThreshold"]
     2874 LOADK                            R10 K159 ["Idle"]
     2875 SETTABLEKS                       R10 R9 K192 ["selection"]
     2877 LOADK                            R10 K194 [0.2]
     2878 SETTABLEKS                       R10 R9 K174 ["transitionDurationSeconds"]
     2880 SETTABLEKS                       R9 R8 K15 ["props"]
     2882 NEWTABLE                         R9 0 0
     2884 SETTABLEKS                       R9 R8 K16 ["state"]
     2886 LOADN                            R9 1
     2887 SETTABLEKS                       R9 R8 K17 ["weight"]
     2889 SETTABLEN                        R8 R7 2
     2890 SETTABLEKS                       R7 R6 K8 ["children"]
     2892 LOADK                            R7 K195 ["Priority"]
     2893 SETTABLEKS                       R7 R6 K14 ["className"]
     2895 LOADK                            R7 K196 ["{54b88a48-a872-4b81-ae19-e530bce87fb3}"]
     2896 SETTABLEKS                       R7 R6 K9 ["id"]
     2898 LOADK                            R7 K197 ["Priority Blend"]
     2899 SETTABLEKS                       R7 R6 K11 ["name"]
     2901 DUPTABLE                         R7 K199 [{"fadeDurationSeconds"}]
     2902 LOADK                            R8 K200 [0.15]
     2903 SETTABLEKS                       R8 R7 K198 ["fadeDurationSeconds"]
     2905 SETTABLEKS                       R7 R6 K15 ["props"]
     2907 DUPTABLE                         R7 K203 [{"easedWeights", "weights"}]
     2908 NEWTABLE                         R8 0 0
     2910 SETTABLEKS                       R8 R7 K201 ["easedWeights"]
     2912 NEWTABLE                         R8 0 2
     2914 LOADN                            R9 1
     2915 SETTABLEN                        R9 R8 1
     2916 LOADN                            R9 0
     2917 SETTABLEN                        R9 R8 2
     2918 SETTABLEKS                       R8 R7 K202 ["weights"]
     2920 SETTABLEKS                       R7 R6 K16 ["state"]
     2922 LOADN                            R7 1
     2923 SETTABLEKS                       R7 R6 K17 ["weight"]
     2925 SETTABLEN                        R6 R5 1
     2926 SETTABLEKS                       R5 R4 K8 ["children"]
     2928 LOADK                            R5 K204 ["HeadRotate"]
     2929 SETTABLEKS                       R5 R4 K14 ["className"]
     2931 LOADK                            R5 K205 ["{0fd9dd90-1937-4662-85de-fa87000f549e}"]
     2932 SETTABLEKS                       R5 R4 K9 ["id"]
     2934 LOADK                            R5 K206 ["Head Rotation"]
     2935 SETTABLEKS                       R5 R4 K11 ["name"]
     2937 NEWTABLE                         R5 0 0
     2939 SETTABLEKS                       R5 R4 K15 ["props"]
     2941 NEWTABLE                         R5 0 0
     2943 SETTABLEKS                       R5 R4 K16 ["state"]
     2945 LOADN                            R5 1
     2946 SETTABLEKS                       R5 R4 K17 ["weight"]
     2948 SETTABLEN                        R4 R3 1
     2949 SETTABLEKS                       R3 R2 K8 ["children"]
     2951 LOADK                            R3 K207 ["foo"]
     2952 SETTABLEKS                       R3 R2 K9 ["id"]
     2954 GETIMPORT                        R3 K209 [CFrame.new]
     2956 LOADK                            R4 K210 [-4.98748732]
     2957 LOADK                            R5 K211 [4.45460129]
     2958 LOADK                            R6 K212 [0.635853291]
     2959 LOADN                            R7 1
     2960 LOADN                            R8 0
     2961 LOADN                            R9 0
     2962 LOADN                            R10 0
     2963 LOADN                            R11 1
     2964 LOADN                            R12 0
     2965 LOADN                            R13 0
     2966 LOADN                            R14 0
     2967 LOADN                            R15 1
     2968 CALL                             R3 12 1
     2969 SETTABLEKS                       R3 R2 K10 ["hrpCFrame"]
     2971 LOADK                            R3 K213 ["Parraing"]
     2972 SETTABLEKS                       R3 R2 K11 ["name"]
     2974 LOADK                            R3 K162 [7.2416670541279]
     2975 SETTABLEKS                       R3 R2 K12 ["timestamp"]
     2977 RETURN                           R2 1
