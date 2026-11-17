MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K25 [{"DeviceImage", "ThumbstickLeft", "ThumbstickLeftMappings", "ThumbstickRight", "ThumbstickRightMappings", "ButtonX", "ButtonXLabel", "ButtonY", "ButtonYLabel", "ButtonB", "ButtonBLabel", "ButtonA", "ButtonALabel", "ButtonStart", "ButtonStartLabel", "ButtonL2", "ButtonL2Label", "ButtonL1", "ButtonL1Label", "TriggerL1", "ButtonR2", "ButtonR2Label", "ButtonR1", "ButtonR1Label", "TriggerR1"}]
        2 DUPTABLE                         R1 K32 [{["type"] = "Background", ["srcDark"] = "rbxasset://textures/ControlsEmulator/Quest2_Dark.png", ["srcLight"] = "rbxasset://textures/ControlsEmulator/Quest2_Light.png"}]
        3 SETTABLEKS                       R1 R0 K0 ["DeviceImage"]
        5 DUPTABLE                         R1 K40 [{["keyCode"], ["type"] = "Thumbstick", ["Position"], ["relativeStickSize"] = 0.3, ["relativeSocketSize"] = 0.15}]
        6 GETIMPORT                        R2 K44 [Enum.KeyCode.Thumbstick1]
        8 SETTABLEKS                       R2 R1 K33 ["keyCode"]
       10 GETIMPORT                        R2 K47 [UDim2.new]
       12 LOADK                            R3 K48 [0.26]
       13 LOADN                            R4 0
       14 LOADK                            R5 K49 [0.445]
       15 LOADN                            R6 0
       16 CALL                             R2 4 1
       17 SETTABLEKS                       R2 R1 K35 ["Position"]
       19 SETTABLEKS                       R1 R0 K1 ["ThumbstickLeft"]
       21 DUPTABLE                         R1 K66 [{["upKeyName"] = "L Thumbstick Up", ["downKeyName"] = "L Thumbstick Down", ["leftKeyName"] = "L Thumbstick Left", ["rightKeyName"] = "L Thumbstick Right", ["centerKeyName"] = "L Thumbstick Click", ["type"] = "CrossLayoutMappings", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.4}]
       22 GETIMPORT                        R2 K47 [UDim2.new]
       24 LOADN                            R3 0
       25 LOADN                            R4 0
       26 LOADK                            R5 K67 [0.342]
       27 LOADN                            R6 0
       28 CALL                             R2 4 1
       29 SETTABLEKS                       R2 R1 K35 ["Position"]
       31 GETIMPORT                        R2 K47 [UDim2.new]
       33 LOADK                            R3 K48 [0.26]
       34 LOADN                            R4 0
       35 LOADK                            R5 K68 [0.435]
       36 LOADN                            R6 0
       37 CALL                             R2 4 1
       38 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
       40 SETTABLEKS                       R1 R0 K2 ["ThumbstickLeftMappings"]
       42 DUPTABLE                         R1 K40 [{["keyCode"], ["type"] = "Thumbstick", ["Position"], ["relativeStickSize"] = 0.3, ["relativeSocketSize"] = 0.15}]
       43 GETIMPORT                        R2 K70 [Enum.KeyCode.Thumbstick2]
       45 SETTABLEKS                       R2 R1 K33 ["keyCode"]
       47 GETIMPORT                        R2 K47 [UDim2.new]
       49 LOADK                            R3 K71 [0.745]
       50 LOADN                            R4 0
       51 LOADK                            R5 K72 [0.44]
       52 LOADN                            R6 0
       53 CALL                             R2 4 1
       54 SETTABLEKS                       R2 R1 K35 ["Position"]
       56 SETTABLEKS                       R1 R0 K3 ["ThumbstickRight"]
       58 DUPTABLE                         R1 K80 [{["upKeyName"] = "R Thumbstick Up", ["downKeyName"] = "R Thumbstick Down", ["leftKeyName"] = "R Thumbstick Left", ["rightKeyName"] = "R Thumbstick Right", ["centerKeyName"] = "R Thumbstick Click", ["type"] = "CrossLayoutMappings", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.6}]
       59 GETIMPORT                        R2 K47 [UDim2.new]
       61 LOADN                            R3 1
       62 LOADN                            R4 0
       63 LOADK                            R5 K81 [0.37]
       64 LOADN                            R6 0
       65 CALL                             R2 4 1
       66 SETTABLEKS                       R2 R1 K35 ["Position"]
       68 GETIMPORT                        R2 K47 [UDim2.new]
       70 LOADK                            R3 K71 [0.745]
       71 LOADN                            R4 0
       72 LOADK                            R5 K72 [0.44]
       73 LOADN                            R6 0
       74 CALL                             R2 4 1
       75 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
       77 SETTABLEKS                       R1 R0 K4 ["ThumbstickRightMappings"]
       79 DUPTABLE                         R1 K84 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
       80 GETIMPORT                        R2 K85 [Enum.KeyCode.ButtonX]
       82 SETTABLEKS                       R2 R1 K33 ["keyCode"]
       84 GETIMPORT                        R2 K47 [UDim2.new]
       86 LOADK                            R3 K86 [0.265]
       87 LOADN                            R4 0
       88 LOADK                            R5 K87 [0.492]
       89 LOADN                            R6 0
       90 CALL                             R2 4 1
       91 SETTABLEKS                       R2 R1 K35 ["Position"]
       93 GETIMPORT                        R2 K47 [UDim2.new]
       95 LOADK                            R3 K88 [0.04]
       96 LOADN                            R4 0
       97 LOADK                            R5 K89 [0.03]
       98 LOADN                            R6 0
       99 CALL                             R2 4 1
      100 SETTABLEKS                       R2 R1 K83 ["Size"]
      102 SETTABLEKS                       R1 R0 K5 ["ButtonX"]
      104 DUPTABLE                         R1 K94 [{["keyName"] = "X", ["type"] = "ButtonMapping", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 1}]
      105 GETIMPORT                        R2 K47 [UDim2.new]
      107 LOADN                            R3 0
      108 LOADN                            R4 0
      109 LOADK                            R5 K95 [0.7]
      110 LOADN                            R6 0
      111 CALL                             R2 4 1
      112 SETTABLEKS                       R2 R1 K35 ["Position"]
      114 GETIMPORT                        R2 K47 [UDim2.new]
      116 LOADK                            R3 K96 [0.27]
      117 LOADN                            R4 0
      118 LOADK                            R5 K97 [0.507]
      119 LOADN                            R6 0
      120 CALL                             R2 4 1
      121 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      123 SETTABLEKS                       R1 R0 K6 ["ButtonXLabel"]
      125 DUPTABLE                         R1 K84 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      126 GETIMPORT                        R2 K98 [Enum.KeyCode.ButtonY]
      128 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      130 GETIMPORT                        R2 K47 [UDim2.new]
      132 LOADK                            R3 K99 [0.315]
      133 LOADN                            R4 0
      134 LOADK                            R5 K100 [0.49]
      135 LOADN                            R6 0
      136 CALL                             R2 4 1
      137 SETTABLEKS                       R2 R1 K35 ["Position"]
      139 GETIMPORT                        R2 K47 [UDim2.new]
      141 LOADK                            R3 K88 [0.04]
      142 LOADN                            R4 0
      143 LOADK                            R5 K89 [0.03]
      144 LOADN                            R6 0
      145 CALL                             R2 4 1
      146 SETTABLEKS                       R2 R1 K83 ["Size"]
      148 SETTABLEKS                       R1 R0 K7 ["ButtonY"]
      150 DUPTABLE                         R1 K102 [{["keyName"] = "Y", ["type"] = "ButtonMapping", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 1}]
      151 GETIMPORT                        R2 K47 [UDim2.new]
      153 LOADN                            R3 0
      154 LOADN                            R4 0
      155 LOADK                            R5 K103 [0.79]
      156 LOADN                            R6 0
      157 CALL                             R2 4 1
      158 SETTABLEKS                       R2 R1 K35 ["Position"]
      160 GETIMPORT                        R2 K47 [UDim2.new]
      162 LOADK                            R3 K99 [0.315]
      163 LOADN                            R4 0
      164 LOADK                            R5 K104 [0.5]
      165 LOADN                            R6 0
      166 CALL                             R2 4 1
      167 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      169 SETTABLEKS                       R1 R0 K8 ["ButtonYLabel"]
      171 DUPTABLE                         R1 K84 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      172 GETIMPORT                        R2 K105 [Enum.KeyCode.ButtonB]
      174 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      176 GETIMPORT                        R2 K47 [UDim2.new]
      178 LOADK                            R3 K106 [0.69]
      179 LOADN                            R4 0
      180 LOADK                            R5 K100 [0.49]
      181 LOADN                            R6 0
      182 CALL                             R2 4 1
      183 SETTABLEKS                       R2 R1 K35 ["Position"]
      185 GETIMPORT                        R2 K47 [UDim2.new]
      187 LOADK                            R3 K88 [0.04]
      188 LOADN                            R4 0
      189 LOADK                            R5 K89 [0.03]
      190 LOADN                            R6 0
      191 CALL                             R2 4 1
      192 SETTABLEKS                       R2 R1 K83 ["Size"]
      194 SETTABLEKS                       R1 R0 K9 ["ButtonB"]
      196 DUPTABLE                         R1 K108 [{["keyName"] = "B", ["type"] = "ButtonMapping", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 1}]
      197 GETIMPORT                        R2 K47 [UDim2.new]
      199 LOADN                            R3 1
      200 LOADN                            R4 0
      201 LOADK                            R5 K103 [0.79]
      202 LOADN                            R6 0
      203 CALL                             R2 4 1
      204 SETTABLEKS                       R2 R1 K35 ["Position"]
      206 GETIMPORT                        R2 K47 [UDim2.new]
      208 LOADK                            R3 K106 [0.69]
      209 LOADN                            R4 0
      210 LOADK                            R5 K104 [0.5]
      211 LOADN                            R6 0
      212 CALL                             R2 4 1
      213 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      215 SETTABLEKS                       R1 R0 K10 ["ButtonBLabel"]
      217 DUPTABLE                         R1 K84 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      218 GETIMPORT                        R2 K109 [Enum.KeyCode.ButtonA]
      220 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      222 GETIMPORT                        R2 K47 [UDim2.new]
      224 LOADK                            R3 K110 [0.74]
      225 LOADN                            R4 0
      226 LOADK                            R5 K87 [0.492]
      227 LOADN                            R6 0
      228 CALL                             R2 4 1
      229 SETTABLEKS                       R2 R1 K35 ["Position"]
      231 GETIMPORT                        R2 K47 [UDim2.new]
      233 LOADK                            R3 K88 [0.04]
      234 LOADN                            R4 0
      235 LOADK                            R5 K89 [0.03]
      236 LOADN                            R6 0
      237 CALL                             R2 4 1
      238 SETTABLEKS                       R2 R1 K83 ["Size"]
      240 SETTABLEKS                       R1 R0 K11 ["ButtonA"]
      242 DUPTABLE                         R1 K112 [{["keyName"] = "A", ["type"] = "ButtonMapping", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 1}]
      243 GETIMPORT                        R2 K47 [UDim2.new]
      245 LOADN                            R3 1
      246 LOADN                            R4 0
      247 LOADK                            R5 K95 [0.7]
      248 LOADN                            R6 0
      249 CALL                             R2 4 1
      250 SETTABLEKS                       R2 R1 K35 ["Position"]
      252 GETIMPORT                        R2 K47 [UDim2.new]
      254 LOADK                            R3 K110 [0.74]
      255 LOADN                            R4 0
      256 LOADK                            R5 K97 [0.507]
      257 LOADN                            R6 0
      258 CALL                             R2 4 1
      259 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      261 SETTABLEKS                       R1 R0 K12 ["ButtonALabel"]
      263 DUPTABLE                         R1 K84 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      264 GETIMPORT                        R2 K113 [Enum.KeyCode.ButtonStart]
      266 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      268 GETIMPORT                        R2 K47 [UDim2.new]
      270 LOADK                            R3 K114 [0.2]
      271 LOADN                            R4 0
      272 LOADK                            R5 K115 [0.472]
      273 LOADN                            R6 0
      274 CALL                             R2 4 1
      275 SETTABLEKS                       R2 R1 K35 ["Position"]
      277 GETIMPORT                        R2 K47 [UDim2.new]
      279 LOADK                            R3 K116 [0.038]
      280 LOADN                            R4 0
      281 LOADK                            R5 K117 [0.025]
      282 LOADN                            R6 0
      283 CALL                             R2 4 1
      284 SETTABLEKS                       R2 R1 K83 ["Size"]
      286 SETTABLEKS                       R1 R0 K13 ["ButtonStart"]
      288 DUPTABLE                         R1 K120 [{["keyName"] = "Start", ["type"] = "ButtonMapping", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.75}]
      289 GETIMPORT                        R2 K47 [UDim2.new]
      291 LOADK                            R3 K121 [0.12]
      292 LOADN                            R4 0
      293 LOADK                            R5 K115 [0.472]
      294 LOADN                            R6 0
      295 CALL                             R2 4 1
      296 SETTABLEKS                       R2 R1 K35 ["Position"]
      298 GETIMPORT                        R2 K47 [UDim2.new]
      300 LOADK                            R3 K114 [0.2]
      301 LOADN                            R4 0
      302 LOADK                            R5 K115 [0.472]
      303 LOADN                            R6 0
      304 CALL                             R2 4 1
      305 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      307 SETTABLEKS                       R1 R0 K14 ["ButtonStartLabel"]
      309 DUPTABLE                         R1 K84 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      310 GETIMPORT                        R2 K122 [Enum.KeyCode.ButtonL2]
      312 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      314 GETIMPORT                        R2 K47 [UDim2.new]
      316 LOADK                            R3 K123 [0.33]
      317 LOADN                            R4 0
      318 LOADK                            R5 K124 [0.587]
      319 LOADN                            R6 0
      320 CALL                             R2 4 1
      321 SETTABLEKS                       R2 R1 K35 ["Position"]
      323 GETIMPORT                        R2 K47 [UDim2.new]
      325 LOADK                            R3 K125 [0.08]
      326 LOADN                            R4 0
      327 LOADK                            R5 K89 [0.03]
      328 LOADN                            R6 0
      329 CALL                             R2 4 1
      330 SETTABLEKS                       R2 R1 K83 ["Size"]
      332 SETTABLEKS                       R1 R0 K15 ["ButtonL2"]
      334 DUPTABLE                         R1 K127 [{["keyName"] = "L2", ["type"] = "ButtonMapping", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 1}]
      335 GETIMPORT                        R2 K47 [UDim2.new]
      337 LOADK                            R3 K128 [0.38]
      338 LOADN                            R4 0
      339 LOADK                            R5 K129 [0.65]
      340 LOADN                            R6 0
      341 CALL                             R2 4 1
      342 SETTABLEKS                       R2 R1 K35 ["Position"]
      344 GETIMPORT                        R2 K47 [UDim2.new]
      346 LOADK                            R3 K130 [0.35]
      347 LOADN                            R4 0
      348 LOADK                            R5 K131 [0.59]
      349 LOADN                            R6 0
      350 CALL                             R2 4 1
      351 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      353 SETTABLEKS                       R1 R0 K16 ["ButtonL2Label"]
      355 DUPTABLE                         R1 K84 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      356 GETIMPORT                        R2 K132 [Enum.KeyCode.ButtonL1]
      358 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      360 GETIMPORT                        R2 K47 [UDim2.new]
      362 LOADK                            R3 K133 [0.235]
      363 LOADN                            R4 0
      364 LOADK                            R5 K79 [0.6]
      365 LOADN                            R6 0
      366 CALL                             R2 4 1
      367 SETTABLEKS                       R2 R1 K35 ["Position"]
      369 GETIMPORT                        R2 K47 [UDim2.new]
      371 LOADK                            R3 K134 [0.07]
      372 LOADN                            R4 0
      373 LOADK                            R5 K135 [0.063]
      374 LOADN                            R6 0
      375 CALL                             R2 4 1
      376 SETTABLEKS                       R2 R1 K83 ["Size"]
      378 SETTABLEKS                       R1 R0 K17 ["ButtonL1"]
      380 DUPTABLE                         R1 K138 [{["keyName"] = "L1", ["type"] = "ButtonMapping", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0}]
      381 GETIMPORT                        R2 K47 [UDim2.new]
      383 LOADK                            R3 K139 [0.05]
      384 LOADN                            R4 0
      385 LOADK                            R5 K79 [0.6]
      386 LOADN                            R6 0
      387 CALL                             R2 4 1
      388 SETTABLEKS                       R2 R1 K35 ["Position"]
      390 GETIMPORT                        R2 K47 [UDim2.new]
      392 LOADK                            R3 K140 [0.21]
      393 LOADN                            R4 0
      394 LOADK                            R5 K79 [0.6]
      395 LOADN                            R6 0
      396 CALL                             R2 4 1
      397 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      399 SETTABLEKS                       R1 R0 K18 ["ButtonL1Label"]
      401 DUPTABLE                         R1 K142 [{["keyCode"], ["type"] = "Trigger", ["Position"], ["Size"]}]
      402 GETIMPORT                        R2 K132 [Enum.KeyCode.ButtonL1]
      404 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      406 GETIMPORT                        R2 K47 [UDim2.new]
      408 LOADK                            R3 K130 [0.35]
      409 LOADN                            R4 0
      410 LOADK                            R5 K143 [0.052]
      411 LOADN                            R6 0
      412 CALL                             R2 4 1
      413 SETTABLEKS                       R2 R1 K35 ["Position"]
      415 GETIMPORT                        R2 K47 [UDim2.new]
      417 LOADK                            R3 K144 [0.069]
      418 LOADN                            R4 0
      419 LOADK                            R5 K145 [0.1]
      420 LOADN                            R6 0
      421 CALL                             R2 4 1
      422 SETTABLEKS                       R2 R1 K83 ["Size"]
      424 SETTABLEKS                       R1 R0 K19 ["TriggerL1"]
      426 DUPTABLE                         R1 K84 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      427 GETIMPORT                        R2 K146 [Enum.KeyCode.ButtonR2]
      429 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      431 GETIMPORT                        R2 K47 [UDim2.new]
      433 LOADK                            R3 K147 [0.67]
      434 LOADN                            R4 0
      435 LOADK                            R5 K124 [0.587]
      436 LOADN                            R6 0
      437 CALL                             R2 4 1
      438 SETTABLEKS                       R2 R1 K35 ["Position"]
      440 GETIMPORT                        R2 K47 [UDim2.new]
      442 LOADK                            R3 K125 [0.08]
      443 LOADN                            R4 0
      444 LOADK                            R5 K89 [0.03]
      445 LOADN                            R6 0
      446 CALL                             R2 4 1
      447 SETTABLEKS                       R2 R1 K83 ["Size"]
      449 SETTABLEKS                       R1 R0 K20 ["ButtonR2"]
      451 DUPTABLE                         R1 K149 [{["keyName"] = "R2", ["type"] = "ButtonMapping", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 1}]
      452 GETIMPORT                        R2 K47 [UDim2.new]
      454 LOADK                            R3 K150 [0.62]
      455 LOADN                            R4 0
      456 LOADK                            R5 K129 [0.65]
      457 LOADN                            R6 0
      458 CALL                             R2 4 1
      459 SETTABLEKS                       R2 R1 K35 ["Position"]
      461 GETIMPORT                        R2 K47 [UDim2.new]
      463 LOADK                            R3 K151 [0.651]
      464 LOADN                            R4 0
      465 LOADK                            R5 K124 [0.587]
      466 LOADN                            R6 0
      467 CALL                             R2 4 1
      468 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      470 SETTABLEKS                       R1 R0 K21 ["ButtonR2Label"]
      472 DUPTABLE                         R1 K84 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      473 GETIMPORT                        R2 K152 [Enum.KeyCode.ButtonR1]
      475 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      477 GETIMPORT                        R2 K47 [UDim2.new]
      479 LOADK                            R3 K153 [0.77]
      480 LOADN                            R4 0
      481 LOADK                            R5 K79 [0.6]
      482 LOADN                            R6 0
      483 CALL                             R2 4 1
      484 SETTABLEKS                       R2 R1 K35 ["Position"]
      486 GETIMPORT                        R2 K47 [UDim2.new]
      488 LOADK                            R3 K134 [0.07]
      489 LOADN                            R4 0
      490 LOADK                            R5 K135 [0.063]
      491 LOADN                            R6 0
      492 CALL                             R2 4 1
      493 SETTABLEKS                       R2 R1 K83 ["Size"]
      495 SETTABLEKS                       R1 R0 K22 ["ButtonR1"]
      497 DUPTABLE                         R1 K155 [{["keyName"] = "R1", ["type"] = "ButtonMapping", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.7}]
      498 GETIMPORT                        R2 K47 [UDim2.new]
      500 LOADK                            R3 K156 [0.95]
      501 LOADN                            R4 0
      502 LOADK                            R5 K157 [0.595]
      503 LOADN                            R6 0
      504 CALL                             R2 4 1
      505 SETTABLEKS                       R2 R1 K35 ["Position"]
      507 GETIMPORT                        R2 K47 [UDim2.new]
      509 LOADK                            R3 K103 [0.79]
      510 LOADN                            R4 0
      511 LOADK                            R5 K157 [0.595]
      512 LOADN                            R6 0
      513 CALL                             R2 4 1
      514 SETTABLEKS                       R2 R1 K63 ["arrowDestination"]
      516 SETTABLEKS                       R1 R0 K23 ["ButtonR1Label"]
      518 DUPTABLE                         R1 K142 [{["keyCode"], ["type"] = "Trigger", ["Position"], ["Size"]}]
      519 GETIMPORT                        R2 K152 [Enum.KeyCode.ButtonR1]
      521 SETTABLEKS                       R2 R1 K33 ["keyCode"]
      523 GETIMPORT                        R2 K47 [UDim2.new]
      525 LOADK                            R3 K129 [0.65]
      526 LOADN                            R4 0
      527 LOADK                            R5 K143 [0.052]
      528 LOADN                            R6 0
      529 CALL                             R2 4 1
      530 SETTABLEKS                       R2 R1 K35 ["Position"]
      532 GETIMPORT                        R2 K47 [UDim2.new]
      534 LOADK                            R3 K144 [0.069]
      535 LOADN                            R4 0
      536 LOADK                            R5 K145 [0.1]
      537 LOADN                            R6 0
      538 CALL                             R2 4 1
      539 SETTABLEKS                       R2 R1 K83 ["Size"]
      541 SETTABLEKS                       R1 R0 K24 ["TriggerR1"]
      543 RETURN                           R0 1
