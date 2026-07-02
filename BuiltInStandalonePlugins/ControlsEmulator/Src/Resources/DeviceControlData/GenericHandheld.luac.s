MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K29 [{"DeviceImage", "ThumbstickLeft", "ThumbstickLeftMappings", "ThumbstickRight", "ThumbstickRightMappings", "ArrowUp", "ArrowRight", "ArrowDown", "ArrowLeft", "ArrowsMappings", "ButtonX", "ButtonY", "ButtonB", "ButtonA", "AbxyMappings", "ButtonSelect", "ButtonSelectLabel", "ButtonStart", "ButtonStartLabel", "ButtonL1", "ButtonL1Label", "ButtonL2", "ButtonL2Label", "TriggerL2", "ButtonR1", "ButtonR1Label", "ButtonR2", "ButtonR2Label", "TriggerR2"}]
        2 DUPTABLE                         R1 K36 [{["type"] = "Background", ["srcDark"] = "rbxasset://textures/ControlsEmulator/GenericHandheld_Dark.png", ["srcLight"] = "rbxasset://textures/ControlsEmulator/GenericHandheld_Light.png"}]
        3 SETTABLEKS                       R1 R0 K0 ["DeviceImage"]
        5 DUPTABLE                         R1 K44 [{["keyCode"], ["type"] = "Thumbstick", ["Position"], ["relativeStickSize"] = 0.38, ["relativeSocketSize"] = 0.22}]
        6 GETIMPORT                        R2 K48 [Enum.KeyCode.Thumbstick1]
        8 SETTABLEKS                       R2 R1 K37 ["keyCode"]
       10 GETIMPORT                        R2 K51 [UDim2.new]
       12 LOADK                            R3 K52 [0.14]
       13 LOADN                            R4 0
       14 LOADK                            R5 K53 [0.4]
       15 LOADN                            R6 0
       16 CALL                             R2 4 1
       17 SETTABLEKS                       R2 R1 K39 ["Position"]
       19 SETTABLEKS                       R1 R0 K1 ["ThumbstickLeft"]
       21 DUPTABLE                         R1 K70 [{["upKeyName"] = "L Thumbstick Up", ["downKeyName"] = "L Thumbstick Down", ["leftKeyName"] = "L Thumbstick Left", ["rightKeyName"] = "L Thumbstick Right", ["centerKeyName"] = "L Thumbstick Click", ["type"] = "CrossLayoutMappings", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.9}]
       22 GETIMPORT                        R2 K51 [UDim2.new]
       24 LOADK                            R3 K71 [-0.04]
       25 LOADN                            R4 0
       26 LOADK                            R5 K72 [0.48]
       27 LOADN                            R6 0
       28 CALL                             R2 4 1
       29 SETTABLEKS                       R2 R1 K39 ["Position"]
       31 GETIMPORT                        R2 K51 [UDim2.new]
       33 LOADK                            R3 K52 [0.14]
       34 LOADN                            R4 0
       35 LOADK                            R5 K53 [0.4]
       36 LOADN                            R6 0
       37 CALL                             R2 4 1
       38 SETTABLEKS                       R2 R1 K67 ["arrowDestination"]
       40 SETTABLEKS                       R1 R0 K2 ["ThumbstickLeftMappings"]
       42 DUPTABLE                         R1 K44 [{["keyCode"], ["type"] = "Thumbstick", ["Position"], ["relativeStickSize"] = 0.38, ["relativeSocketSize"] = 0.22}]
       43 GETIMPORT                        R2 K74 [Enum.KeyCode.Thumbstick2]
       45 SETTABLEKS                       R2 R1 K37 ["keyCode"]
       47 GETIMPORT                        R2 K51 [UDim2.new]
       49 LOADK                            R3 K75 [0.763]
       50 LOADN                            R4 0
       51 LOADK                            R5 K76 [0.53]
       52 LOADN                            R6 0
       53 CALL                             R2 4 1
       54 SETTABLEKS                       R2 R1 K39 ["Position"]
       56 SETTABLEKS                       R1 R0 K3 ["ThumbstickRight"]
       58 DUPTABLE                         R1 K84 [{["upKeyName"] = "R Thumbstick Up", ["downKeyName"] = "R Thumbstick Down", ["leftKeyName"] = "R Thumbstick Left", ["rightKeyName"] = "R Thumbstick Right", ["centerKeyName"] = "R Thumbstick Click", ["type"] = "CrossLayoutMappings", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.6}]
       59 GETIMPORT                        R2 K51 [UDim2.new]
       61 LOADK                            R3 K85 [0.96]
       62 LOADN                            R4 0
       63 LOADK                            R5 K86 [0.75]
       64 LOADN                            R6 0
       65 CALL                             R2 4 1
       66 SETTABLEKS                       R2 R1 K39 ["Position"]
       68 GETIMPORT                        R2 K51 [UDim2.new]
       70 LOADK                            R3 K75 [0.763]
       71 LOADN                            R4 0
       72 LOADK                            R5 K76 [0.53]
       73 LOADN                            R6 0
       74 CALL                             R2 4 1
       75 SETTABLEKS                       R2 R1 K67 ["arrowDestination"]
       77 SETTABLEKS                       R1 R0 K4 ["ThumbstickRightMappings"]
       79 DUPTABLE                         R1 K89 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
       80 GETIMPORT                        R2 K91 [Enum.KeyCode.DPadUp]
       82 SETTABLEKS                       R2 R1 K37 ["keyCode"]
       84 GETIMPORT                        R2 K51 [UDim2.new]
       86 LOADK                            R3 K92 [0.23]
       87 LOADN                            R4 0
       88 LOADK                            R5 K93 [0.45]
       89 LOADN                            R6 0
       90 CALL                             R2 4 1
       91 SETTABLEKS                       R2 R1 K39 ["Position"]
       93 GETIMPORT                        R2 K51 [UDim2.new]
       95 LOADK                            R3 K94 [0.041]
       96 LOADN                            R4 0
       97 LOADK                            R5 K94 [0.041]
       98 LOADN                            R6 0
       99 CALL                             R2 4 1
      100 SETTABLEKS                       R2 R1 K88 ["Size"]
      102 SETTABLEKS                       R1 R0 K5 ["ArrowUp"]
      104 DUPTABLE                         R1 K89 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      105 GETIMPORT                        R2 K96 [Enum.KeyCode.DPadRight]
      107 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      109 GETIMPORT                        R2 K51 [UDim2.new]
      111 LOADK                            R3 K97 [0.27]
      112 LOADN                            R4 0
      113 LOADK                            R5 K98 [0.49]
      114 LOADN                            R6 0
      115 CALL                             R2 4 1
      116 SETTABLEKS                       R2 R1 K39 ["Position"]
      118 GETIMPORT                        R2 K51 [UDim2.new]
      120 LOADK                            R3 K94 [0.041]
      121 LOADN                            R4 0
      122 LOADK                            R5 K94 [0.041]
      123 LOADN                            R6 0
      124 CALL                             R2 4 1
      125 SETTABLEKS                       R2 R1 K88 ["Size"]
      127 SETTABLEKS                       R1 R0 K6 ["ArrowRight"]
      129 DUPTABLE                         R1 K89 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      130 GETIMPORT                        R2 K100 [Enum.KeyCode.DPadDown]
      132 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      134 GETIMPORT                        R2 K51 [UDim2.new]
      136 LOADK                            R3 K92 [0.23]
      137 LOADN                            R4 0
      138 LOADK                            R5 K76 [0.53]
      139 LOADN                            R6 0
      140 CALL                             R2 4 1
      141 SETTABLEKS                       R2 R1 K39 ["Position"]
      143 GETIMPORT                        R2 K51 [UDim2.new]
      145 LOADK                            R3 K94 [0.041]
      146 LOADN                            R4 0
      147 LOADK                            R5 K94 [0.041]
      148 LOADN                            R6 0
      149 CALL                             R2 4 1
      150 SETTABLEKS                       R2 R1 K88 ["Size"]
      152 SETTABLEKS                       R1 R0 K7 ["ArrowDown"]
      154 DUPTABLE                         R1 K89 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      155 GETIMPORT                        R2 K102 [Enum.KeyCode.DPadLeft]
      157 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      159 GETIMPORT                        R2 K51 [UDim2.new]
      161 LOADK                            R3 K103 [0.19]
      162 LOADN                            R4 0
      163 LOADK                            R5 K98 [0.49]
      164 LOADN                            R6 0
      165 CALL                             R2 4 1
      166 SETTABLEKS                       R2 R1 K39 ["Position"]
      168 GETIMPORT                        R2 K51 [UDim2.new]
      170 LOADK                            R3 K94 [0.041]
      171 LOADN                            R4 0
      172 LOADK                            R5 K94 [0.041]
      173 LOADN                            R6 0
      174 CALL                             R2 4 1
      175 SETTABLEKS                       R2 R1 K88 ["Size"]
      177 SETTABLEKS                       R1 R0 K8 ["ArrowLeft"]
      179 DUPTABLE                         R1 K108 [{["upKeyName"] = "DPad Up", ["downKeyName"] = "DPad Down", ["leftKeyName"] = "DPad Left", ["rightKeyName"] = "DPad Right", ["type"] = "CrossLayoutMappings", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.6}]
      180 GETIMPORT                        R2 K51 [UDim2.new]
      182 LOADK                            R3 K109 [0.04]
      183 LOADN                            R4 0
      184 LOADK                            R5 K86 [0.75]
      185 LOADN                            R6 0
      186 CALL                             R2 4 1
      187 SETTABLEKS                       R2 R1 K39 ["Position"]
      189 GETIMPORT                        R2 K51 [UDim2.new]
      191 LOADK                            R3 K92 [0.23]
      192 LOADN                            R4 0
      193 LOADK                            R5 K72 [0.48]
      194 LOADN                            R6 0
      195 CALL                             R2 4 1
      196 SETTABLEKS                       R2 R1 K67 ["arrowDestination"]
      198 SETTABLEKS                       R1 R0 K9 ["ArrowsMappings"]
      200 DUPTABLE                         R1 K89 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      201 GETIMPORT                        R2 K110 [Enum.KeyCode.ButtonX]
      203 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      205 GETIMPORT                        R2 K51 [UDim2.new]
      207 LOADK                            R3 K111 [0.795]
      208 LOADN                            R4 0
      209 LOADK                            R5 K112 [0.374]
      210 LOADN                            R6 0
      211 CALL                             R2 4 1
      212 SETTABLEKS                       R2 R1 K39 ["Position"]
      214 GETIMPORT                        R2 K51 [UDim2.new]
      216 LOADK                            R3 K113 [0.052]
      217 LOADN                            R4 0
      218 LOADK                            R5 K114 [0.051]
      219 LOADN                            R6 0
      220 CALL                             R2 4 1
      221 SETTABLEKS                       R2 R1 K88 ["Size"]
      223 SETTABLEKS                       R1 R0 K10 ["ButtonX"]
      225 DUPTABLE                         R1 K89 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      226 GETIMPORT                        R2 K115 [Enum.KeyCode.ButtonY]
      228 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      230 GETIMPORT                        R2 K51 [UDim2.new]
      232 LOADK                            R3 K116 [0.855]
      233 LOADN                            R4 0
      234 LOADK                            R5 K117 [0.323]
      235 LOADN                            R6 0
      236 CALL                             R2 4 1
      237 SETTABLEKS                       R2 R1 K39 ["Position"]
      239 GETIMPORT                        R2 K51 [UDim2.new]
      241 LOADK                            R3 K118 [0.053]
      242 LOADN                            R4 0
      243 LOADK                            R5 K114 [0.051]
      244 LOADN                            R6 0
      245 CALL                             R2 4 1
      246 SETTABLEKS                       R2 R1 K88 ["Size"]
      248 SETTABLEKS                       R1 R0 K11 ["ButtonY"]
      250 DUPTABLE                         R1 K89 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      251 GETIMPORT                        R2 K119 [Enum.KeyCode.ButtonB]
      253 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      255 GETIMPORT                        R2 K51 [UDim2.new]
      257 LOADK                            R3 K69 [0.9]
      258 LOADN                            R4 0
      259 LOADK                            R5 K112 [0.374]
      260 LOADN                            R6 0
      261 CALL                             R2 4 1
      262 SETTABLEKS                       R2 R1 K39 ["Position"]
      264 GETIMPORT                        R2 K51 [UDim2.new]
      266 LOADK                            R3 K114 [0.051]
      267 LOADN                            R4 0
      268 LOADK                            R5 K114 [0.051]
      269 LOADN                            R6 0
      270 CALL                             R2 4 1
      271 SETTABLEKS                       R2 R1 K88 ["Size"]
      273 SETTABLEKS                       R1 R0 K12 ["ButtonB"]
      275 DUPTABLE                         R1 K89 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      276 GETIMPORT                        R2 K120 [Enum.KeyCode.ButtonA]
      278 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      280 GETIMPORT                        R2 K51 [UDim2.new]
      282 LOADK                            R3 K121 [0.845]
      283 LOADN                            R4 0
      284 LOADK                            R5 K122 [0.425]
      285 LOADN                            R6 0
      286 CALL                             R2 4 1
      287 SETTABLEKS                       R2 R1 K39 ["Position"]
      289 GETIMPORT                        R2 K51 [UDim2.new]
      291 LOADK                            R3 K118 [0.053]
      292 LOADN                            R4 0
      293 LOADK                            R5 K114 [0.051]
      294 LOADN                            R6 0
      295 CALL                             R2 4 1
      296 SETTABLEKS                       R2 R1 K88 ["Size"]
      298 SETTABLEKS                       R1 R0 K13 ["ButtonA"]
      300 DUPTABLE                         R1 K128 [{["upKeyName"] = "Y", ["downKeyName"] = "A", ["leftKeyName"] = "X", ["rightKeyName"] = "B", ["type"] = "CrossLayoutMappings", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.5}]
      301 GETIMPORT                        R2 K51 [UDim2.new]
      303 LOADN                            R3 1
      304 LOADN                            R4 0
      305 LOADK                            R5 K129 [0.475]
      306 LOADN                            R6 0
      307 CALL                             R2 4 1
      308 SETTABLEKS                       R2 R1 K39 ["Position"]
      310 GETIMPORT                        R2 K51 [UDim2.new]
      312 LOADK                            R3 K130 [0.848]
      313 LOADN                            R4 0
      314 LOADK                            R5 K131 [0.373]
      315 LOADN                            R6 0
      316 CALL                             R2 4 1
      317 SETTABLEKS                       R2 R1 K67 ["arrowDestination"]
      319 SETTABLEKS                       R1 R0 K14 ["AbxyMappings"]
      321 DUPTABLE                         R1 K89 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      322 GETIMPORT                        R2 K132 [Enum.KeyCode.ButtonSelect]
      324 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      326 GETIMPORT                        R2 K51 [UDim2.new]
      328 LOADK                            R3 K133 [0.283]
      329 LOADN                            R4 0
      330 LOADK                            R5 K134 [0.355]
      331 LOADN                            R6 0
      332 CALL                             R2 4 1
      333 SETTABLEKS                       R2 R1 K39 ["Position"]
      335 GETIMPORT                        R2 K51 [UDim2.new]
      337 LOADK                            R3 K135 [0.035]
      338 LOADN                            R4 0
      339 LOADK                            R5 K135 [0.035]
      340 LOADN                            R6 0
      341 CALL                             R2 4 1
      342 SETTABLEKS                       R2 R1 K88 ["Size"]
      344 SETTABLEKS                       R1 R0 K15 ["ButtonSelect"]
      346 DUPTABLE                         R1 K139 [{["keyName"] = "Select", ["type"] = "ButtonMapping", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.75}]
      347 GETIMPORT                        R2 K51 [UDim2.new]
      349 LOADK                            R3 K140 [0.02]
      350 LOADN                            R4 0
      351 LOADK                            R5 K141 [0.31]
      352 LOADN                            R6 0
      353 CALL                             R2 4 1
      354 SETTABLEKS                       R2 R1 K39 ["Position"]
      356 GETIMPORT                        R2 K51 [UDim2.new]
      358 LOADK                            R3 K133 [0.283]
      359 LOADN                            R4 0
      360 LOADK                            R5 K134 [0.355]
      361 LOADN                            R6 0
      362 CALL                             R2 4 1
      363 SETTABLEKS                       R2 R1 K67 ["arrowDestination"]
      365 SETTABLEKS                       R1 R0 K16 ["ButtonSelectLabel"]
      367 DUPTABLE                         R1 K89 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      368 GETIMPORT                        R2 K142 [Enum.KeyCode.ButtonStart]
      370 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      372 GETIMPORT                        R2 K51 [UDim2.new]
      374 LOADK                            R3 K143 [0.717]
      375 LOADN                            R4 0
      376 LOADK                            R5 K134 [0.355]
      377 LOADN                            R6 0
      378 CALL                             R2 4 1
      379 SETTABLEKS                       R2 R1 K39 ["Position"]
      381 GETIMPORT                        R2 K51 [UDim2.new]
      383 LOADK                            R3 K135 [0.035]
      384 LOADN                            R4 0
      385 LOADK                            R5 K135 [0.035]
      386 LOADN                            R6 0
      387 CALL                             R2 4 1
      388 SETTABLEKS                       R2 R1 K88 ["Size"]
      390 SETTABLEKS                       R1 R0 K17 ["ButtonStart"]
      392 DUPTABLE                         R1 K145 [{["keyName"] = "Start", ["type"] = "ButtonMapping", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.75}]
      393 GETIMPORT                        R2 K51 [UDim2.new]
      395 LOADK                            R3 K146 [0.98]
      396 LOADN                            R4 0
      397 LOADK                            R5 K147 [0.287]
      398 LOADN                            R6 0
      399 CALL                             R2 4 1
      400 SETTABLEKS                       R2 R1 K39 ["Position"]
      402 GETIMPORT                        R2 K51 [UDim2.new]
      404 LOADK                            R3 K143 [0.717]
      405 LOADN                            R4 0
      406 LOADK                            R5 K134 [0.355]
      407 LOADN                            R6 0
      408 CALL                             R2 4 1
      409 SETTABLEKS                       R2 R1 K67 ["arrowDestination"]
      411 SETTABLEKS                       R1 R0 K18 ["ButtonStartLabel"]
      413 DUPTABLE                         R1 K89 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      414 GETIMPORT                        R2 K148 [Enum.KeyCode.ButtonL1]
      416 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      418 GETIMPORT                        R2 K51 [UDim2.new]
      420 LOADK                            R3 K149 [0.175]
      421 LOADN                            R4 0
      422 LOADK                            R5 K150 [0.249]
      423 LOADN                            R6 0
      424 CALL                             R2 4 1
      425 SETTABLEKS                       R2 R1 K39 ["Position"]
      427 GETIMPORT                        R2 K51 [UDim2.new]
      429 LOADK                            R3 K151 [0.145]
      430 LOADN                            R4 0
      431 LOADK                            R5 K152 [0.038]
      432 LOADN                            R6 0
      433 CALL                             R2 4 1
      434 SETTABLEKS                       R2 R1 K88 ["Size"]
      436 SETTABLEKS                       R1 R0 K19 ["ButtonL1"]
      438 DUPTABLE                         R1 K155 [{["keyName"] = "L1", ["type"] = "ButtonMapping", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.8}]
      439 GETIMPORT                        R2 K51 [UDim2.new]
      441 LOADK                            R3 K156 [-0.06]
      442 LOADN                            R4 0
      443 LOADK                            R5 K157 [0.245]
      444 LOADN                            R6 0
      445 CALL                             R2 4 1
      446 SETTABLEKS                       R2 R1 K39 ["Position"]
      448 GETIMPORT                        R2 K51 [UDim2.new]
      450 LOADK                            R3 K52 [0.14]
      451 LOADN                            R4 0
      452 LOADK                            R5 K158 [0.25]
      453 LOADN                            R6 0
      454 CALL                             R2 4 1
      455 SETTABLEKS                       R2 R1 K67 ["arrowDestination"]
      457 SETTABLEKS                       R1 R0 K20 ["ButtonL1Label"]
      459 DUPTABLE                         R1 K89 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      460 GETIMPORT                        R2 K159 [Enum.KeyCode.ButtonL2]
      462 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      464 GETIMPORT                        R2 K51 [UDim2.new]
      466 LOADK                            R3 K149 [0.175]
      467 LOADN                            R4 0
      468 LOADK                            R5 K160 [0.202]
      469 LOADN                            R6 0
      470 CALL                             R2 4 1
      471 SETTABLEKS                       R2 R1 K39 ["Position"]
      473 GETIMPORT                        R2 K51 [UDim2.new]
      475 LOADK                            R3 K161 [0.05]
      476 LOADN                            R4 0
      477 LOADK                            R5 K162 [0.045]
      478 LOADN                            R6 0
      479 CALL                             R2 4 1
      480 SETTABLEKS                       R2 R1 K88 ["Size"]
      482 SETTABLEKS                       R1 R0 K21 ["ButtonL2"]
      484 DUPTABLE                         R1 K164 [{["keyName"] = "L2", ["type"] = "ButtonMapping", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.75}]
      485 GETIMPORT                        R2 K51 [UDim2.new]
      487 LOADN                            R3 0
      488 LOADN                            R4 0
      489 LOADK                            R5 K165 [0.18]
      490 LOADN                            R6 0
      491 CALL                             R2 4 1
      492 SETTABLEKS                       R2 R1 K39 ["Position"]
      494 GETIMPORT                        R2 K51 [UDim2.new]
      496 LOADK                            R3 K166 [0.155]
      497 LOADN                            R4 0
      498 LOADK                            R5 K167 [0.21]
      499 LOADN                            R6 0
      500 CALL                             R2 4 1
      501 SETTABLEKS                       R2 R1 K67 ["arrowDestination"]
      503 SETTABLEKS                       R1 R0 K22 ["ButtonL2Label"]
      505 DUPTABLE                         R1 K169 [{["keyCode"], ["type"] = "Trigger", ["Position"], ["Size"]}]
      506 GETIMPORT                        R2 K159 [Enum.KeyCode.ButtonL2]
      508 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      510 GETIMPORT                        R2 K51 [UDim2.new]
      512 LOADK                            R3 K149 [0.175]
      513 LOADN                            R4 0
      514 LOADK                            R5 K161 [0.05]
      515 LOADN                            R6 0
      516 CALL                             R2 4 1
      517 SETTABLEKS                       R2 R1 K39 ["Position"]
      519 GETIMPORT                        R2 K51 [UDim2.new]
      521 LOADK                            R3 K170 [0.069]
      522 LOADN                            R4 0
      523 LOADK                            R5 K171 [0.1]
      524 LOADN                            R6 0
      525 CALL                             R2 4 1
      526 SETTABLEKS                       R2 R1 K88 ["Size"]
      528 SETTABLEKS                       R1 R0 K23 ["TriggerL2"]
      530 DUPTABLE                         R1 K89 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      531 GETIMPORT                        R2 K172 [Enum.KeyCode.ButtonR1]
      533 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      535 GETIMPORT                        R2 K51 [UDim2.new]
      537 LOADK                            R3 K173 [0.825]
      538 LOADN                            R4 0
      539 LOADK                            R5 K150 [0.249]
      540 LOADN                            R6 0
      541 CALL                             R2 4 1
      542 SETTABLEKS                       R2 R1 K39 ["Position"]
      544 GETIMPORT                        R2 K51 [UDim2.new]
      546 LOADK                            R3 K151 [0.145]
      547 LOADN                            R4 0
      548 LOADK                            R5 K152 [0.038]
      549 LOADN                            R6 0
      550 CALL                             R2 4 1
      551 SETTABLEKS                       R2 R1 K88 ["Size"]
      553 SETTABLEKS                       R1 R0 K24 ["ButtonR1"]
      555 DUPTABLE                         R1 K175 [{["keyName"] = "R1", ["type"] = "ButtonMapping", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.8}]
      556 GETIMPORT                        R2 K51 [UDim2.new]
      558 LOADK                            R3 K176 [1.06]
      559 LOADN                            R4 0
      560 LOADK                            R5 K157 [0.245]
      561 LOADN                            R6 0
      562 CALL                             R2 4 1
      563 SETTABLEKS                       R2 R1 K39 ["Position"]
      565 GETIMPORT                        R2 K51 [UDim2.new]
      567 LOADK                            R3 K177 [0.86]
      568 LOADN                            R4 0
      569 LOADK                            R5 K158 [0.25]
      570 LOADN                            R6 0
      571 CALL                             R2 4 1
      572 SETTABLEKS                       R2 R1 K67 ["arrowDestination"]
      574 SETTABLEKS                       R1 R0 K25 ["ButtonR1Label"]
      576 DUPTABLE                         R1 K89 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      577 GETIMPORT                        R2 K178 [Enum.KeyCode.ButtonR2]
      579 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      581 GETIMPORT                        R2 K51 [UDim2.new]
      583 LOADK                            R3 K173 [0.825]
      584 LOADN                            R4 0
      585 LOADK                            R5 K160 [0.202]
      586 LOADN                            R6 0
      587 CALL                             R2 4 1
      588 SETTABLEKS                       R2 R1 K39 ["Position"]
      590 GETIMPORT                        R2 K51 [UDim2.new]
      592 LOADK                            R3 K161 [0.05]
      593 LOADN                            R4 0
      594 LOADK                            R5 K162 [0.045]
      595 LOADN                            R6 0
      596 CALL                             R2 4 1
      597 SETTABLEKS                       R2 R1 K88 ["Size"]
      599 SETTABLEKS                       R1 R0 K26 ["ButtonR2"]
      601 DUPTABLE                         R1 K181 [{["keyName"] = "R2", ["type"] = "ButtonMapping", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.7}]
      602 GETIMPORT                        R2 K51 [UDim2.new]
      604 LOADN                            R3 1
      605 LOADN                            R4 0
      606 LOADK                            R5 K165 [0.18]
      607 LOADN                            R6 0
      608 CALL                             R2 4 1
      609 SETTABLEKS                       R2 R1 K39 ["Position"]
      611 GETIMPORT                        R2 K51 [UDim2.new]
      613 LOADK                            R3 K182 [0.852]
      614 LOADN                            R4 0
      615 LOADK                            R5 K183 [0.212]
      616 LOADN                            R6 0
      617 CALL                             R2 4 1
      618 SETTABLEKS                       R2 R1 K67 ["arrowDestination"]
      620 SETTABLEKS                       R1 R0 K27 ["ButtonR2Label"]
      622 DUPTABLE                         R1 K169 [{["keyCode"], ["type"] = "Trigger", ["Position"], ["Size"]}]
      623 GETIMPORT                        R2 K178 [Enum.KeyCode.ButtonR2]
      625 SETTABLEKS                       R2 R1 K37 ["keyCode"]
      627 GETIMPORT                        R2 K51 [UDim2.new]
      629 LOADK                            R3 K173 [0.825]
      630 LOADN                            R4 0
      631 LOADK                            R5 K161 [0.05]
      632 LOADN                            R6 0
      633 CALL                             R2 4 1
      634 SETTABLEKS                       R2 R1 K39 ["Position"]
      636 GETIMPORT                        R2 K51 [UDim2.new]
      638 LOADK                            R3 K170 [0.069]
      639 LOADN                            R4 0
      640 LOADK                            R5 K171 [0.1]
      641 LOADN                            R6 0
      642 CALL                             R2 4 1
      643 SETTABLEKS                       R2 R1 K88 ["Size"]
      645 SETTABLEKS                       R1 R0 K28 ["TriggerR2"]
      647 RETURN                           R0 1
