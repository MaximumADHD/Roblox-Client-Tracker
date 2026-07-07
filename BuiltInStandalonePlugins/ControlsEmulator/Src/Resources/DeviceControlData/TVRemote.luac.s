MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K10 [{"DeviceImage", "ArrowUp", "ArrowDown", "ArrowLeft", "ArrowRight", "ArrowsMappings", "ButtonCenter", "ButtonCenterLabel", "ButtonBack", "ButtonBackLabel"}]
        2 DUPTABLE                         R1 K17 [{["type"] = "Background", ["srcDark"] = "rbxasset://textures/ControlsEmulator/TVRemote_Dark.png", ["srcLight"] = "rbxasset://textures/ControlsEmulator/TVRemote_Light.png"}]
        3 SETTABLEKS                       R1 R0 K0 ["DeviceImage"]
        5 DUPTABLE                         R1 K22 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
        6 GETIMPORT                        R2 K26 [Enum.KeyCode.DPadUp]
        8 SETTABLEKS                       R2 R1 K18 ["keyCode"]
       10 GETIMPORT                        R2 K29 [UDim2.new]
       12 LOADK                            R3 K30 [0.5]
       13 LOADN                            R4 0
       14 LOADK                            R5 K31 [0.18]
       15 LOADN                            R6 0
       16 CALL                             R2 4 1
       17 SETTABLEKS                       R2 R1 K20 ["Position"]
       19 GETIMPORT                        R2 K29 [UDim2.new]
       21 LOADK                            R3 K32 [0.049]
       22 LOADN                            R4 0
       23 LOADK                            R5 K33 [0.062]
       24 LOADN                            R6 0
       25 CALL                             R2 4 1
       26 SETTABLEKS                       R2 R1 K21 ["Size"]
       28 SETTABLEKS                       R1 R0 K1 ["ArrowUp"]
       30 DUPTABLE                         R1 K22 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
       31 GETIMPORT                        R2 K35 [Enum.KeyCode.DPadDown]
       33 SETTABLEKS                       R2 R1 K18 ["keyCode"]
       35 GETIMPORT                        R2 K29 [UDim2.new]
       37 LOADK                            R3 K30 [0.5]
       38 LOADN                            R4 0
       39 LOADK                            R5 K36 [0.36]
       40 LOADN                            R6 0
       41 CALL                             R2 4 1
       42 SETTABLEKS                       R2 R1 K20 ["Position"]
       44 GETIMPORT                        R2 K29 [UDim2.new]
       46 LOADK                            R3 K32 [0.049]
       47 LOADN                            R4 0
       48 LOADK                            R5 K33 [0.062]
       49 LOADN                            R6 0
       50 CALL                             R2 4 1
       51 SETTABLEKS                       R2 R1 K21 ["Size"]
       53 SETTABLEKS                       R1 R0 K2 ["ArrowDown"]
       55 DUPTABLE                         R1 K22 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
       56 GETIMPORT                        R2 K38 [Enum.KeyCode.DPadLeft]
       58 SETTABLEKS                       R2 R1 K18 ["keyCode"]
       60 GETIMPORT                        R2 K29 [UDim2.new]
       62 LOADK                            R3 K39 [0.4]
       63 LOADN                            R4 0
       64 LOADK                            R5 K40 [0.29]
       65 LOADN                            R6 0
       66 CALL                             R2 4 1
       67 SETTABLEKS                       R2 R1 K20 ["Position"]
       69 GETIMPORT                        R2 K29 [UDim2.new]
       71 LOADK                            R3 K32 [0.049]
       72 LOADN                            R4 0
       73 LOADK                            R5 K33 [0.062]
       74 LOADN                            R6 0
       75 CALL                             R2 4 1
       76 SETTABLEKS                       R2 R1 K21 ["Size"]
       78 SETTABLEKS                       R1 R0 K3 ["ArrowLeft"]
       80 DUPTABLE                         R1 K22 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
       81 GETIMPORT                        R2 K42 [Enum.KeyCode.DPadRight]
       83 SETTABLEKS                       R2 R1 K18 ["keyCode"]
       85 GETIMPORT                        R2 K29 [UDim2.new]
       87 LOADK                            R3 K43 [0.6]
       88 LOADN                            R4 0
       89 LOADK                            R5 K40 [0.29]
       90 LOADN                            R6 0
       91 CALL                             R2 4 1
       92 SETTABLEKS                       R2 R1 K20 ["Position"]
       94 GETIMPORT                        R2 K29 [UDim2.new]
       96 LOADK                            R3 K32 [0.049]
       97 LOADN                            R4 0
       98 LOADK                            R5 K33 [0.062]
       99 LOADN                            R6 0
      100 CALL                             R2 4 1
      101 SETTABLEKS                       R2 R1 K21 ["Size"]
      103 SETTABLEKS                       R1 R0 K4 ["ArrowRight"]
      105 DUPTABLE                         R1 K57 [{["upKeyName"] = "DPad Up", ["downKeyName"] = "DPad Down", ["leftKeyName"] = "DPad Left", ["rightKeyName"] = "DPad Right", ["type"] = "CrossLayoutMappings", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.6}]
      106 GETIMPORT                        R2 K29 [UDim2.new]
      108 LOADK                            R3 K58 [0.1]
      109 LOADN                            R4 0
      110 LOADK                            R5 K59 [0.346]
      111 LOADN                            R6 0
      112 CALL                             R2 4 1
      113 SETTABLEKS                       R2 R1 K20 ["Position"]
      115 GETIMPORT                        R2 K29 [UDim2.new]
      117 LOADK                            R3 K39 [0.4]
      118 LOADN                            R4 0
      119 LOADK                            R5 K40 [0.29]
      120 LOADN                            R6 0
      121 CALL                             R2 4 1
      122 SETTABLEKS                       R2 R1 K55 ["arrowDestination"]
      124 SETTABLEKS                       R1 R0 K5 ["ArrowsMappings"]
      126 DUPTABLE                         R1 K22 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      127 GETIMPORT                        R2 K61 [Enum.KeyCode.Return]
      129 SETTABLEKS                       R2 R1 K18 ["keyCode"]
      131 GETIMPORT                        R2 K29 [UDim2.new]
      133 LOADK                            R3 K30 [0.5]
      134 LOADN                            R4 0
      135 LOADK                            R5 K62 [0.28]
      136 LOADN                            R6 0
      137 CALL                             R2 4 1
      138 SETTABLEKS                       R2 R1 K20 ["Position"]
      140 GETIMPORT                        R2 K29 [UDim2.new]
      142 LOADN                            R3 0
      143 LOADN                            R4 0
      144 LOADN                            R5 0
      145 LOADN                            R6 0
      146 CALL                             R2 4 1
      147 SETTABLEKS                       R2 R1 K21 ["Size"]
      149 SETTABLEKS                       R1 R0 K6 ["ButtonCenter"]
      151 DUPTABLE                         R1 K68 [{["keyName"] = "TV Center", ["type"] = "ButtonMapping", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.55}]
      152 GETIMPORT                        R2 K29 [UDim2.new]
      154 LOADK                            R3 K69 [0.92]
      155 LOADN                            R4 0
      156 LOADK                            R5 K59 [0.346]
      157 LOADN                            R6 0
      158 CALL                             R2 4 1
      159 SETTABLEKS                       R2 R1 K20 ["Position"]
      161 GETIMPORT                        R2 K29 [UDim2.new]
      163 LOADK                            R3 K30 [0.5]
      164 LOADN                            R4 0
      165 LOADK                            R5 K62 [0.28]
      166 LOADN                            R6 0
      167 CALL                             R2 4 1
      168 SETTABLEKS                       R2 R1 K55 ["arrowDestination"]
      170 SETTABLEKS                       R1 R0 K7 ["ButtonCenterLabel"]
      172 DUPTABLE                         R1 K22 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      173 GETIMPORT                        R2 K71 [Enum.KeyCode.Escape]
      175 SETTABLEKS                       R2 R1 K18 ["keyCode"]
      177 GETIMPORT                        R2 K29 [UDim2.new]
      179 LOADK                            R3 K72 [0.42]
      180 LOADN                            R4 0
      181 LOADK                            R5 K73 [0.49]
      182 LOADN                            R6 0
      183 CALL                             R2 4 1
      184 SETTABLEKS                       R2 R1 K20 ["Position"]
      186 GETIMPORT                        R2 K29 [UDim2.new]
      188 LOADK                            R3 K32 [0.049]
      189 LOADN                            R4 0
      190 LOADK                            R5 K33 [0.062]
      191 LOADN                            R6 0
      192 CALL                             R2 4 1
      193 SETTABLEKS                       R2 R1 K21 ["Size"]
      195 SETTABLEKS                       R1 R0 K8 ["ButtonBack"]
      197 DUPTABLE                         R1 K75 [{["keyName"] = "TV Back", ["type"] = "ButtonMapping", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.6}]
      198 GETIMPORT                        R2 K29 [UDim2.new]
      200 LOADK                            R3 K58 [0.1]
      201 LOADN                            R4 0
      202 LOADK                            R5 K76 [0.595]
      203 LOADN                            R6 0
      204 CALL                             R2 4 1
      205 SETTABLEKS                       R2 R1 K20 ["Position"]
      207 GETIMPORT                        R2 K29 [UDim2.new]
      209 LOADK                            R3 K72 [0.42]
      210 LOADN                            R4 0
      211 LOADK                            R5 K73 [0.49]
      212 LOADN                            R6 0
      213 CALL                             R2 4 1
      214 SETTABLEKS                       R2 R1 K55 ["arrowDestination"]
      216 SETTABLEKS                       R1 R0 K9 ["ButtonBackLabel"]
      218 RETURN                           R0 1
