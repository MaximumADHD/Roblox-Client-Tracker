MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K9 ["getEngineFeatureEnableMicroGamepadKeycodes"]
       18 MOVE                             R2 R1
       19 CALL                             R2 0 1
       20 DUPTABLE                         R3 K20 [{"DeviceImage", "ArrowUp", "ArrowDown", "ArrowLeft", "ArrowRight", "ArrowsMappings", "ButtonCenter", "ButtonCenterLabel", "ButtonBack", "ButtonBackLabel"}]
       21 DUPTABLE                         R4 K27 [{["type"] = "Background", ["srcDark"] = "rbxasset://textures/ControlsEmulator/TVRemote_Dark.png", ["srcLight"] = "rbxasset://textures/ControlsEmulator/TVRemote_Light.png"}]
       22 SETTABLEKS                       R4 R3 K10 ["DeviceImage"]
       24 DUPTABLE                         R4 K32 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
       25 JUMPIFNOT                        R2 ; [+3]
       26 GETIMPORT                        R5 K36 [Enum.KeyCode.ButtonUp]
       28 JUMP                             ; [+2]
       29 GETIMPORT                        R5 K38 [Enum.KeyCode.DPadUp]
       31 SETTABLEKS                       R5 R4 K28 ["keyCode"]
       33 GETIMPORT                        R5 K41 [UDim2.new]
       35 LOADK                            R6 K42 [0.5]
       36 LOADN                            R7 0
       37 LOADK                            R8 K43 [0.18]
       38 LOADN                            R9 0
       39 CALL                             R5 4 1
       40 SETTABLEKS                       R5 R4 K30 ["Position"]
       42 GETIMPORT                        R5 K41 [UDim2.new]
       44 LOADK                            R6 K44 [0.049]
       45 LOADN                            R7 0
       46 LOADK                            R8 K45 [0.062]
       47 LOADN                            R9 0
       48 CALL                             R5 4 1
       49 SETTABLEKS                       R5 R4 K31 ["Size"]
       51 SETTABLEKS                       R4 R3 K11 ["ArrowUp"]
       53 DUPTABLE                         R4 K32 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
       54 JUMPIFNOT                        R2 ; [+3]
       55 GETIMPORT                        R5 K47 [Enum.KeyCode.ButtonDown]
       57 JUMP                             ; [+2]
       58 GETIMPORT                        R5 K49 [Enum.KeyCode.DPadDown]
       60 SETTABLEKS                       R5 R4 K28 ["keyCode"]
       62 GETIMPORT                        R5 K41 [UDim2.new]
       64 LOADK                            R6 K42 [0.5]
       65 LOADN                            R7 0
       66 LOADK                            R8 K50 [0.36]
       67 LOADN                            R9 0
       68 CALL                             R5 4 1
       69 SETTABLEKS                       R5 R4 K30 ["Position"]
       71 GETIMPORT                        R5 K41 [UDim2.new]
       73 LOADK                            R6 K44 [0.049]
       74 LOADN                            R7 0
       75 LOADK                            R8 K45 [0.062]
       76 LOADN                            R9 0
       77 CALL                             R5 4 1
       78 SETTABLEKS                       R5 R4 K31 ["Size"]
       80 SETTABLEKS                       R4 R3 K12 ["ArrowDown"]
       82 DUPTABLE                         R4 K32 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
       83 JUMPIFNOT                        R2 ; [+3]
       84 GETIMPORT                        R5 K52 [Enum.KeyCode.ButtonLeft]
       86 JUMP                             ; [+2]
       87 GETIMPORT                        R5 K54 [Enum.KeyCode.DPadLeft]
       89 SETTABLEKS                       R5 R4 K28 ["keyCode"]
       91 GETIMPORT                        R5 K41 [UDim2.new]
       93 LOADK                            R6 K55 [0.4]
       94 LOADN                            R7 0
       95 LOADK                            R8 K56 [0.29]
       96 LOADN                            R9 0
       97 CALL                             R5 4 1
       98 SETTABLEKS                       R5 R4 K30 ["Position"]
      100 GETIMPORT                        R5 K41 [UDim2.new]
      102 LOADK                            R6 K44 [0.049]
      103 LOADN                            R7 0
      104 LOADK                            R8 K45 [0.062]
      105 LOADN                            R9 0
      106 CALL                             R5 4 1
      107 SETTABLEKS                       R5 R4 K31 ["Size"]
      109 SETTABLEKS                       R4 R3 K13 ["ArrowLeft"]
      111 DUPTABLE                         R4 K32 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      112 JUMPIFNOT                        R2 ; [+3]
      113 GETIMPORT                        R5 K58 [Enum.KeyCode.ButtonRight]
      115 JUMP                             ; [+2]
      116 GETIMPORT                        R5 K60 [Enum.KeyCode.DPadRight]
      118 SETTABLEKS                       R5 R4 K28 ["keyCode"]
      120 GETIMPORT                        R5 K41 [UDim2.new]
      122 LOADK                            R6 K61 [0.6]
      123 LOADN                            R7 0
      124 LOADK                            R8 K56 [0.29]
      125 LOADN                            R9 0
      126 CALL                             R5 4 1
      127 SETTABLEKS                       R5 R4 K30 ["Position"]
      129 GETIMPORT                        R5 K41 [UDim2.new]
      131 LOADK                            R6 K44 [0.049]
      132 LOADN                            R7 0
      133 LOADK                            R8 K45 [0.062]
      134 LOADN                            R9 0
      135 CALL                             R5 4 1
      136 SETTABLEKS                       R5 R4 K31 ["Size"]
      138 SETTABLEKS                       R4 R3 K14 ["ArrowRight"]
      140 DUPTABLE                         R4 K71 [{["upKeyName"], ["downKeyName"], ["leftKeyName"], ["rightKeyName"], ["type"] = "CrossLayoutMappings", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.6}]
      141 JUMPIFNOT                        R2 ; [+2]
      142 LOADK                            R5 K72 ["TV Up"]
      143 JUMP                             ; [+1]
      144 LOADK                            R5 K73 ["DPad Up"]
      145 SETTABLEKS                       R5 R4 K62 ["upKeyName"]
      147 JUMPIFNOT                        R2 ; [+2]
      148 LOADK                            R5 K74 ["TV Down"]
      149 JUMP                             ; [+1]
      150 LOADK                            R5 K75 ["DPad Down"]
      151 SETTABLEKS                       R5 R4 K63 ["downKeyName"]
      153 JUMPIFNOT                        R2 ; [+2]
      154 LOADK                            R5 K76 ["TV Left"]
      155 JUMP                             ; [+1]
      156 LOADK                            R5 K77 ["DPad Left"]
      157 SETTABLEKS                       R5 R4 K64 ["leftKeyName"]
      159 JUMPIFNOT                        R2 ; [+2]
      160 LOADK                            R5 K78 ["TV Right"]
      161 JUMP                             ; [+1]
      162 LOADK                            R5 K79 ["DPad Right"]
      163 SETTABLEKS                       R5 R4 K65 ["rightKeyName"]
      165 GETIMPORT                        R5 K41 [UDim2.new]
      167 LOADK                            R6 K80 [0.1]
      168 LOADN                            R7 0
      169 LOADK                            R8 K81 [0.346]
      170 LOADN                            R9 0
      171 CALL                             R5 4 1
      172 SETTABLEKS                       R5 R4 K30 ["Position"]
      174 GETIMPORT                        R5 K41 [UDim2.new]
      176 LOADK                            R6 K55 [0.4]
      177 LOADN                            R7 0
      178 LOADK                            R8 K56 [0.29]
      179 LOADN                            R9 0
      180 CALL                             R5 4 1
      181 SETTABLEKS                       R5 R4 K69 ["arrowDestination"]
      183 SETTABLEKS                       R4 R3 K15 ["ArrowsMappings"]
      185 DUPTABLE                         R4 K32 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      186 JUMPIFNOT                        R2 ; [+3]
      187 GETIMPORT                        R5 K82 [Enum.KeyCode.ButtonCenter]
      189 JUMP                             ; [+2]
      190 GETIMPORT                        R5 K84 [Enum.KeyCode.Return]
      192 SETTABLEKS                       R5 R4 K28 ["keyCode"]
      194 GETIMPORT                        R5 K41 [UDim2.new]
      196 LOADK                            R6 K42 [0.5]
      197 LOADN                            R7 0
      198 LOADK                            R8 K85 [0.28]
      199 LOADN                            R9 0
      200 CALL                             R5 4 1
      201 SETTABLEKS                       R5 R4 K30 ["Position"]
      203 GETIMPORT                        R5 K41 [UDim2.new]
      205 LOADK                            R6 K44 [0.049]
      206 LOADN                            R7 0
      207 LOADK                            R8 K45 [0.062]
      208 LOADN                            R9 0
      209 CALL                             R5 4 1
      210 SETTABLEKS                       R5 R4 K31 ["Size"]
      212 SETTABLEKS                       R4 R3 K16 ["ButtonCenter"]
      214 DUPTABLE                         R4 K91 [{["keyName"] = "TV Center", ["type"] = "ButtonMapping", ["side"] = "Right", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.55}]
      215 GETIMPORT                        R5 K41 [UDim2.new]
      217 LOADK                            R6 K92 [0.92]
      218 LOADN                            R7 0
      219 LOADK                            R8 K81 [0.346]
      220 LOADN                            R9 0
      221 CALL                             R5 4 1
      222 SETTABLEKS                       R5 R4 K30 ["Position"]
      224 GETIMPORT                        R5 K41 [UDim2.new]
      226 LOADK                            R6 K42 [0.5]
      227 LOADN                            R7 0
      228 LOADK                            R8 K85 [0.28]
      229 LOADN                            R9 0
      230 CALL                             R5 4 1
      231 SETTABLEKS                       R5 R4 K69 ["arrowDestination"]
      233 SETTABLEKS                       R4 R3 K17 ["ButtonCenterLabel"]
      235 DUPTABLE                         R4 K32 [{["keyCode"], ["type"] = "Button", ["Position"], ["Size"]}]
      236 JUMPIFNOT                        R2 ; [+3]
      237 GETIMPORT                        R5 K93 [Enum.KeyCode.ButtonBack]
      239 JUMP                             ; [+2]
      240 GETIMPORT                        R5 K95 [Enum.KeyCode.Escape]
      242 SETTABLEKS                       R5 R4 K28 ["keyCode"]
      244 GETIMPORT                        R5 K41 [UDim2.new]
      246 LOADK                            R6 K96 [0.42]
      247 LOADN                            R7 0
      248 LOADK                            R8 K97 [0.49]
      249 LOADN                            R9 0
      250 CALL                             R5 4 1
      251 SETTABLEKS                       R5 R4 K30 ["Position"]
      253 GETIMPORT                        R5 K41 [UDim2.new]
      255 LOADK                            R6 K44 [0.049]
      256 LOADN                            R7 0
      257 LOADK                            R8 K45 [0.062]
      258 LOADN                            R9 0
      259 CALL                             R5 4 1
      260 SETTABLEKS                       R5 R4 K31 ["Size"]
      262 SETTABLEKS                       R4 R3 K18 ["ButtonBack"]
      264 DUPTABLE                         R4 K99 [{["keyName"] = "TV Back", ["type"] = "ButtonMapping", ["side"] = "Left", ["Position"], ["arrowDestination"], ["arrowBendPoint"] = 0.6}]
      265 GETIMPORT                        R5 K41 [UDim2.new]
      267 LOADK                            R6 K80 [0.1]
      268 LOADN                            R7 0
      269 LOADK                            R8 K100 [0.595]
      270 LOADN                            R9 0
      271 CALL                             R5 4 1
      272 SETTABLEKS                       R5 R4 K30 ["Position"]
      274 GETIMPORT                        R5 K41 [UDim2.new]
      276 LOADK                            R6 K96 [0.42]
      277 LOADN                            R7 0
      278 LOADK                            R8 K97 [0.49]
      279 LOADN                            R9 0
      280 CALL                             R5 4 1
      281 SETTABLEKS                       R5 R4 K69 ["arrowDestination"]
      283 SETTABLEKS                       R4 R3 K19 ["ButtonBackLabel"]
      285 RETURN                           R3 1
