MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K25 [{"DeviceImage", "ThumbstickLeft", "ThumbstickLeftMappings", "ThumbstickRight", "ThumbstickRightMappings", "ButtonX", "ButtonXLabel", "ButtonY", "ButtonYLabel", "ButtonB", "ButtonBLabel", "ButtonA", "ButtonALabel", "ButtonStart", "ButtonStartLabel", "ButtonL2", "ButtonL2Label", "ButtonL1", "ButtonL1Label", "TriggerL1", "ButtonR2", "ButtonR2Label", "ButtonR1", "ButtonR1Label", "TriggerR1"}]
        2 DUPTABLE                         R1 K32 [{["type"] = "Background", ["srcDark"] = "rbxasset://textures/ControlsEmulator/Quest3_Dark.png", ["srcLight"] = "rbxasset://textures/ControlsEmulator/Quest3_Light.png"}]
        3 SETTABLEKS                       R1 R0 K0 ["DeviceImage"]
        5 DUPTABLE                         R1 K40 [{["keyCode"], ["type"] = "Thumbstick", ["Position"], ["relativeStickSize"] = 0.3, ["relativeSocketSize"] = 0.15}]
        6 GETIMPORT                        R2 K44 [Enum.KeyCode.Thumbstick1]
        8 SETTABLEKS                       R2 R1 K33 ["keyCode"]
       10 GETIMPORT                        R2 K47 [UDim2.new]
       12 LOADK                            R3 K48 [0.23]
       13 LOADN                            R4 0
       14 LOADK                            R5 K49 [0.225]
       15 LOADN                            R6 0
       16 CALL                             R2 4 1
       17 SETTABLEKS                       R2 R1 K35 ["Position"]
       19 SETTABLEKS                       R1 R0 K1 ["ThumbstickLeft"]
       21 DUPTABLE                         R1 K66 [{["upKeyName"] = "L Thumbstick Up", ["downKeyName"] = "L Thumbstick Down", ["leftKeyName"] = "L Thumbstick Left", ["rightKeyName"] = "L Thumbstick Right", ["centerKeyName"] = "L Thumbstick Click", ["type"] = "CrossLayoutMappings", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.5}]
       22 GETIMPORT                        R2 K47 [UDim2.new]
       24 LOADN                            R3 0
       25 LOADN                            R4 0
       26 LOADK                            R5 K39 [0.15]
       27 LOADN                            R6 0
       28 CALL                             R2 4 1
       29 SETTABLEKS                       R2 R1 K35 ["Position"]
       31 GETIMPORT                        R2 K47 [UDim2.new]
       33 LOADK                            R3 K48 [0.23]
       34 LOADN                            R4 0
       35 LOADK                            R5 K49 [0.225]
       36 LOADN                            R6 0
       37 CALL                             R2 4 1
       38 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
       40 SETTABLEKS                       R1 R0 K2 ["ThumbstickLeftMappings"]
       42 DUPTABLE                         R1 K40 [{["keyCode"], ["type"] = "Thumbstick", ["Position"], ["relativeStickSize"] = 0.3, ["relativeSocketSize"] = 0.15}]
       43 GETIMPORT                        R2 K68 [Enum.KeyCode.Thumbstick2]
       45 SETTABLEKS                       R2 R1 K33 ["keyCode"]
       47 GETIMPORT                        R2 K47 [UDim2.new]
       49 LOADK                            R3 K69 [0.772]
       50 LOADN                            R4 0
       51 LOADK                            R5 K49 [0.225]
       52 LOADN                            R6 0
       53 CALL                             R2 4 1
       54 SETTABLEKS                       R2 R1 K35 ["Position"]
       56 SETTABLEKS                       R1 R0 K3 ["ThumbstickRight"]
       58 DUPTABLE                         R1 K77 [{["upKeyName"] = "R Thumbstick Up", ["downKeyName"] = "R Thumbstick Down", ["leftKeyName"] = "R Thumbstick Left", ["rightKeyName"] = "R Thumbstick Right", ["centerKeyName"] = "R Thumbstick Click", ["type"] = "CrossLayoutMappings", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.6}]
       59 GETIMPORT                        R2 K47 [UDim2.new]
       61 LOADN                            R3 1
       62 LOADN                            R4 0
       63 LOADK                            R5 K39 [0.15]
       64 LOADN                            R6 0
       65 CALL                             R2 4 1
       66 SETTABLEKS                       R2 R1 K35 ["Position"]
       68 GETIMPORT                        R2 K47 [UDim2.new]
       70 LOADK                            R3 K69 [0.772]
       71 LOADN                            R4 0
       72 LOADK                            R5 K49 [0.225]
       73 LOADN                            R6 0
       74 CALL                             R2 4 1
       75 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
       77 SETTABLEKS                       R1 R0 K4 ["ThumbstickRightMappings"]
       79 DUPTABLE                         R1 K80 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
       80 GETIMPORT                        R2 K81 [Enum.KeyCode.ButtonX]
       82 SETTABLEKS                       R2 R1 K33 ["keyCode"]
       84 GETIMPORT                        R2 K47 [UDim2.new]
       86 LOADK                            R3 K82 [0.215]
       87 LOADN                            R4 0
       88 LOADK                            R5 K37 [0.3]
       89 LOADN                            R6 0
       90 CALL                             R2 4 1
       91 SETTABLEKS                       R2 R1 K35 ["Position"]
       93 GETIMPORT                        R2 K47 [UDim2.new]
       95 LOADK                            R3 K83 [0.046]
       96 LOADN                            R4 0
       97 LOADK                            R5 K83 [0.046]
       98 LOADN                            R6 0
       99 CALL                             R2 4 1
      100 SETTABLEKS                       R2 R1 K79 ["Size"]
      102 SETTABLEKS                       R1 R0 K5 ["ButtonX"]
      104 DUPTABLE                         R1 K88 [{["keyName"] = "X", ["type"] = "ButtonMapping", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 1}]
      105 GETIMPORT                        R2 K47 [UDim2.new]
      107 LOADK                            R3 K89 [0.08]
      108 LOADN                            R4 0
      109 LOADK                            R5 K90 [0.4]
      110 LOADN                            R6 0
      111 CALL                             R2 4 1
      112 SETTABLEKS                       R2 R1 K35 ["Position"]
      114 GETIMPORT                        R2 K47 [UDim2.new]
      116 LOADK                            R3 K82 [0.215]
      117 LOADN                            R4 0
      118 LOADK                            R5 K91 [0.318]
      119 LOADN                            R6 0
      120 CALL                             R2 4 1
      121 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      123 SETTABLEKS                       R1 R0 K6 ["ButtonXLabel"]
      125 DUPTABLE                         R1 K80 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      126 GETIMPORT                        R2 K92 [Enum.KeyCode.ButtonY]
      128 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      130 GETIMPORT                        R2 K47 [UDim2.new]
      132 LOADK                            R3 K93 [0.29]
      133 LOADN                            R4 0
      134 LOADK                            R5 K94 [0.267]
      135 LOADN                            R6 0
      136 CALL                             R2 4 1
      137 SETTABLEKS                       R2 R1 K35 ["Position"]
      139 GETIMPORT                        R2 K47 [UDim2.new]
      141 LOADK                            R3 K83 [0.046]
      142 LOADN                            R4 0
      143 LOADK                            R5 K83 [0.046]
      144 LOADN                            R6 0
      145 CALL                             R2 4 1
      146 SETTABLEKS                       R2 R1 K79 ["Size"]
      148 SETTABLEKS                       R1 R0 K7 ["ButtonY"]
      150 DUPTABLE                         R1 K96 [{["keyName"] = "Y", ["type"] = "ButtonMapping", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 1}]
      151 GETIMPORT                        R2 K47 [UDim2.new]
      153 LOADN                            R3 0
      154 LOADN                            R4 0
      155 LOADK                            R5 K97 [0.79]
      156 LOADN                            R6 0
      157 CALL                             R2 4 1
      158 SETTABLEKS                       R2 R1 K35 ["Position"]
      160 GETIMPORT                        R2 K47 [UDim2.new]
      162 LOADK                            R3 K93 [0.29]
      163 LOADN                            R4 0
      164 LOADK                            R5 K98 [0.285]
      165 LOADN                            R6 0
      166 CALL                             R2 4 1
      167 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      169 SETTABLEKS                       R1 R0 K8 ["ButtonYLabel"]
      171 DUPTABLE                         R1 K80 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      172 GETIMPORT                        R2 K99 [Enum.KeyCode.ButtonB]
      174 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      176 GETIMPORT                        R2 K47 [UDim2.new]
      178 LOADK                            R3 K100 [0.71]
      179 LOADN                            R4 0
      180 LOADK                            R5 K101 [0.27]
      181 LOADN                            R6 0
      182 CALL                             R2 4 1
      183 SETTABLEKS                       R2 R1 K35 ["Position"]
      185 GETIMPORT                        R2 K47 [UDim2.new]
      187 LOADK                            R3 K102 [0.051]
      188 LOADN                            R4 0
      189 LOADK                            R5 K102 [0.051]
      190 LOADN                            R6 0
      191 CALL                             R2 4 1
      192 SETTABLEKS                       R2 R1 K79 ["Size"]
      194 SETTABLEKS                       R1 R0 K9 ["ButtonB"]
      196 DUPTABLE                         R1 K104 [{["keyName"] = "B", ["type"] = "ButtonMapping", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 1}]
      197 GETIMPORT                        R2 K47 [UDim2.new]
      199 LOADN                            R3 1
      200 LOADN                            R4 0
      201 LOADK                            R5 K97 [0.79]
      202 LOADN                            R6 0
      203 CALL                             R2 4 1
      204 SETTABLEKS                       R2 R1 K35 ["Position"]
      206 GETIMPORT                        R2 K47 [UDim2.new]
      208 LOADK                            R3 K100 [0.71]
      209 LOADN                            R4 0
      210 LOADK                            R5 K105 [0.288]
      211 LOADN                            R6 0
      212 CALL                             R2 4 1
      213 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      215 SETTABLEKS                       R1 R0 K10 ["ButtonBLabel"]
      217 DUPTABLE                         R1 K80 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      218 GETIMPORT                        R2 K106 [Enum.KeyCode.ButtonA]
      220 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      222 GETIMPORT                        R2 K47 [UDim2.new]
      224 LOADK                            R3 K107 [0.78]
      225 LOADN                            R4 0
      226 LOADK                            R5 K37 [0.3]
      227 LOADN                            R6 0
      228 CALL                             R2 4 1
      229 SETTABLEKS                       R2 R1 K35 ["Position"]
      231 GETIMPORT                        R2 K47 [UDim2.new]
      233 LOADK                            R3 K83 [0.046]
      234 LOADN                            R4 0
      235 LOADK                            R5 K83 [0.046]
      236 LOADN                            R6 0
      237 CALL                             R2 4 1
      238 SETTABLEKS                       R2 R1 K79 ["Size"]
      240 SETTABLEKS                       R1 R0 K11 ["ButtonA"]
      242 DUPTABLE                         R1 K109 [{["keyName"] = "A", ["type"] = "ButtonMapping", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 1}]
      243 GETIMPORT                        R2 K47 [UDim2.new]
      245 LOADK                            R3 K110 [0.92]
      246 LOADN                            R4 0
      247 LOADK                            R5 K90 [0.4]
      248 LOADN                            R6 0
      249 CALL                             R2 4 1
      250 SETTABLEKS                       R2 R1 K35 ["Position"]
      252 GETIMPORT                        R2 K47 [UDim2.new]
      254 LOADK                            R3 K107 [0.78]
      255 LOADN                            R4 0
      256 LOADK                            R5 K91 [0.318]
      257 LOADN                            R6 0
      258 CALL                             R2 4 1
      259 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      261 SETTABLEKS                       R1 R0 K12 ["ButtonALabel"]
      263 DUPTABLE                         R1 K80 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      264 GETIMPORT                        R2 K111 [Enum.KeyCode.ButtonStart]
      266 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      268 GETIMPORT                        R2 K47 [UDim2.new]
      270 LOADK                            R3 K112 [0.165]
      271 LOADN                            R4 0
      272 LOADK                            R5 K37 [0.3]
      273 LOADN                            R6 0
      274 CALL                             R2 4 1
      275 SETTABLEKS                       R2 R1 K35 ["Position"]
      277 GETIMPORT                        R2 K47 [UDim2.new]
      279 LOADK                            R3 K113 [0.035]
      280 LOADN                            R4 0
      281 LOADK                            R5 K113 [0.035]
      282 LOADN                            R6 0
      283 CALL                             R2 4 1
      284 SETTABLEKS                       R2 R1 K79 ["Size"]
      286 SETTABLEKS                       R1 R0 K13 ["ButtonStart"]
      288 DUPTABLE                         R1 K116 [{["keyName"] = "Start", ["type"] = "ButtonMapping", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.75}]
      289 GETIMPORT                        R2 K47 [UDim2.new]
      291 LOADK                            R3 K89 [0.08]
      292 LOADN                            R4 0
      293 LOADK                            R5 K37 [0.3]
      294 LOADN                            R6 0
      295 CALL                             R2 4 1
      296 SETTABLEKS                       R2 R1 K35 ["Position"]
      298 GETIMPORT                        R2 K47 [UDim2.new]
      300 LOADK                            R3 K39 [0.15]
      301 LOADN                            R4 0
      302 LOADK                            R5 K37 [0.3]
      303 LOADN                            R6 0
      304 CALL                             R2 4 1
      305 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      307 SETTABLEKS                       R1 R0 K14 ["ButtonStartLabel"]
      309 DUPTABLE                         R1 K80 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      310 GETIMPORT                        R2 K117 [Enum.KeyCode.ButtonL2]
      312 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      314 GETIMPORT                        R2 K47 [UDim2.new]
      316 LOADK                            R3 K90 [0.4]
      317 LOADN                            R4 0
      318 LOADK                            R5 K118 [0.33]
      319 LOADN                            R6 0
      320 CALL                             R2 4 1
      321 SETTABLEKS                       R2 R1 K35 ["Position"]
      323 GETIMPORT                        R2 K47 [UDim2.new]
      325 LOADK                            R3 K119 [0.04]
      326 LOADN                            R4 0
      327 LOADK                            R5 K120 [0.1]
      328 LOADN                            R6 0
      329 CALL                             R2 4 1
      330 SETTABLEKS                       R2 R1 K79 ["Size"]
      332 SETTABLEKS                       R1 R0 K15 ["ButtonL2"]
      334 DUPTABLE                         R1 K122 [{["keyName"] = "L2", ["type"] = "ButtonMapping", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 1}]
      335 GETIMPORT                        R2 K47 [UDim2.new]
      337 LOADK                            R3 K90 [0.4]
      338 LOADN                            R4 0
      339 LOADK                            R5 K65 [0.5]
      340 LOADN                            R6 0
      341 CALL                             R2 4 1
      342 SETTABLEKS                       R2 R1 K35 ["Position"]
      344 GETIMPORT                        R2 K47 [UDim2.new]
      346 LOADK                            R3 K123 [0.42]
      347 LOADN                            R4 0
      348 LOADK                            R5 K124 [0.35]
      349 LOADN                            R6 0
      350 CALL                             R2 4 1
      351 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      353 SETTABLEKS                       R1 R0 K16 ["ButtonL2Label"]
      355 DUPTABLE                         R1 K80 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      356 GETIMPORT                        R2 K125 [Enum.KeyCode.ButtonL1]
      358 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      360 GETIMPORT                        R2 K47 [UDim2.new]
      362 LOADK                            R3 K126 [0.217]
      363 LOADN                            R4 0
      364 LOADK                            R5 K127 [0.48]
      365 LOADN                            R6 0
      366 CALL                             R2 4 1
      367 SETTABLEKS                       R2 R1 K35 ["Position"]
      369 GETIMPORT                        R2 K47 [UDim2.new]
      371 LOADK                            R3 K128 [0.12]
      372 LOADN                            R4 0
      373 LOADK                            R5 K129 [0.07]
      374 LOADN                            R6 0
      375 CALL                             R2 4 1
      376 SETTABLEKS                       R2 R1 K79 ["Size"]
      378 SETTABLEKS                       R1 R0 K17 ["ButtonL1"]
      380 DUPTABLE                         R1 K132 [{["keyName"] = "L1", ["type"] = "ButtonMapping", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0}]
      381 GETIMPORT                        R2 K47 [UDim2.new]
      383 LOADK                            R3 K133 [0.05]
      384 LOADN                            R4 0
      385 LOADK                            R5 K65 [0.5]
      386 LOADN                            R6 0
      387 CALL                             R2 4 1
      388 SETTABLEKS                       R2 R1 K35 ["Position"]
      390 GETIMPORT                        R2 K47 [UDim2.new]
      392 LOADK                            R3 K126 [0.217]
      393 LOADN                            R4 0
      394 LOADK                            R5 K127 [0.48]
      395 LOADN                            R6 0
      396 CALL                             R2 4 1
      397 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      399 SETTABLEKS                       R1 R0 K18 ["ButtonL1Label"]
      401 DUPTABLE                         R1 K135 [{["keyCode"], ["type"] = "Trigger", ["Position"], ["Size"]}]
      402 GETIMPORT                        R2 K125 [Enum.KeyCode.ButtonL1]
      404 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      406 GETIMPORT                        R2 K47 [UDim2.new]
      408 LOADK                            R3 K136 [0.43]
      409 LOADN                            R4 0
      410 LOADK                            R5 K119 [0.04]
      411 LOADN                            R6 0
      412 CALL                             R2 4 1
      413 SETTABLEKS                       R2 R1 K35 ["Position"]
      415 GETIMPORT                        R2 K47 [UDim2.new]
      417 LOADK                            R3 K137 [0.069]
      418 LOADN                            R4 0
      419 LOADK                            R5 K120 [0.1]
      420 LOADN                            R6 0
      421 CALL                             R2 4 1
      422 SETTABLEKS                       R2 R1 K79 ["Size"]
      424 SETTABLEKS                       R1 R0 K19 ["TriggerL1"]
      426 DUPTABLE                         R1 K80 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      427 GETIMPORT                        R2 K138 [Enum.KeyCode.ButtonR2]
      429 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      431 GETIMPORT                        R2 K47 [UDim2.new]
      433 LOADK                            R3 K139 [0.59]
      434 LOADN                            R4 0
      435 LOADK                            R5 K118 [0.33]
      436 LOADN                            R6 0
      437 CALL                             R2 4 1
      438 SETTABLEKS                       R2 R1 K35 ["Position"]
      440 GETIMPORT                        R2 K47 [UDim2.new]
      442 LOADK                            R3 K119 [0.04]
      443 LOADN                            R4 0
      444 LOADK                            R5 K120 [0.1]
      445 LOADN                            R6 0
      446 CALL                             R2 4 1
      447 SETTABLEKS                       R2 R1 K79 ["Size"]
      449 SETTABLEKS                       R1 R0 K20 ["ButtonR2"]
      451 DUPTABLE                         R1 K141 [{["keyName"] = "R2", ["type"] = "ButtonMapping", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 1}]
      452 GETIMPORT                        R2 K47 [UDim2.new]
      454 LOADK                            R3 K142 [0.595]
      455 LOADN                            R4 0
      456 LOADK                            R5 K65 [0.5]
      457 LOADN                            R6 0
      458 CALL                             R2 4 1
      459 SETTABLEKS                       R2 R1 K35 ["Position"]
      461 GETIMPORT                        R2 K47 [UDim2.new]
      463 LOADK                            R3 K143 [0.575]
      464 LOADN                            R4 0
      465 LOADK                            R5 K124 [0.35]
      466 LOADN                            R6 0
      467 CALL                             R2 4 1
      468 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      470 SETTABLEKS                       R1 R0 K21 ["ButtonR2Label"]
      472 DUPTABLE                         R1 K80 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      473 GETIMPORT                        R2 K144 [Enum.KeyCode.ButtonR1]
      475 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      477 GETIMPORT                        R2 K47 [UDim2.new]
      479 LOADK                            R3 K145 [0.788]
      480 LOADN                            R4 0
      481 LOADK                            R5 K127 [0.48]
      482 LOADN                            R6 0
      483 CALL                             R2 4 1
      484 SETTABLEKS                       R2 R1 K35 ["Position"]
      486 GETIMPORT                        R2 K47 [UDim2.new]
      488 LOADK                            R3 K128 [0.12]
      489 LOADN                            R4 0
      490 LOADK                            R5 K129 [0.07]
      491 LOADN                            R6 0
      492 CALL                             R2 4 1
      493 SETTABLEKS                       R2 R1 K79 ["Size"]
      495 SETTABLEKS                       R1 R0 K22 ["ButtonR1"]
      497 DUPTABLE                         R1 K148 [{["keyName"] = "R1", ["type"] = "ButtonMapping", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.7}]
      498 GETIMPORT                        R2 K47 [UDim2.new]
      500 LOADK                            R3 K149 [0.95]
      501 LOADN                            R4 0
      502 LOADK                            R5 K65 [0.5]
      503 LOADN                            R6 0
      504 CALL                             R2 4 1
      505 SETTABLEKS                       R2 R1 K35 ["Position"]
      507 GETIMPORT                        R2 K47 [UDim2.new]
      509 LOADK                            R3 K145 [0.788]
      510 LOADN                            R4 0
      511 LOADK                            R5 K127 [0.48]
      512 LOADN                            R6 0
      513 CALL                             R2 4 1
      514 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      516 SETTABLEKS                       R1 R0 K23 ["ButtonR1Label"]
      518 DUPTABLE                         R1 K135 [{["keyCode"], ["type"] = "Trigger", ["Position"], ["Size"]}]
      519 GETIMPORT                        R2 K144 [Enum.KeyCode.ButtonR1]
      521 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      523 GETIMPORT                        R2 K47 [UDim2.new]
      525 LOADK                            R3 K150 [0.57]
      526 LOADN                            R4 0
      527 LOADK                            R5 K119 [0.04]
      528 LOADN                            R6 0
      529 CALL                             R2 4 1
      530 SETTABLEKS                       R2 R1 K35 ["Position"]
      532 GETIMPORT                        R2 K47 [UDim2.new]
      534 LOADK                            R3 K137 [0.069]
      535 LOADN                            R4 0
      536 LOADK                            R5 K120 [0.1]
      537 LOADN                            R6 0
      538 CALL                             R2 4 1
      539 SETTABLEKS                       R2 R1 K79 ["Size"]
      541 SETTABLEKS                       R1 R0 K24 ["TriggerR1"]
      543 RETURN                           R0 1
