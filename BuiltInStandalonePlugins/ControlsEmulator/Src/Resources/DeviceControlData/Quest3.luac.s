MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K25 [{"DeviceImage", "ThumbstickLeft", "ThumbstickLeftMappings", "ThumbstickRight", "ThumbstickRightMappings", "ButtonX", "ButtonXLabel", "ButtonY", "ButtonYLabel", "ButtonB", "ButtonBLabel", "ButtonA", "ButtonALabel", "ButtonStart", "ButtonStartLabel", "ButtonL2", "ButtonL2Label", "ButtonL1", "ButtonL1Label", "TriggerL1", "ButtonR2", "ButtonR2Label", "ButtonR1", "ButtonR1Label", "TriggerR1"}]
        2 DUPTABLE                         R1 K29 [{"type", "srcDark", "srcLight"}]
        3 LOADK                            R2 K30 ["Background"]
        4 SETTABLEKS                       R2 R1 K26 ["type"]
        6 LOADK                            R2 K31 ["rbxasset://textures/ControlsEmulator/Quest3_Dark.png"]
        7 SETTABLEKS                       R2 R1 K27 ["srcDark"]
        9 LOADK                            R2 K32 ["rbxasset://textures/ControlsEmulator/Quest3_Light.png"]
       10 SETTABLEKS                       R2 R1 K28 ["srcLight"]
       12 SETTABLEKS                       R1 R0 K0 ["DeviceImage"]
       14 DUPTABLE                         R1 K37 [{"keyCode", "type", "Position", "relativeStickSize", "relativeSocketSize"}]
       15 GETIMPORT                        R2 K41 [Enum.KeyCode.Thumbstick1]
       17 SETTABLEKS                       R2 R1 K33 ["keyCode"]
       19 LOADK                            R2 K42 ["Thumbstick"]
       20 SETTABLEKS                       R2 R1 K26 ["type"]
       22 GETIMPORT                        R2 K45 [UDim2.new]
       24 LOADK                            R3 K46 [0.23]
       25 LOADN                            R4 0
       26 LOADK                            R5 K47 [0.225]
       27 LOADN                            R6 0
       28 CALL                             R2 4 1
       29 SETTABLEKS                       R2 R1 K34 ["Position"]
       31 LOADK                            R2 K48 [0.3]
       32 SETTABLEKS                       R2 R1 K35 ["relativeStickSize"]
       34 LOADK                            R2 K49 [0.15]
       35 SETTABLEKS                       R2 R1 K36 ["relativeSocketSize"]
       37 SETTABLEKS                       R1 R0 K1 ["ThumbstickLeft"]
       39 DUPTABLE                         R1 K58 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "centerKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
       40 LOADK                            R2 K59 ["L Thumbstick Up"]
       41 SETTABLEKS                       R2 R1 K50 ["upKeyName"]
       43 LOADK                            R2 K60 ["L Thumbstick Down"]
       44 SETTABLEKS                       R2 R1 K51 ["downKeyName"]
       46 LOADK                            R2 K61 ["L Thumbstick Left"]
       47 SETTABLEKS                       R2 R1 K52 ["leftKeyName"]
       49 LOADK                            R2 K62 ["L Thumbstick Right"]
       50 SETTABLEKS                       R2 R1 K53 ["rightKeyName"]
       52 LOADK                            R2 K63 ["L Thumbstick Click"]
       53 SETTABLEKS                       R2 R1 K54 ["centerKeyName"]
       55 LOADK                            R2 K64 ["CrossLayoutMappings"]
       56 SETTABLEKS                       R2 R1 K26 ["type"]
       58 LOADK                            R2 K65 ["Left"]
       59 SETTABLEKS                       R2 R1 K55 ["side"]
       61 GETIMPORT                        R2 K45 [UDim2.new]
       63 LOADN                            R3 0
       64 LOADN                            R4 0
       65 LOADK                            R5 K49 [0.15]
       66 LOADN                            R6 0
       67 CALL                             R2 4 1
       68 SETTABLEKS                       R2 R1 K34 ["Position"]
       70 GETIMPORT                        R2 K45 [UDim2.new]
       72 LOADK                            R3 K46 [0.23]
       73 LOADN                            R4 0
       74 LOADK                            R5 K47 [0.225]
       75 LOADN                            R6 0
       76 CALL                             R2 4 1
       77 SETTABLEKS                       R2 R1 K56 ["arrowDestination"]
       79 LOADK                            R2 K66 [0.5]
       80 SETTABLEKS                       R2 R1 K57 ["arrowBendPoint"]
       82 SETTABLEKS                       R1 R0 K2 ["ThumbstickLeftMappings"]
       84 DUPTABLE                         R1 K37 [{"keyCode", "type", "Position", "relativeStickSize", "relativeSocketSize"}]
       85 GETIMPORT                        R2 K68 [Enum.KeyCode.Thumbstick2]
       87 SETTABLEKS                       R2 R1 K33 ["keyCode"]
       89 LOADK                            R2 K42 ["Thumbstick"]
       90 SETTABLEKS                       R2 R1 K26 ["type"]
       92 GETIMPORT                        R2 K45 [UDim2.new]
       94 LOADK                            R3 K69 [0.772]
       95 LOADN                            R4 0
       96 LOADK                            R5 K47 [0.225]
       97 LOADN                            R6 0
       98 CALL                             R2 4 1
       99 SETTABLEKS                       R2 R1 K34 ["Position"]
      101 LOADK                            R2 K48 [0.3]
      102 SETTABLEKS                       R2 R1 K35 ["relativeStickSize"]
      104 LOADK                            R2 K49 [0.15]
      105 SETTABLEKS                       R2 R1 K36 ["relativeSocketSize"]
      107 SETTABLEKS                       R1 R0 K3 ["ThumbstickRight"]
      109 DUPTABLE                         R1 K58 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "centerKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      110 LOADK                            R2 K70 ["R Thumbstick Up"]
      111 SETTABLEKS                       R2 R1 K50 ["upKeyName"]
      113 LOADK                            R2 K71 ["R Thumbstick Down"]
      114 SETTABLEKS                       R2 R1 K51 ["downKeyName"]
      116 LOADK                            R2 K72 ["R Thumbstick Left"]
      117 SETTABLEKS                       R2 R1 K52 ["leftKeyName"]
      119 LOADK                            R2 K73 ["R Thumbstick Right"]
      120 SETTABLEKS                       R2 R1 K53 ["rightKeyName"]
      122 LOADK                            R2 K74 ["R Thumbstick Click"]
      123 SETTABLEKS                       R2 R1 K54 ["centerKeyName"]
      125 LOADK                            R2 K64 ["CrossLayoutMappings"]
      126 SETTABLEKS                       R2 R1 K26 ["type"]
      128 LOADK                            R2 K75 ["Right"]
      129 SETTABLEKS                       R2 R1 K55 ["side"]
      131 GETIMPORT                        R2 K45 [UDim2.new]
      133 LOADN                            R3 1
      134 LOADN                            R4 0
      135 LOADK                            R5 K49 [0.15]
      136 LOADN                            R6 0
      137 CALL                             R2 4 1
      138 SETTABLEKS                       R2 R1 K34 ["Position"]
      140 GETIMPORT                        R2 K45 [UDim2.new]
      142 LOADK                            R3 K69 [0.772]
      143 LOADN                            R4 0
      144 LOADK                            R5 K47 [0.225]
      145 LOADN                            R6 0
      146 CALL                             R2 4 1
      147 SETTABLEKS                       R2 R1 K56 ["arrowDestination"]
      149 LOADK                            R2 K76 [0.6]
      150 SETTABLEKS                       R2 R1 K57 ["arrowBendPoint"]
      152 SETTABLEKS                       R1 R0 K4 ["ThumbstickRightMappings"]
      154 DUPTABLE                         R1 K78 [{"keyCode", "type", "Position", "Size"}]
      155 GETIMPORT                        R2 K79 [Enum.KeyCode.ButtonX]
      157 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      159 LOADK                            R2 K80 ["Button"]
      160 SETTABLEKS                       R2 R1 K26 ["type"]
      162 GETIMPORT                        R2 K45 [UDim2.new]
      164 LOADK                            R3 K81 [0.215]
      165 LOADN                            R4 0
      166 LOADK                            R5 K48 [0.3]
      167 LOADN                            R6 0
      168 CALL                             R2 4 1
      169 SETTABLEKS                       R2 R1 K34 ["Position"]
      171 GETIMPORT                        R2 K45 [UDim2.new]
      173 LOADK                            R3 K82 [0.046]
      174 LOADN                            R4 0
      175 LOADK                            R5 K82 [0.046]
      176 LOADN                            R6 0
      177 CALL                             R2 4 1
      178 SETTABLEKS                       R2 R1 K77 ["Size"]
      180 SETTABLEKS                       R1 R0 K5 ["ButtonX"]
      182 DUPTABLE                         R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      183 LOADK                            R2 K85 ["X"]
      184 SETTABLEKS                       R2 R1 K83 ["keyName"]
      186 LOADK                            R2 K86 ["ButtonMapping"]
      187 SETTABLEKS                       R2 R1 K26 ["type"]
      189 LOADK                            R2 K65 ["Left"]
      190 SETTABLEKS                       R2 R1 K55 ["side"]
      192 GETIMPORT                        R2 K45 [UDim2.new]
      194 LOADK                            R3 K87 [0.08]
      195 LOADN                            R4 0
      196 LOADK                            R5 K88 [0.4]
      197 LOADN                            R6 0
      198 CALL                             R2 4 1
      199 SETTABLEKS                       R2 R1 K34 ["Position"]
      201 GETIMPORT                        R2 K45 [UDim2.new]
      203 LOADK                            R3 K81 [0.215]
      204 LOADN                            R4 0
      205 LOADK                            R5 K89 [0.318]
      206 LOADN                            R6 0
      207 CALL                             R2 4 1
      208 SETTABLEKS                       R2 R1 K56 ["arrowDestination"]
      210 LOADN                            R2 1
      211 SETTABLEKS                       R2 R1 K57 ["arrowBendPoint"]
      213 SETTABLEKS                       R1 R0 K6 ["ButtonXLabel"]
      215 DUPTABLE                         R1 K78 [{"keyCode", "type", "Position", "Size"}]
      216 GETIMPORT                        R2 K90 [Enum.KeyCode.ButtonY]
      218 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      220 LOADK                            R2 K80 ["Button"]
      221 SETTABLEKS                       R2 R1 K26 ["type"]
      223 GETIMPORT                        R2 K45 [UDim2.new]
      225 LOADK                            R3 K91 [0.29]
      226 LOADN                            R4 0
      227 LOADK                            R5 K92 [0.267]
      228 LOADN                            R6 0
      229 CALL                             R2 4 1
      230 SETTABLEKS                       R2 R1 K34 ["Position"]
      232 GETIMPORT                        R2 K45 [UDim2.new]
      234 LOADK                            R3 K82 [0.046]
      235 LOADN                            R4 0
      236 LOADK                            R5 K82 [0.046]
      237 LOADN                            R6 0
      238 CALL                             R2 4 1
      239 SETTABLEKS                       R2 R1 K77 ["Size"]
      241 SETTABLEKS                       R1 R0 K7 ["ButtonY"]
      243 DUPTABLE                         R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      244 LOADK                            R2 K93 ["Y"]
      245 SETTABLEKS                       R2 R1 K83 ["keyName"]
      247 LOADK                            R2 K86 ["ButtonMapping"]
      248 SETTABLEKS                       R2 R1 K26 ["type"]
      250 LOADK                            R2 K65 ["Left"]
      251 SETTABLEKS                       R2 R1 K55 ["side"]
      253 GETIMPORT                        R2 K45 [UDim2.new]
      255 LOADN                            R3 0
      256 LOADN                            R4 0
      257 LOADK                            R5 K94 [0.79]
      258 LOADN                            R6 0
      259 CALL                             R2 4 1
      260 SETTABLEKS                       R2 R1 K34 ["Position"]
      262 GETIMPORT                        R2 K45 [UDim2.new]
      264 LOADK                            R3 K91 [0.29]
      265 LOADN                            R4 0
      266 LOADK                            R5 K95 [0.285]
      267 LOADN                            R6 0
      268 CALL                             R2 4 1
      269 SETTABLEKS                       R2 R1 K56 ["arrowDestination"]
      271 LOADN                            R2 1
      272 SETTABLEKS                       R2 R1 K57 ["arrowBendPoint"]
      274 SETTABLEKS                       R1 R0 K8 ["ButtonYLabel"]
      276 DUPTABLE                         R1 K78 [{"keyCode", "type", "Position", "Size"}]
      277 GETIMPORT                        R2 K96 [Enum.KeyCode.ButtonB]
      279 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      281 LOADK                            R2 K80 ["Button"]
      282 SETTABLEKS                       R2 R1 K26 ["type"]
      284 GETIMPORT                        R2 K45 [UDim2.new]
      286 LOADK                            R3 K97 [0.71]
      287 LOADN                            R4 0
      288 LOADK                            R5 K98 [0.27]
      289 LOADN                            R6 0
      290 CALL                             R2 4 1
      291 SETTABLEKS                       R2 R1 K34 ["Position"]
      293 GETIMPORT                        R2 K45 [UDim2.new]
      295 LOADK                            R3 K99 [0.051]
      296 LOADN                            R4 0
      297 LOADK                            R5 K99 [0.051]
      298 LOADN                            R6 0
      299 CALL                             R2 4 1
      300 SETTABLEKS                       R2 R1 K77 ["Size"]
      302 SETTABLEKS                       R1 R0 K9 ["ButtonB"]
      304 DUPTABLE                         R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      305 LOADK                            R2 K100 ["B"]
      306 SETTABLEKS                       R2 R1 K83 ["keyName"]
      308 LOADK                            R2 K86 ["ButtonMapping"]
      309 SETTABLEKS                       R2 R1 K26 ["type"]
      311 LOADK                            R2 K75 ["Right"]
      312 SETTABLEKS                       R2 R1 K55 ["side"]
      314 GETIMPORT                        R2 K45 [UDim2.new]
      316 LOADN                            R3 1
      317 LOADN                            R4 0
      318 LOADK                            R5 K94 [0.79]
      319 LOADN                            R6 0
      320 CALL                             R2 4 1
      321 SETTABLEKS                       R2 R1 K34 ["Position"]
      323 GETIMPORT                        R2 K45 [UDim2.new]
      325 LOADK                            R3 K97 [0.71]
      326 LOADN                            R4 0
      327 LOADK                            R5 K101 [0.288]
      328 LOADN                            R6 0
      329 CALL                             R2 4 1
      330 SETTABLEKS                       R2 R1 K56 ["arrowDestination"]
      332 LOADN                            R2 1
      333 SETTABLEKS                       R2 R1 K57 ["arrowBendPoint"]
      335 SETTABLEKS                       R1 R0 K10 ["ButtonBLabel"]
      337 DUPTABLE                         R1 K78 [{"keyCode", "type", "Position", "Size"}]
      338 GETIMPORT                        R2 K102 [Enum.KeyCode.ButtonA]
      340 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      342 LOADK                            R2 K80 ["Button"]
      343 SETTABLEKS                       R2 R1 K26 ["type"]
      345 GETIMPORT                        R2 K45 [UDim2.new]
      347 LOADK                            R3 K103 [0.78]
      348 LOADN                            R4 0
      349 LOADK                            R5 K48 [0.3]
      350 LOADN                            R6 0
      351 CALL                             R2 4 1
      352 SETTABLEKS                       R2 R1 K34 ["Position"]
      354 GETIMPORT                        R2 K45 [UDim2.new]
      356 LOADK                            R3 K82 [0.046]
      357 LOADN                            R4 0
      358 LOADK                            R5 K82 [0.046]
      359 LOADN                            R6 0
      360 CALL                             R2 4 1
      361 SETTABLEKS                       R2 R1 K77 ["Size"]
      363 SETTABLEKS                       R1 R0 K11 ["ButtonA"]
      365 DUPTABLE                         R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      366 LOADK                            R2 K104 ["A"]
      367 SETTABLEKS                       R2 R1 K83 ["keyName"]
      369 LOADK                            R2 K86 ["ButtonMapping"]
      370 SETTABLEKS                       R2 R1 K26 ["type"]
      372 LOADK                            R2 K75 ["Right"]
      373 SETTABLEKS                       R2 R1 K55 ["side"]
      375 GETIMPORT                        R2 K45 [UDim2.new]
      377 LOADK                            R3 K105 [0.92]
      378 LOADN                            R4 0
      379 LOADK                            R5 K88 [0.4]
      380 LOADN                            R6 0
      381 CALL                             R2 4 1
      382 SETTABLEKS                       R2 R1 K34 ["Position"]
      384 GETIMPORT                        R2 K45 [UDim2.new]
      386 LOADK                            R3 K103 [0.78]
      387 LOADN                            R4 0
      388 LOADK                            R5 K89 [0.318]
      389 LOADN                            R6 0
      390 CALL                             R2 4 1
      391 SETTABLEKS                       R2 R1 K56 ["arrowDestination"]
      393 LOADN                            R2 1
      394 SETTABLEKS                       R2 R1 K57 ["arrowBendPoint"]
      396 SETTABLEKS                       R1 R0 K12 ["ButtonALabel"]
      398 DUPTABLE                         R1 K78 [{"keyCode", "type", "Position", "Size"}]
      399 GETIMPORT                        R2 K106 [Enum.KeyCode.ButtonStart]
      401 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      403 LOADK                            R2 K80 ["Button"]
      404 SETTABLEKS                       R2 R1 K26 ["type"]
      406 GETIMPORT                        R2 K45 [UDim2.new]
      408 LOADK                            R3 K107 [0.165]
      409 LOADN                            R4 0
      410 LOADK                            R5 K48 [0.3]
      411 LOADN                            R6 0
      412 CALL                             R2 4 1
      413 SETTABLEKS                       R2 R1 K34 ["Position"]
      415 GETIMPORT                        R2 K45 [UDim2.new]
      417 LOADK                            R3 K108 [0.035]
      418 LOADN                            R4 0
      419 LOADK                            R5 K108 [0.035]
      420 LOADN                            R6 0
      421 CALL                             R2 4 1
      422 SETTABLEKS                       R2 R1 K77 ["Size"]
      424 SETTABLEKS                       R1 R0 K13 ["ButtonStart"]
      426 DUPTABLE                         R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      427 LOADK                            R2 K109 ["Start"]
      428 SETTABLEKS                       R2 R1 K83 ["keyName"]
      430 LOADK                            R2 K86 ["ButtonMapping"]
      431 SETTABLEKS                       R2 R1 K26 ["type"]
      433 LOADK                            R2 K65 ["Left"]
      434 SETTABLEKS                       R2 R1 K55 ["side"]
      436 GETIMPORT                        R2 K45 [UDim2.new]
      438 LOADK                            R3 K87 [0.08]
      439 LOADN                            R4 0
      440 LOADK                            R5 K48 [0.3]
      441 LOADN                            R6 0
      442 CALL                             R2 4 1
      443 SETTABLEKS                       R2 R1 K34 ["Position"]
      445 GETIMPORT                        R2 K45 [UDim2.new]
      447 LOADK                            R3 K49 [0.15]
      448 LOADN                            R4 0
      449 LOADK                            R5 K48 [0.3]
      450 LOADN                            R6 0
      451 CALL                             R2 4 1
      452 SETTABLEKS                       R2 R1 K56 ["arrowDestination"]
      454 LOADK                            R2 K110 [0.75]
      455 SETTABLEKS                       R2 R1 K57 ["arrowBendPoint"]
      457 SETTABLEKS                       R1 R0 K14 ["ButtonStartLabel"]
      459 DUPTABLE                         R1 K78 [{"keyCode", "type", "Position", "Size"}]
      460 GETIMPORT                        R2 K111 [Enum.KeyCode.ButtonL2]
      462 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      464 LOADK                            R2 K80 ["Button"]
      465 SETTABLEKS                       R2 R1 K26 ["type"]
      467 GETIMPORT                        R2 K45 [UDim2.new]
      469 LOADK                            R3 K88 [0.4]
      470 LOADN                            R4 0
      471 LOADK                            R5 K112 [0.33]
      472 LOADN                            R6 0
      473 CALL                             R2 4 1
      474 SETTABLEKS                       R2 R1 K34 ["Position"]
      476 GETIMPORT                        R2 K45 [UDim2.new]
      478 LOADK                            R3 K113 [0.04]
      479 LOADN                            R4 0
      480 LOADK                            R5 K114 [0.1]
      481 LOADN                            R6 0
      482 CALL                             R2 4 1
      483 SETTABLEKS                       R2 R1 K77 ["Size"]
      485 SETTABLEKS                       R1 R0 K15 ["ButtonL2"]
      487 DUPTABLE                         R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      488 LOADK                            R2 K115 ["L2"]
      489 SETTABLEKS                       R2 R1 K83 ["keyName"]
      491 LOADK                            R2 K86 ["ButtonMapping"]
      492 SETTABLEKS                       R2 R1 K26 ["type"]
      494 LOADK                            R2 K65 ["Left"]
      495 SETTABLEKS                       R2 R1 K55 ["side"]
      497 GETIMPORT                        R2 K45 [UDim2.new]
      499 LOADK                            R3 K88 [0.4]
      500 LOADN                            R4 0
      501 LOADK                            R5 K66 [0.5]
      502 LOADN                            R6 0
      503 CALL                             R2 4 1
      504 SETTABLEKS                       R2 R1 K34 ["Position"]
      506 GETIMPORT                        R2 K45 [UDim2.new]
      508 LOADK                            R3 K116 [0.42]
      509 LOADN                            R4 0
      510 LOADK                            R5 K117 [0.35]
      511 LOADN                            R6 0
      512 CALL                             R2 4 1
      513 SETTABLEKS                       R2 R1 K56 ["arrowDestination"]
      515 LOADN                            R2 1
      516 SETTABLEKS                       R2 R1 K57 ["arrowBendPoint"]
      518 SETTABLEKS                       R1 R0 K16 ["ButtonL2Label"]
      520 DUPTABLE                         R1 K78 [{"keyCode", "type", "Position", "Size"}]
      521 GETIMPORT                        R2 K118 [Enum.KeyCode.ButtonL1]
      523 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      525 LOADK                            R2 K80 ["Button"]
      526 SETTABLEKS                       R2 R1 K26 ["type"]
      528 GETIMPORT                        R2 K45 [UDim2.new]
      530 LOADK                            R3 K119 [0.217]
      531 LOADN                            R4 0
      532 LOADK                            R5 K120 [0.48]
      533 LOADN                            R6 0
      534 CALL                             R2 4 1
      535 SETTABLEKS                       R2 R1 K34 ["Position"]
      537 GETIMPORT                        R2 K45 [UDim2.new]
      539 LOADK                            R3 K121 [0.12]
      540 LOADN                            R4 0
      541 LOADK                            R5 K122 [0.07]
      542 LOADN                            R6 0
      543 CALL                             R2 4 1
      544 SETTABLEKS                       R2 R1 K77 ["Size"]
      546 SETTABLEKS                       R1 R0 K17 ["ButtonL1"]
      548 DUPTABLE                         R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      549 LOADK                            R2 K123 ["L1"]
      550 SETTABLEKS                       R2 R1 K83 ["keyName"]
      552 LOADK                            R2 K86 ["ButtonMapping"]
      553 SETTABLEKS                       R2 R1 K26 ["type"]
      555 LOADK                            R2 K65 ["Left"]
      556 SETTABLEKS                       R2 R1 K55 ["side"]
      558 GETIMPORT                        R2 K45 [UDim2.new]
      560 LOADK                            R3 K124 [0.05]
      561 LOADN                            R4 0
      562 LOADK                            R5 K66 [0.5]
      563 LOADN                            R6 0
      564 CALL                             R2 4 1
      565 SETTABLEKS                       R2 R1 K34 ["Position"]
      567 GETIMPORT                        R2 K45 [UDim2.new]
      569 LOADK                            R3 K119 [0.217]
      570 LOADN                            R4 0
      571 LOADK                            R5 K120 [0.48]
      572 LOADN                            R6 0
      573 CALL                             R2 4 1
      574 SETTABLEKS                       R2 R1 K56 ["arrowDestination"]
      576 LOADN                            R2 0
      577 SETTABLEKS                       R2 R1 K57 ["arrowBendPoint"]
      579 SETTABLEKS                       R1 R0 K18 ["ButtonL1Label"]
      581 DUPTABLE                         R1 K78 [{"keyCode", "type", "Position", "Size"}]
      582 GETIMPORT                        R2 K118 [Enum.KeyCode.ButtonL1]
      584 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      586 LOADK                            R2 K125 ["Trigger"]
      587 SETTABLEKS                       R2 R1 K26 ["type"]
      589 GETIMPORT                        R2 K45 [UDim2.new]
      591 LOADK                            R3 K126 [0.43]
      592 LOADN                            R4 0
      593 LOADK                            R5 K113 [0.04]
      594 LOADN                            R6 0
      595 CALL                             R2 4 1
      596 SETTABLEKS                       R2 R1 K34 ["Position"]
      598 GETIMPORT                        R2 K45 [UDim2.new]
      600 LOADK                            R3 K127 [0.069]
      601 LOADN                            R4 0
      602 LOADK                            R5 K114 [0.1]
      603 LOADN                            R6 0
      604 CALL                             R2 4 1
      605 SETTABLEKS                       R2 R1 K77 ["Size"]
      607 SETTABLEKS                       R1 R0 K19 ["TriggerL1"]
      609 DUPTABLE                         R1 K78 [{"keyCode", "type", "Position", "Size"}]
      610 GETIMPORT                        R2 K128 [Enum.KeyCode.ButtonR2]
      612 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      614 LOADK                            R2 K80 ["Button"]
      615 SETTABLEKS                       R2 R1 K26 ["type"]
      617 GETIMPORT                        R2 K45 [UDim2.new]
      619 LOADK                            R3 K129 [0.59]
      620 LOADN                            R4 0
      621 LOADK                            R5 K112 [0.33]
      622 LOADN                            R6 0
      623 CALL                             R2 4 1
      624 SETTABLEKS                       R2 R1 K34 ["Position"]
      626 GETIMPORT                        R2 K45 [UDim2.new]
      628 LOADK                            R3 K113 [0.04]
      629 LOADN                            R4 0
      630 LOADK                            R5 K114 [0.1]
      631 LOADN                            R6 0
      632 CALL                             R2 4 1
      633 SETTABLEKS                       R2 R1 K77 ["Size"]
      635 SETTABLEKS                       R1 R0 K20 ["ButtonR2"]
      637 DUPTABLE                         R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      638 LOADK                            R2 K130 ["R2"]
      639 SETTABLEKS                       R2 R1 K83 ["keyName"]
      641 LOADK                            R2 K86 ["ButtonMapping"]
      642 SETTABLEKS                       R2 R1 K26 ["type"]
      644 LOADK                            R2 K75 ["Right"]
      645 SETTABLEKS                       R2 R1 K55 ["side"]
      647 GETIMPORT                        R2 K45 [UDim2.new]
      649 LOADK                            R3 K131 [0.595]
      650 LOADN                            R4 0
      651 LOADK                            R5 K66 [0.5]
      652 LOADN                            R6 0
      653 CALL                             R2 4 1
      654 SETTABLEKS                       R2 R1 K34 ["Position"]
      656 GETIMPORT                        R2 K45 [UDim2.new]
      658 LOADK                            R3 K132 [0.575]
      659 LOADN                            R4 0
      660 LOADK                            R5 K117 [0.35]
      661 LOADN                            R6 0
      662 CALL                             R2 4 1
      663 SETTABLEKS                       R2 R1 K56 ["arrowDestination"]
      665 LOADN                            R2 1
      666 SETTABLEKS                       R2 R1 K57 ["arrowBendPoint"]
      668 SETTABLEKS                       R1 R0 K21 ["ButtonR2Label"]
      670 DUPTABLE                         R1 K78 [{"keyCode", "type", "Position", "Size"}]
      671 GETIMPORT                        R2 K133 [Enum.KeyCode.ButtonR1]
      673 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      675 LOADK                            R2 K80 ["Button"]
      676 SETTABLEKS                       R2 R1 K26 ["type"]
      678 GETIMPORT                        R2 K45 [UDim2.new]
      680 LOADK                            R3 K134 [0.788]
      681 LOADN                            R4 0
      682 LOADK                            R5 K120 [0.48]
      683 LOADN                            R6 0
      684 CALL                             R2 4 1
      685 SETTABLEKS                       R2 R1 K34 ["Position"]
      687 GETIMPORT                        R2 K45 [UDim2.new]
      689 LOADK                            R3 K121 [0.12]
      690 LOADN                            R4 0
      691 LOADK                            R5 K122 [0.07]
      692 LOADN                            R6 0
      693 CALL                             R2 4 1
      694 SETTABLEKS                       R2 R1 K77 ["Size"]
      696 SETTABLEKS                       R1 R0 K22 ["ButtonR1"]
      698 DUPTABLE                         R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
      699 LOADK                            R2 K135 ["R1"]
      700 SETTABLEKS                       R2 R1 K83 ["keyName"]
      702 LOADK                            R2 K86 ["ButtonMapping"]
      703 SETTABLEKS                       R2 R1 K26 ["type"]
      705 LOADK                            R2 K75 ["Right"]
      706 SETTABLEKS                       R2 R1 K55 ["side"]
      708 GETIMPORT                        R2 K45 [UDim2.new]
      710 LOADK                            R3 K136 [0.95]
      711 LOADN                            R4 0
      712 LOADK                            R5 K66 [0.5]
      713 LOADN                            R6 0
      714 CALL                             R2 4 1
      715 SETTABLEKS                       R2 R1 K34 ["Position"]
      717 GETIMPORT                        R2 K45 [UDim2.new]
      719 LOADK                            R3 K134 [0.788]
      720 LOADN                            R4 0
      721 LOADK                            R5 K120 [0.48]
      722 LOADN                            R6 0
      723 CALL                             R2 4 1
      724 SETTABLEKS                       R2 R1 K56 ["arrowDestination"]
      726 LOADK                            R2 K137 [0.7]
      727 SETTABLEKS                       R2 R1 K57 ["arrowBendPoint"]
      729 SETTABLEKS                       R1 R0 K23 ["ButtonR1Label"]
      731 DUPTABLE                         R1 K78 [{"keyCode", "type", "Position", "Size"}]
      732 GETIMPORT                        R2 K133 [Enum.KeyCode.ButtonR1]
      734 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      736 LOADK                            R2 K125 ["Trigger"]
      737 SETTABLEKS                       R2 R1 K26 ["type"]
      739 GETIMPORT                        R2 K45 [UDim2.new]
      741 LOADK                            R3 K138 [0.57]
      742 LOADN                            R4 0
      743 LOADK                            R5 K113 [0.04]
      744 LOADN                            R6 0
      745 CALL                             R2 4 1
      746 SETTABLEKS                       R2 R1 K34 ["Position"]
      748 GETIMPORT                        R2 K45 [UDim2.new]
      750 LOADK                            R3 K127 [0.069]
      751 LOADN                            R4 0
      752 LOADK                            R5 K114 [0.1]
      753 LOADN                            R6 0
      754 CALL                             R2 4 1
      755 SETTABLEKS                       R2 R1 K77 ["Size"]
      757 SETTABLEKS                       R1 R0 K24 ["TriggerR1"]
      759 RETURN                           R0 1
