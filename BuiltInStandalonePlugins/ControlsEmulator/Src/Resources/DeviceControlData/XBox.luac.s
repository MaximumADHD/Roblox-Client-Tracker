MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K29 [{"DeviceImage", "ThumbstickLeft", "ThumbstickLeftMappings", "ThumbstickRight", "ThumbstickRightMappings", "ArrowUp", "ArrowRight", "ArrowDown", "ArrowLeft", "ArrowsMappings", "ButtonX", "ButtonY", "ButtonB", "ButtonA", "AbxyMappings", "ButtonSelect", "ButtonSelectLabel", "ButtonStart", "ButtonStartLabel", "ButtonL1", "ButtonL1Label", "ButtonL2", "ButtonL2Label", "TriggerL2", "ButtonR1", "ButtonR1Label", "ButtonR2", "ButtonR2Label", "TriggerR2"}]
        2 DUPTABLE                         R1 K33 [{"type", "srcDark", "srcLight"}]
        3 LOADK                            R2 K34 ["Background"]
        4 SETTABLEKS                       R2 R1 K30 ["type"]
        6 LOADK                            R2 K35 ["rbxasset://textures/ControlsEmulator/XBox_Dark.png"]
        7 SETTABLEKS                       R2 R1 K31 ["srcDark"]
        9 LOADK                            R2 K36 ["rbxasset://textures/ControlsEmulator/XBox_Light.png"]
       10 SETTABLEKS                       R2 R1 K32 ["srcLight"]
       12 SETTABLEKS                       R1 R0 K0 ["DeviceImage"]
       14 DUPTABLE                         R1 K41 [{"keyCode", "type", "Position", "relativeStickSize", "relativeSocketSize"}]
       15 GETIMPORT                        R2 K45 [Enum.KeyCode.Thumbstick1]
       17 SETTABLEKS                       R2 R1 K37 ["keyCode"]
       19 LOADK                            R2 K46 ["Thumbstick"]
       20 SETTABLEKS                       R2 R1 K30 ["type"]
       22 GETIMPORT                        R2 K49 [UDim2.new]
       24 LOADK                            R3 K50 [0.265]
       25 LOADN                            R4 0
       26 LOADK                            R5 K51 [0.5]
       27 LOADN                            R6 0
       28 CALL                             R2 4 1
       29 SETTABLEKS                       R2 R1 K38 ["Position"]
       31 LOADK                            R2 K52 [0.38]
       32 SETTABLEKS                       R2 R1 K39 ["relativeStickSize"]
       34 LOADK                            R2 K53 [0.22]
       35 SETTABLEKS                       R2 R1 K40 ["relativeSocketSize"]
       37 SETTABLEKS                       R1 R0 K1 ["ThumbstickLeft"]
       39 DUPTABLE                         R1 K62 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "centerKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
       40 LOADK                            R2 K63 ["L Thumbstick Up"]
       41 SETTABLEKS                       R2 R1 K54 ["upKeyName"]
       43 LOADK                            R2 K64 ["L Thumbstick Down"]
       44 SETTABLEKS                       R2 R1 K55 ["downKeyName"]
       46 LOADK                            R2 K65 ["L Thumbstick Left"]
       47 SETTABLEKS                       R2 R1 K56 ["leftKeyName"]
       49 LOADK                            R2 K66 ["L Thumbstick Right"]
       50 SETTABLEKS                       R2 R1 K57 ["rightKeyName"]
       52 LOADK                            R2 K67 ["L Thumbstick Click"]
       53 SETTABLEKS                       R2 R1 K58 ["centerKeyName"]
       55 LOADK                            R2 K68 ["CrossLayoutMappings"]
       56 SETTABLEKS                       R2 R1 K30 ["type"]
       58 LOADK                            R2 K69 ["Left"]
       59 SETTABLEKS                       R2 R1 K59 ["side"]
       61 GETIMPORT                        R2 K49 [UDim2.new]
       63 LOADK                            R3 K70 [-0.02]
       64 LOADN                            R4 0
       65 LOADK                            R5 K71 [0.57]
       66 LOADN                            R6 0
       67 CALL                             R2 4 1
       68 SETTABLEKS                       R2 R1 K38 ["Position"]
       70 GETIMPORT                        R2 K49 [UDim2.new]
       72 LOADK                            R3 K72 [0.26]
       73 LOADN                            R4 0
       74 LOADK                            R5 K51 [0.5]
       75 LOADN                            R6 0
       76 CALL                             R2 4 1
       77 SETTABLEKS                       R2 R1 K60 ["arrowDestination"]
       79 LOADK                            R2 K73 [0.9]
       80 SETTABLEKS                       R2 R1 K61 ["arrowBendPoint"]
       82 SETTABLEKS                       R1 R0 K2 ["ThumbstickLeftMappings"]
       84 DUPTABLE                         R1 K41 [{"keyCode", "type", "Position", "relativeStickSize", "relativeSocketSize"}]
       85 GETIMPORT                        R2 K75 [Enum.KeyCode.Thumbstick2]
       87 SETTABLEKS                       R2 R1 K37 ["keyCode"]
       89 LOADK                            R2 K46 ["Thumbstick"]
       90 SETTABLEKS                       R2 R1 K30 ["type"]
       92 GETIMPORT                        R2 K49 [UDim2.new]
       94 LOADK                            R3 K76 [0.625]
       95 LOADN                            R4 0
       96 LOADK                            R5 K77 [0.627]
       97 LOADN                            R6 0
       98 CALL                             R2 4 1
       99 SETTABLEKS                       R2 R1 K38 ["Position"]
      101 LOADK                            R2 K52 [0.38]
      102 SETTABLEKS                       R2 R1 K39 ["relativeStickSize"]
      104 LOADK                            R2 K53 [0.22]
      105 SETTABLEKS                       R2 R1 K40 ["relativeSocketSize"]
      107 SETTABLEKS                       R1 R0 K3 ["ThumbstickRight"]
      109 DUPTABLE                         R1 K62 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "centerKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      110 LOADK                            R2 K78 ["R Thumbstick Up"]
      111 SETTABLEKS                       R2 R1 K54 ["upKeyName"]
      113 LOADK                            R2 K79 ["R Thumbstick Down"]
      114 SETTABLEKS                       R2 R1 K55 ["downKeyName"]
      116 LOADK                            R2 K80 ["R Thumbstick Left"]
      117 SETTABLEKS                       R2 R1 K56 ["leftKeyName"]
      119 LOADK                            R2 K81 ["R Thumbstick Right"]
      120 SETTABLEKS                       R2 R1 K57 ["rightKeyName"]
      122 LOADK                            R2 K82 ["R Thumbstick Click"]
      123 SETTABLEKS                       R2 R1 K58 ["centerKeyName"]
      125 LOADK                            R2 K68 ["CrossLayoutMappings"]
      126 SETTABLEKS                       R2 R1 K30 ["type"]
      128 LOADK                            R2 K83 ["Right"]
      129 SETTABLEKS                       R2 R1 K59 ["side"]
      131 GETIMPORT                        R2 K49 [UDim2.new]
      133 LOADK                            R3 K84 [1.02]
      134 LOADN                            R4 0
      135 LOADK                            R5 K85 [0.831]
      136 LOADN                            R6 0
      137 CALL                             R2 4 1
      138 SETTABLEKS                       R2 R1 K38 ["Position"]
      140 GETIMPORT                        R2 K49 [UDim2.new]
      142 LOADK                            R3 K77 [0.627]
      143 LOADN                            R4 0
      144 LOADK                            R5 K77 [0.627]
      145 LOADN                            R6 0
      146 CALL                             R2 4 1
      147 SETTABLEKS                       R2 R1 K60 ["arrowDestination"]
      149 LOADK                            R2 K86 [0.6]
      150 SETTABLEKS                       R2 R1 K61 ["arrowBendPoint"]
      152 SETTABLEKS                       R1 R0 K4 ["ThumbstickRightMappings"]
      154 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      155 GETIMPORT                        R2 K90 [Enum.KeyCode.DPadUp]
      157 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      159 LOADK                            R2 K91 ["Button"]
      160 SETTABLEKS                       R2 R1 K30 ["type"]
      162 GETIMPORT                        R2 K49 [UDim2.new]
      164 LOADK                            R3 K52 [0.38]
      165 LOADN                            R4 0
      166 LOADK                            R5 K92 [0.557]
      167 LOADN                            R6 0
      168 CALL                             R2 4 1
      169 SETTABLEKS                       R2 R1 K38 ["Position"]
      171 GETIMPORT                        R2 K49 [UDim2.new]
      173 LOADK                            R3 K93 [0.041]
      174 LOADN                            R4 0
      175 LOADK                            R5 K93 [0.041]
      176 LOADN                            R6 0
      177 CALL                             R2 4 1
      178 SETTABLEKS                       R2 R1 K87 ["Size"]
      180 SETTABLEKS                       R1 R0 K5 ["ArrowUp"]
      182 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      183 GETIMPORT                        R2 K95 [Enum.KeyCode.DPadRight]
      185 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      187 LOADK                            R2 K91 ["Button"]
      188 SETTABLEKS                       R2 R1 K30 ["type"]
      190 GETIMPORT                        R2 K49 [UDim2.new]
      192 LOADK                            R3 K96 [0.425]
      193 LOADN                            R4 0
      194 LOADK                            R5 K97 [0.596]
      195 LOADN                            R6 0
      196 CALL                             R2 4 1
      197 SETTABLEKS                       R2 R1 K38 ["Position"]
      199 GETIMPORT                        R2 K49 [UDim2.new]
      201 LOADK                            R3 K93 [0.041]
      202 LOADN                            R4 0
      203 LOADK                            R5 K93 [0.041]
      204 LOADN                            R6 0
      205 CALL                             R2 4 1
      206 SETTABLEKS                       R2 R1 K87 ["Size"]
      208 SETTABLEKS                       R1 R0 K6 ["ArrowRight"]
      210 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      211 GETIMPORT                        R2 K99 [Enum.KeyCode.DPadDown]
      213 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      215 LOADK                            R2 K91 ["Button"]
      216 SETTABLEKS                       R2 R1 K30 ["type"]
      218 GETIMPORT                        R2 K49 [UDim2.new]
      220 LOADK                            R3 K52 [0.38]
      221 LOADN                            R4 0
      222 LOADK                            R5 K100 [0.638]
      223 LOADN                            R6 0
      224 CALL                             R2 4 1
      225 SETTABLEKS                       R2 R1 K38 ["Position"]
      227 GETIMPORT                        R2 K49 [UDim2.new]
      229 LOADK                            R3 K93 [0.041]
      230 LOADN                            R4 0
      231 LOADK                            R5 K93 [0.041]
      232 LOADN                            R6 0
      233 CALL                             R2 4 1
      234 SETTABLEKS                       R2 R1 K87 ["Size"]
      236 SETTABLEKS                       R1 R0 K7 ["ArrowDown"]
      238 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      239 GETIMPORT                        R2 K102 [Enum.KeyCode.DPadLeft]
      241 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      243 LOADK                            R2 K91 ["Button"]
      244 SETTABLEKS                       R2 R1 K30 ["type"]
      246 GETIMPORT                        R2 K49 [UDim2.new]
      248 LOADK                            R3 K103 [0.337]
      249 LOADN                            R4 0
      250 LOADK                            R5 K104 [0.595]
      251 LOADN                            R6 0
      252 CALL                             R2 4 1
      253 SETTABLEKS                       R2 R1 K38 ["Position"]
      255 GETIMPORT                        R2 K49 [UDim2.new]
      257 LOADK                            R3 K93 [0.041]
      258 LOADN                            R4 0
      259 LOADK                            R5 K93 [0.041]
      260 LOADN                            R6 0
      261 CALL                             R2 4 1
      262 SETTABLEKS                       R2 R1 K87 ["Size"]
      264 SETTABLEKS                       R1 R0 K8 ["ArrowLeft"]
      266 DUPTABLE                         R1 K105 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      267 LOADK                            R2 K106 ["DPad Up"]
      268 SETTABLEKS                       R2 R1 K54 ["upKeyName"]
      270 LOADK                            R2 K107 ["DPad Down"]
      271 SETTABLEKS                       R2 R1 K55 ["downKeyName"]
      273 LOADK                            R2 K108 ["DPad Left"]
      274 SETTABLEKS                       R2 R1 K56 ["leftKeyName"]
      276 LOADK                            R2 K109 ["DPad Right"]
      277 SETTABLEKS                       R2 R1 K57 ["rightKeyName"]
      279 LOADK                            R2 K68 ["CrossLayoutMappings"]
      280 SETTABLEKS                       R2 R1 K30 ["type"]
      282 LOADK                            R2 K69 ["Left"]
      283 SETTABLEKS                       R2 R1 K59 ["side"]
      285 GETIMPORT                        R2 K49 [UDim2.new]
      287 LOADN                            R3 0
      288 LOADN                            R4 0
      289 LOADK                            R5 K110 [0.825]
      290 LOADN                            R6 0
      291 CALL                             R2 4 1
      292 SETTABLEKS                       R2 R1 K38 ["Position"]
      294 GETIMPORT                        R2 K49 [UDim2.new]
      296 LOADK                            R3 K111 [0.375]
      297 LOADN                            R4 0
      298 LOADK                            R5 K86 [0.6]
      299 LOADN                            R6 0
      300 CALL                             R2 4 1
      301 SETTABLEKS                       R2 R1 K60 ["arrowDestination"]
      303 LOADK                            R2 K86 [0.6]
      304 SETTABLEKS                       R2 R1 K61 ["arrowBendPoint"]
      306 SETTABLEKS                       R1 R0 K9 ["ArrowsMappings"]
      308 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      309 GETIMPORT                        R2 K112 [Enum.KeyCode.ButtonX]
      311 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      313 LOADK                            R2 K91 ["Button"]
      314 SETTABLEKS                       R2 R1 K30 ["type"]
      316 GETIMPORT                        R2 K49 [UDim2.new]
      318 LOADK                            R3 K113 [0.678]
      319 LOADN                            R4 0
      320 LOADK                            R5 K114 [0.468]
      321 LOADN                            R6 0
      322 CALL                             R2 4 1
      323 SETTABLEKS                       R2 R1 K38 ["Position"]
      325 GETIMPORT                        R2 K49 [UDim2.new]
      327 LOADK                            R3 K115 [0.051]
      328 LOADN                            R4 0
      329 LOADK                            R5 K115 [0.051]
      330 LOADN                            R6 0
      331 CALL                             R2 4 1
      332 SETTABLEKS                       R2 R1 K87 ["Size"]
      334 SETTABLEKS                       R1 R0 K10 ["ButtonX"]
      336 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      337 GETIMPORT                        R2 K116 [Enum.KeyCode.ButtonY]
      339 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      341 LOADK                            R2 K91 ["Button"]
      342 SETTABLEKS                       R2 R1 K30 ["type"]
      344 GETIMPORT                        R2 K49 [UDim2.new]
      346 LOADK                            R3 K117 [0.743]
      347 LOADN                            R4 0
      348 LOADK                            R5 K118 [0.41]
      349 LOADN                            R6 0
      350 CALL                             R2 4 1
      351 SETTABLEKS                       R2 R1 K38 ["Position"]
      353 GETIMPORT                        R2 K49 [UDim2.new]
      355 LOADK                            R3 K115 [0.051]
      356 LOADN                            R4 0
      357 LOADK                            R5 K115 [0.051]
      358 LOADN                            R6 0
      359 CALL                             R2 4 1
      360 SETTABLEKS                       R2 R1 K87 ["Size"]
      362 SETTABLEKS                       R1 R0 K11 ["ButtonY"]
      364 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      365 GETIMPORT                        R2 K119 [Enum.KeyCode.ButtonB]
      367 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      369 LOADK                            R2 K91 ["Button"]
      370 SETTABLEKS                       R2 R1 K30 ["type"]
      372 GETIMPORT                        R2 K49 [UDim2.new]
      374 LOADK                            R3 K120 [0.806]
      375 LOADN                            R4 0
      376 LOADK                            R5 K121 [0.458]
      377 LOADN                            R6 0
      378 CALL                             R2 4 1
      379 SETTABLEKS                       R2 R1 K38 ["Position"]
      381 GETIMPORT                        R2 K49 [UDim2.new]
      383 LOADK                            R3 K115 [0.051]
      384 LOADN                            R4 0
      385 LOADK                            R5 K115 [0.051]
      386 LOADN                            R6 0
      387 CALL                             R2 4 1
      388 SETTABLEKS                       R2 R1 K87 ["Size"]
      390 SETTABLEKS                       R1 R0 K12 ["ButtonB"]
      392 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      393 GETIMPORT                        R2 K122 [Enum.KeyCode.ButtonA]
      395 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      397 LOADK                            R2 K91 ["Button"]
      398 SETTABLEKS                       R2 R1 K30 ["type"]
      400 GETIMPORT                        R2 K49 [UDim2.new]
      402 LOADK                            R3 K123 [0.741]
      403 LOADN                            R4 0
      404 LOADK                            R5 K124 [0.52]
      405 LOADN                            R6 0
      406 CALL                             R2 4 1
      407 SETTABLEKS                       R2 R1 K38 ["Position"]
      409 GETIMPORT                        R2 K49 [UDim2.new]
      411 LOADK                            R3 K115 [0.051]
      412 LOADN                            R4 0
      413 LOADK                            R5 K115 [0.051]
      414 LOADN                            R6 0
      415 CALL                             R2 4 1
      416 SETTABLEKS                       R2 R1 K87 ["Size"]
      418 SETTABLEKS                       R1 R0 K13 ["ButtonA"]
      420 DUPTABLE                         R1 K105 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      421 LOADK                            R2 K125 ["Y"]
      422 SETTABLEKS                       R2 R1 K54 ["upKeyName"]
      424 LOADK                            R2 K126 ["A"]
      425 SETTABLEKS                       R2 R1 K55 ["downKeyName"]
      427 LOADK                            R2 K127 ["X"]
      428 SETTABLEKS                       R2 R1 K56 ["leftKeyName"]
      430 LOADK                            R2 K128 ["B"]
      431 SETTABLEKS                       R2 R1 K57 ["rightKeyName"]
      433 LOADK                            R2 K68 ["CrossLayoutMappings"]
      434 SETTABLEKS                       R2 R1 K30 ["type"]
      436 LOADK                            R2 K83 ["Right"]
      437 SETTABLEKS                       R2 R1 K59 ["side"]
      439 GETIMPORT                        R2 K49 [UDim2.new]
      441 LOADK                            R3 K84 [1.02]
      442 LOADN                            R4 0
      443 LOADK                            R5 K129 [0.608]
      444 LOADN                            R6 0
      445 CALL                             R2 4 1
      446 SETTABLEKS                       R2 R1 K38 ["Position"]
      448 GETIMPORT                        R2 K49 [UDim2.new]
      450 LOADK                            R3 K130 [0.75]
      451 LOADN                            R4 0
      452 LOADK                            R5 K131 [0.47]
      453 LOADN                            R6 0
      454 CALL                             R2 4 1
      455 SETTABLEKS                       R2 R1 K60 ["arrowDestination"]
      457 LOADK                            R2 K51 [0.5]
      458 SETTABLEKS                       R2 R1 K61 ["arrowBendPoint"]
      460 SETTABLEKS                       R1 R0 K14 ["AbxyMappings"]
      462 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      463 GETIMPORT                        R2 K132 [Enum.KeyCode.ButtonSelect]
      465 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      467 LOADK                            R2 K91 ["Button"]
      468 SETTABLEKS                       R2 R1 K30 ["type"]
      470 GETIMPORT                        R2 K49 [UDim2.new]
      472 LOADK                            R3 K133 [0.433]
      473 LOADN                            R4 0
      474 LOADK                            R5 K134 [0.467]
      475 LOADN                            R6 0
      476 CALL                             R2 4 1
      477 SETTABLEKS                       R2 R1 K38 ["Position"]
      479 GETIMPORT                        R2 K49 [UDim2.new]
      481 LOADK                            R3 K135 [0.035]
      482 LOADN                            R4 0
      483 LOADK                            R5 K135 [0.035]
      484 LOADN                            R6 0
      485 CALL                             R2 4 1
      486 SETTABLEKS                       R2 R1 K87 ["Size"]
      488 SETTABLEKS                       R1 R0 K15 ["ButtonSelect"]
      490 DUPTABLE                         R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      491 LOADK                            R2 K138 ["Select"]
      492 SETTABLEKS                       R2 R1 K136 ["keyName"]
      494 LOADK                            R2 K139 ["ButtonMapping"]
      495 SETTABLEKS                       R2 R1 K30 ["type"]
      497 LOADK                            R2 K69 ["Left"]
      498 SETTABLEKS                       R2 R1 K59 ["side"]
      500 GETIMPORT                        R2 K49 [UDim2.new]
      502 LOADK                            R3 K140 [0.039]
      503 LOADN                            R4 0
      504 LOADK                            R5 K141 [0.359]
      505 LOADN                            R6 0
      506 CALL                             R2 4 1
      507 SETTABLEKS                       R2 R1 K38 ["Position"]
      509 GETIMPORT                        R2 K49 [UDim2.new]
      511 LOADK                            R3 K142 [0.436]
      512 LOADN                            R4 0
      513 LOADK                            R5 K143 [0.469]
      514 LOADN                            R6 0
      515 CALL                             R2 4 1
      516 SETTABLEKS                       R2 R1 K60 ["arrowDestination"]
      518 LOADK                            R2 K130 [0.75]
      519 SETTABLEKS                       R2 R1 K61 ["arrowBendPoint"]
      521 SETTABLEKS                       R1 R0 K16 ["ButtonSelectLabel"]
      523 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      524 GETIMPORT                        R2 K144 [Enum.KeyCode.ButtonStart]
      526 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      528 LOADK                            R2 K91 ["Button"]
      529 SETTABLEKS                       R2 R1 K30 ["type"]
      531 GETIMPORT                        R2 K49 [UDim2.new]
      533 LOADK                            R3 K145 [0.569]
      534 LOADN                            R4 0
      535 LOADK                            R5 K134 [0.467]
      536 LOADN                            R6 0
      537 CALL                             R2 4 1
      538 SETTABLEKS                       R2 R1 K38 ["Position"]
      540 GETIMPORT                        R2 K49 [UDim2.new]
      542 LOADK                            R3 K135 [0.035]
      543 LOADN                            R4 0
      544 LOADK                            R5 K135 [0.035]
      545 LOADN                            R6 0
      546 CALL                             R2 4 1
      547 SETTABLEKS                       R2 R1 K87 ["Size"]
      549 SETTABLEKS                       R1 R0 K17 ["ButtonStart"]
      551 DUPTABLE                         R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      552 LOADK                            R2 K146 ["Start"]
      553 SETTABLEKS                       R2 R1 K136 ["keyName"]
      555 LOADK                            R2 K139 ["ButtonMapping"]
      556 SETTABLEKS                       R2 R1 K30 ["type"]
      558 LOADK                            R2 K83 ["Right"]
      559 SETTABLEKS                       R2 R1 K59 ["side"]
      561 GETIMPORT                        R2 K49 [UDim2.new]
      563 LOADK                            R3 K147 [0.965]
      564 LOADN                            R4 0
      565 LOADK                            R5 K141 [0.359]
      566 LOADN                            R6 0
      567 CALL                             R2 4 1
      568 SETTABLEKS                       R2 R1 K38 ["Position"]
      570 GETIMPORT                        R2 K49 [UDim2.new]
      572 LOADK                            R3 K71 [0.57]
      573 LOADN                            R4 0
      574 LOADK                            R5 K143 [0.469]
      575 LOADN                            R6 0
      576 CALL                             R2 4 1
      577 SETTABLEKS                       R2 R1 K60 ["arrowDestination"]
      579 LOADK                            R2 K130 [0.75]
      580 SETTABLEKS                       R2 R1 K61 ["arrowBendPoint"]
      582 SETTABLEKS                       R1 R0 K18 ["ButtonStartLabel"]
      584 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      585 GETIMPORT                        R2 K148 [Enum.KeyCode.ButtonL1]
      587 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      589 LOADK                            R2 K91 ["Button"]
      590 SETTABLEKS                       R2 R1 K30 ["type"]
      592 GETIMPORT                        R2 K49 [UDim2.new]
      594 LOADK                            R3 K149 [0.276]
      595 LOADN                            R4 0
      596 LOADK                            R5 K150 [0.3]
      597 LOADN                            R6 0
      598 CALL                             R2 4 1
      599 SETTABLEKS                       R2 R1 K38 ["Position"]
      601 GETIMPORT                        R2 K49 [UDim2.new]
      603 LOADK                            R3 K151 [0.16]
      604 LOADN                            R4 0
      605 LOADK                            R5 K152 [0.04]
      606 LOADN                            R6 0
      607 CALL                             R2 4 1
      608 SETTABLEKS                       R2 R1 K87 ["Size"]
      610 SETTABLEKS                       R1 R0 K19 ["ButtonL1"]
      612 DUPTABLE                         R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      613 LOADK                            R2 K153 ["L1"]
      614 SETTABLEKS                       R2 R1 K136 ["keyName"]
      616 LOADK                            R2 K139 ["ButtonMapping"]
      617 SETTABLEKS                       R2 R1 K30 ["type"]
      619 LOADK                            R2 K69 ["Left"]
      620 SETTABLEKS                       R2 R1 K59 ["side"]
      622 GETIMPORT                        R2 K49 [UDim2.new]
      624 LOADK                            R3 K154 [0.031]
      625 LOADN                            R4 0
      626 LOADK                            R5 K149 [0.276]
      627 LOADN                            R6 0
      628 CALL                             R2 4 1
      629 SETTABLEKS                       R2 R1 K38 ["Position"]
      631 GETIMPORT                        R2 K49 [UDim2.new]
      633 LOADK                            R3 K155 [0.241]
      634 LOADN                            R4 0
      635 LOADK                            R5 K156 [0.292]
      636 LOADN                            R6 0
      637 CALL                             R2 4 1
      638 SETTABLEKS                       R2 R1 K60 ["arrowDestination"]
      640 LOADK                            R2 K157 [0.8]
      641 SETTABLEKS                       R2 R1 K61 ["arrowBendPoint"]
      643 SETTABLEKS                       R1 R0 K20 ["ButtonL1Label"]
      645 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      646 GETIMPORT                        R2 K158 [Enum.KeyCode.ButtonL2]
      648 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      650 LOADK                            R2 K91 ["Button"]
      651 SETTABLEKS                       R2 R1 K30 ["type"]
      653 GETIMPORT                        R2 K49 [UDim2.new]
      655 LOADK                            R3 K155 [0.241]
      656 LOADN                            R4 0
      657 LOADK                            R5 K159 [0.235]
      658 LOADN                            R6 0
      659 CALL                             R2 4 1
      660 SETTABLEKS                       R2 R1 K38 ["Position"]
      662 GETIMPORT                        R2 K49 [UDim2.new]
      664 LOADK                            R3 K160 [0.07]
      665 LOADN                            R4 0
      666 LOADK                            R5 K161 [0.063]
      667 LOADN                            R6 0
      668 CALL                             R2 4 1
      669 SETTABLEKS                       R2 R1 K87 ["Size"]
      671 SETTABLEKS                       R1 R0 K21 ["ButtonL2"]
      673 DUPTABLE                         R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      674 LOADK                            R2 K162 ["L2"]
      675 SETTABLEKS                       R2 R1 K136 ["keyName"]
      677 LOADK                            R2 K139 ["ButtonMapping"]
      678 SETTABLEKS                       R2 R1 K30 ["type"]
      680 LOADK                            R2 K69 ["Left"]
      681 SETTABLEKS                       R2 R1 K59 ["side"]
      683 GETIMPORT                        R2 K49 [UDim2.new]
      685 LOADK                            R3 K154 [0.031]
      686 LOADN                            R4 0
      687 LOADK                            R5 K163 [0.176]
      688 LOADN                            R6 0
      689 CALL                             R2 4 1
      690 SETTABLEKS                       R2 R1 K38 ["Position"]
      692 GETIMPORT                        R2 K49 [UDim2.new]
      694 LOADK                            R3 K164 [0.247]
      695 LOADN                            R4 0
      696 LOADK                            R5 K165 [0.222]
      697 LOADN                            R6 0
      698 CALL                             R2 4 1
      699 SETTABLEKS                       R2 R1 K60 ["arrowDestination"]
      701 LOADK                            R2 K166 [0.7]
      702 SETTABLEKS                       R2 R1 K61 ["arrowBendPoint"]
      704 SETTABLEKS                       R1 R0 K22 ["ButtonL2Label"]
      706 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      707 GETIMPORT                        R2 K158 [Enum.KeyCode.ButtonL2]
      709 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      711 LOADK                            R2 K167 ["Trigger"]
      712 SETTABLEKS                       R2 R1 K30 ["type"]
      714 GETIMPORT                        R2 K49 [UDim2.new]
      716 LOADK                            R3 K168 [0.25]
      717 LOADN                            R4 0
      718 LOADK                            R5 K169 [0.052]
      719 LOADN                            R6 0
      720 CALL                             R2 4 1
      721 SETTABLEKS                       R2 R1 K38 ["Position"]
      723 GETIMPORT                        R2 K49 [UDim2.new]
      725 LOADK                            R3 K170 [0.069]
      726 LOADN                            R4 0
      727 LOADK                            R5 K171 [0.1]
      728 LOADN                            R6 0
      729 CALL                             R2 4 1
      730 SETTABLEKS                       R2 R1 K87 ["Size"]
      732 SETTABLEKS                       R1 R0 K23 ["TriggerL2"]
      734 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      735 GETIMPORT                        R2 K172 [Enum.KeyCode.ButtonR1]
      737 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      739 LOADK                            R2 K91 ["Button"]
      740 SETTABLEKS                       R2 R1 K30 ["type"]
      742 GETIMPORT                        R2 K49 [UDim2.new]
      744 LOADK                            R3 K173 [0.723]
      745 LOADN                            R4 0
      746 LOADK                            R5 K150 [0.3]
      747 LOADN                            R6 0
      748 CALL                             R2 4 1
      749 SETTABLEKS                       R2 R1 K38 ["Position"]
      751 GETIMPORT                        R2 K49 [UDim2.new]
      753 LOADK                            R3 K151 [0.16]
      754 LOADN                            R4 0
      755 LOADK                            R5 K152 [0.04]
      756 LOADN                            R6 0
      757 CALL                             R2 4 1
      758 SETTABLEKS                       R2 R1 K87 ["Size"]
      760 SETTABLEKS                       R1 R0 K24 ["ButtonR1"]
      762 DUPTABLE                         R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      763 LOADK                            R2 K174 ["R1"]
      764 SETTABLEKS                       R2 R1 K136 ["keyName"]
      766 LOADK                            R2 K139 ["ButtonMapping"]
      767 SETTABLEKS                       R2 R1 K30 ["type"]
      769 LOADK                            R2 K83 ["Right"]
      770 SETTABLEKS                       R2 R1 K59 ["side"]
      772 GETIMPORT                        R2 K49 [UDim2.new]
      774 LOADK                            R3 K175 [0.97]
      775 LOADN                            R4 0
      776 LOADK                            R5 K149 [0.276]
      777 LOADN                            R6 0
      778 CALL                             R2 4 1
      779 SETTABLEKS                       R2 R1 K38 ["Position"]
      781 GETIMPORT                        R2 K49 [UDim2.new]
      783 LOADK                            R3 K176 [0.765]
      784 LOADN                            R4 0
      785 LOADK                            R5 K156 [0.292]
      786 LOADN                            R6 0
      787 CALL                             R2 4 1
      788 SETTABLEKS                       R2 R1 K60 ["arrowDestination"]
      790 LOADK                            R2 K157 [0.8]
      791 SETTABLEKS                       R2 R1 K61 ["arrowBendPoint"]
      793 SETTABLEKS                       R1 R0 K25 ["ButtonR1Label"]
      795 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      796 GETIMPORT                        R2 K177 [Enum.KeyCode.ButtonR2]
      798 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      800 LOADK                            R2 K91 ["Button"]
      801 SETTABLEKS                       R2 R1 K30 ["type"]
      803 GETIMPORT                        R2 K49 [UDim2.new]
      805 LOADK                            R3 K176 [0.765]
      806 LOADN                            R4 0
      807 LOADK                            R5 K159 [0.235]
      808 LOADN                            R6 0
      809 CALL                             R2 4 1
      810 SETTABLEKS                       R2 R1 K38 ["Position"]
      812 GETIMPORT                        R2 K49 [UDim2.new]
      814 LOADK                            R3 K160 [0.07]
      815 LOADN                            R4 0
      816 LOADK                            R5 K161 [0.063]
      817 LOADN                            R6 0
      818 CALL                             R2 4 1
      819 SETTABLEKS                       R2 R1 K87 ["Size"]
      821 SETTABLEKS                       R1 R0 K26 ["ButtonR2"]
      823 DUPTABLE                         R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      824 LOADK                            R2 K178 ["R2"]
      825 SETTABLEKS                       R2 R1 K136 ["keyName"]
      827 LOADK                            R2 K139 ["ButtonMapping"]
      828 SETTABLEKS                       R2 R1 K30 ["type"]
      830 LOADK                            R2 K83 ["Right"]
      831 SETTABLEKS                       R2 R1 K59 ["side"]
      833 GETIMPORT                        R2 K49 [UDim2.new]
      835 LOADK                            R3 K179 [0.981]
      836 LOADN                            R4 0
      837 LOADK                            R5 K163 [0.176]
      838 LOADN                            R6 0
      839 CALL                             R2 4 1
      840 SETTABLEKS                       R2 R1 K38 ["Position"]
      842 GETIMPORT                        R2 K49 [UDim2.new]
      844 LOADK                            R3 K130 [0.75]
      845 LOADN                            R4 0
      846 LOADK                            R5 K165 [0.222]
      847 LOADN                            R6 0
      848 CALL                             R2 4 1
      849 SETTABLEKS                       R2 R1 K60 ["arrowDestination"]
      851 LOADK                            R2 K166 [0.7]
      852 SETTABLEKS                       R2 R1 K61 ["arrowBendPoint"]
      854 SETTABLEKS                       R1 R0 K27 ["ButtonR2Label"]
      856 DUPTABLE                         R1 K88 [{"keyCode", "type", "Position", "Size"}]
      857 GETIMPORT                        R2 K177 [Enum.KeyCode.ButtonR2]
      859 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      861 LOADK                            R2 K167 ["Trigger"]
      862 SETTABLEKS                       R2 R1 K30 ["type"]
      864 GETIMPORT                        R2 K49 [UDim2.new]
      866 LOADK                            R3 K130 [0.75]
      867 LOADN                            R4 0
      868 LOADK                            R5 K169 [0.052]
      869 LOADN                            R6 0
      870 CALL                             R2 4 1
      871 SETTABLEKS                       R2 R1 K38 ["Position"]
      873 GETIMPORT                        R2 K49 [UDim2.new]
      875 LOADK                            R3 K170 [0.069]
      876 LOADN                            R4 0
      877 LOADK                            R5 K171 [0.1]
      878 LOADN                            R6 0
      879 CALL                             R2 4 1
      880 SETTABLEKS                       R2 R1 K87 ["Size"]
      882 SETTABLEKS                       R1 R0 K28 ["TriggerR2"]
      884 RETURN                           R0 1
