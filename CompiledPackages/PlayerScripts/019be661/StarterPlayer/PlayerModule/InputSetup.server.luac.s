PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["InputContexts"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 LOADK                            R4 K2 ["CharacterContext"]
        8 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+1]
       12 RETURN                           R0 0
       13 GETIMPORT                        R3 K5 [Instance.new]
       15 LOADK                            R4 K6 ["InputAction"]
       16 CALL                             R3 1 1
       17 MOVE                             R5 R0
       18 LOADK                            R6 K7 ["Action"]
       19 CONCAT                           R4 R5 R6
       20 SETTABLEKS                       R4 R3 K8 ["Name"]
       22 GETUPVAL                         R4 1
       23 JUMPIFNOT                        R4 ; [+15]
       24 GETIMPORT                        R4 K5 [Instance.new]
       26 LOADK                            R5 K9 ["InputBinding"]
       27 CALL                             R4 1 1
       28 LOADK                            R5 K10 ["ScriptableBinding"]
       29 SETTABLEKS                       R5 R4 K8 ["Name"]
       31 GETUPVAL                         R5 2
       32 JUMPIFNOT                        R5 ; [+4]
       33 GETIMPORT                        R5 K14 [Enum.InputBindingType.Scriptable]
       35 SETTABLEKS                       R5 R4 K15 ["Type"]
       37 SETTABLEKS                       R3 R4 K16 ["Parent"]
       39 SETTABLEKS                       R2 R3 K16 ["Parent"]
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CloneInputsIfAbsent"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R3 R1 K1 ["isEnabled"]
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+36]
       13 LOADK                            R5 K2 ["InputContexts"]
       14 NAMECALL                         R3 R0 K3 ["FindFirstChild"]
       16 CALL                             R3 2 1
       17 JUMPIF                           R3 ; [+7]
       18 GETIMPORT                        R4 K6 [task.spawn]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R0
       23 CALL                             R4 1 0
       24 RETURN                           R0 0
       25 LOADK                            R6 K7 ["CharacterContext"]
       26 NAMECALL                         R4 R3 K3 ["FindFirstChild"]
       28 CALL                             R4 2 1
       29 JUMPIFNOT                        R4 ; [+19]
       30 NAMECALL                         R5 R1 K8 ["GetAbilities"]
       32 CALL                             R5 1 3
       33 FORGPREP                         R5
       34 MOVE                             R13 R9
       35 LOADK                            R14 K9 ["Action"]
       36 CONCAT                           R12 R13 R14
       37 NAMECALL                         R10 R4 K3 ["FindFirstChild"]
       39 CALL                             R10 2 1
       40 JUMPIF                           R10 ; [+6]
       41 GETIMPORT                        R11 K6 [task.spawn]
       43 NEWCLOSURE                       R12 P2
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R9
       46 CALL                             R11 1 0
       47 FORGLOOP                         R5 2 ; [-14]
       49 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["get"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 NAMECALL                         R2 R1 K1 ["isEnabled"]
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R2 ; [+5]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K2 ["SendInputToCCLCharacter"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetPlayers"]
        3 CALL                             R1 1 3
        4 FORGPREP                         R1
        5 GETUPVAL                         R6 1
        6 MOVE                             R7 R5
        7 CALL                             R6 1 0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K1 ["get"]
       11 MOVE                             R7 R5
       12 CALL                             R6 1 1
       13 NAMECALL                         R7 R6 K2 ["isEnabled"]
       15 CALL                             R7 1 1
       16 JUMPIFNOT                        R7 ; [+5]
       17 GETUPVAL                         R7 3
       18 GETTABLEKS                       R7 R7 K3 ["SendInputToCCLCharacter"]
       20 MOVE                             R8 R5
       21 CALL                             R7 1 0
       22 FORGLOOP                         R1 2 ; [-18]
       24 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetPlayers"]
        3 CALL                             R1 1 3
        4 FORGPREP                         R1
        5 GETUPVAL                         R6 1
        6 MOVE                             R7 R5
        7 CALL                             R6 1 0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K1 ["get"]
       11 MOVE                             R7 R5
       12 CALL                             R6 1 1
       13 NAMECALL                         R7 R6 K2 ["isEnabled"]
       15 CALL                             R7 1 1
       16 JUMPIFNOT                        R7 ; [+5]
       17 GETUPVAL                         R7 3
       18 GETTABLEKS                       R7 R7 K3 ["SendInputToCCLCharacter"]
       20 MOVE                             R8 R5
       21 CALL                             R7 1 0
       22 FORGLOOP                         R1 2 ; [-18]
       24 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R0 ; [+17]
        1 LOADK                            R4 K0 ["MicroGamepadBinding"]
        2 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+12]
        6 GETIMPORT                        R2 K4 [Instance.new]
        8 LOADK                            R3 K5 ["InputBinding"]
        9 CALL                             R2 1 1
       10 LOADK                            R3 K0 ["MicroGamepadBinding"]
       11 SETTABLEKS                       R3 R2 K6 ["Name"]
       13 MOVE                             R3 R1
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 SETTABLEKS                       R0 R2 K7 ["Parent"]
       18 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K3 [Enum.KeyCode.ButtonUp]
        2 SETTABLEKS                       R1 R0 K4 ["Up"]
        4 GETIMPORT                        R1 K6 [Enum.KeyCode.ButtonDown]
        6 SETTABLEKS                       R1 R0 K7 ["Down"]
        8 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K3 [Enum.KeyCode.ButtonCenter]
        2 SETTABLEKS                       R1 R0 K1 ["KeyCode"]
        4 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K3 [Enum.KeyCode.ButtonCenter]
        2 SETTABLEKS                       R1 R0 K1 ["KeyCode"]
        4 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 LOADK                            R2 K3 [4.189]
        3 LOADK                            R3 K4 [-3.225]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K5 ["Vector2Scale"]
        7 GETIMPORT                        R1 K9 [Enum.KeyCode.ButtonRight]
        9 SETTABLEKS                       R1 R0 K10 ["Right"]
       11 GETIMPORT                        R1 K12 [Enum.KeyCode.ButtonLeft]
       13 SETTABLEKS                       R1 R0 K13 ["Left"]
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RunService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["StarterPlayer"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [require]
       21 GETIMPORT                        R4 K9 [script]
       23 GETTABLEKS                       R4 R4 K10 ["Parent"]
       25 LOADK                            R6 K11 ["CommonUtils"]
       26 NAMECALL                         R4 R4 K12 ["WaitForChild"]
       28 CALL                             R4 2 -1
       29 CALL                             R3 -1 1
       30 GETTABLEKS                       R4 R3 K13 ["get"]
       32 LOADK                            R5 K14 ["FlagUtil"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R3 K13 ["get"]
       36 LOADK                            R6 K15 ["PlayerModuleEventBus"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R4 K16 ["getUserFlag"]
       40 LOADK                            R7 K17 ["UserPlayerScriptsCCLIntegrationD"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R4 K16 ["getUserFlag"]
       44 LOADK                            R8 K18 ["UserPlayerScriptsUseScriptableBindings"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R4 K16 ["getUserFlag"]
       48 LOADK                            R9 K19 ["UserPlayerScriptsSAuthDirectAPIs2"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R4 K16 ["getUserFlag"]
       52 LOADK                            R10 K20 ["UserPlayerScriptsPlayerControlState2"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R10 R4 K16 ["getUserFlag"]
       56 LOADK                            R11 K21 ["UserPlayerScriptsSupportTVRemoteKeycodes"]
       57 CALL                             R10 1 1
       58 GETTABLEKS                       R11 R4 K16 ["getUserFlag"]
       60 LOADK                            R12 K22 ["UserPSUseBindToAnimation"]
       61 CALL                             R11 1 1
       62 JUMPIFNOT                        R6 ; [+16]
       63 GETIMPORT                        R12 K7 [require]
       65 GETIMPORT                        R13 K9 [script]
       67 GETTABLEKS                       R13 R13 K10 ["Parent"]
       69 LOADK                            R15 K23 ["ControlModule"]
       70 NAMECALL                         R13 R13 K12 ["WaitForChild"]
       72 CALL                             R13 2 1
       73 LOADK                            R15 K24 ["AvatarAbilitiesInterface"]
       74 NAMECALL                         R13 R13 K12 ["WaitForChild"]
       76 CALL                             R13 2 -1
       77 CALL                             R12 -1 1
       78 JUMP                             ; [+1]
       79 LOADNIL                          R12
       80 JUMPIFNOT                        R6 ; [+16]
       81 GETIMPORT                        R13 K7 [require]
       83 GETIMPORT                        R14 K9 [script]
       85 GETTABLEKS                       R14 R14 K10 ["Parent"]
       87 LOADK                            R16 K23 ["ControlModule"]
       88 NAMECALL                         R14 R14 K12 ["WaitForChild"]
       90 CALL                             R14 2 1
       91 LOADK                            R16 K25 ["InputReplication"]
       92 NAMECALL                         R14 R14 K12 ["WaitForChild"]
       94 CALL                             R14 2 -1
       95 CALL                             R13 -1 1
       96 JUMP                             ; [+1]
       97 LOADNIL                          R13
       98 DUPTABLE                         R14 K27 [{["INPUTS_SETUP"] = "INPUTS_SETUP"}]
       99 JUMPIFNOT                        R7 ; [+250]
      100 GETTABLEKS                       R15 R2 K28 ["PlayerModule"]
      102 GETTABLEKS                       R15 R15 K29 ["InputContexts"]
      104 GETTABLEKS                       R15 R15 K30 ["CharacterContext"]
      106 GETTABLEKS                       R16 R2 K28 ["PlayerModule"]
      108 GETTABLEKS                       R16 R16 K29 ["InputContexts"]
      110 GETTABLEKS                       R16 R16 K31 ["CameraContext"]
      112 LOADK                            R19 K32 ["MoveAction"]
      113 NAMECALL                         R17 R15 K33 ["FindFirstChild"]
      115 CALL                             R17 2 1
      116 LOADK                            R20 K34 ["JumpAction"]
      117 NAMECALL                         R18 R15 K33 ["FindFirstChild"]
      119 CALL                             R18 2 1
      120 LOADK                            R21 K35 ["CameraAction"]
      121 NAMECALL                         R19 R16 K33 ["FindFirstChild"]
      123 CALL                             R19 2 1
      124 LOADK                            R22 K36 ["RotationAction"]
      125 NAMECALL                         R20 R15 K33 ["FindFirstChild"]
      127 CALL                             R20 2 1
      128 JUMPIFNOT                        R17 ; [+20]
      129 LOADK                            R23 K37 ["DynamicThumbstickScriptableBinding"]
      130 NAMECALL                         R21 R17 K33 ["FindFirstChild"]
      132 CALL                             R21 2 1
      133 JUMPIF                           R21 ; [+15]
      134 GETIMPORT                        R21 K40 [Instance.new]
      136 LOADK                            R22 K41 ["InputBinding"]
      137 CALL                             R21 1 1
      138 LOADK                            R22 K37 ["DynamicThumbstickScriptableBinding"]
      139 SETTABLEKS                       R22 R21 K42 ["Name"]
      141 JUMPIFNOT                        R8 ; [+4]
      142 GETIMPORT                        R22 K46 [Enum.InputBindingType.Scriptable]
      144 SETTABLEKS                       R22 R21 K47 ["Type"]
      146 SETTABLEKS                       R17 R21 K10 ["Parent"]
      148 JUMP                             ; [+16]
      149 JUMPIFNOT                        R8 ; [+15]
      150 JUMPIFNOT                        R17 ; [+14]
      151 LOADK                            R23 K37 ["DynamicThumbstickScriptableBinding"]
      152 NAMECALL                         R21 R17 K33 ["FindFirstChild"]
      154 CALL                             R21 2 1
      155 JUMPIFNOT                        R21 ; [+9]
      156 LOADK                            R24 K41 ["InputBinding"]
      157 NAMECALL                         R22 R21 K48 ["IsA"]
      159 CALL                             R22 2 1
      160 JUMPIFNOT                        R22 ; [+4]
      161 GETIMPORT                        R22 K46 [Enum.InputBindingType.Scriptable]
      163 SETTABLEKS                       R22 R21 K47 ["Type"]
      165 JUMPIFNOT                        R17 ; [+20]
      166 LOADK                            R23 K49 ["ClassicThumbstickScriptableBinding"]
      167 NAMECALL                         R21 R17 K33 ["FindFirstChild"]
      169 CALL                             R21 2 1
      170 JUMPIF                           R21 ; [+15]
      171 GETIMPORT                        R21 K40 [Instance.new]
      173 LOADK                            R22 K41 ["InputBinding"]
      174 CALL                             R21 1 1
      175 LOADK                            R22 K49 ["ClassicThumbstickScriptableBinding"]
      176 SETTABLEKS                       R22 R21 K42 ["Name"]
      178 JUMPIFNOT                        R8 ; [+4]
      179 GETIMPORT                        R22 K46 [Enum.InputBindingType.Scriptable]
      181 SETTABLEKS                       R22 R21 K47 ["Type"]
      183 SETTABLEKS                       R17 R21 K10 ["Parent"]
      185 JUMP                             ; [+16]
      186 JUMPIFNOT                        R8 ; [+15]
      187 JUMPIFNOT                        R17 ; [+14]
      188 LOADK                            R23 K49 ["ClassicThumbstickScriptableBinding"]
      189 NAMECALL                         R21 R17 K33 ["FindFirstChild"]
      191 CALL                             R21 2 1
      192 JUMPIFNOT                        R21 ; [+9]
      193 LOADK                            R24 K41 ["InputBinding"]
      194 NAMECALL                         R22 R21 K48 ["IsA"]
      196 CALL                             R22 2 1
      197 JUMPIFNOT                        R22 ; [+4]
      198 GETIMPORT                        R22 K46 [Enum.InputBindingType.Scriptable]
      200 SETTABLEKS                       R22 R21 K47 ["Type"]
      202 JUMPIFNOT                        R17 ; [+20]
      203 LOADK                            R23 K50 ["ClickToMoveScriptableBinding"]
      204 NAMECALL                         R21 R17 K33 ["FindFirstChild"]
      206 CALL                             R21 2 1
      207 JUMPIF                           R21 ; [+15]
      208 GETIMPORT                        R21 K40 [Instance.new]
      210 LOADK                            R22 K41 ["InputBinding"]
      211 CALL                             R21 1 1
      212 LOADK                            R22 K50 ["ClickToMoveScriptableBinding"]
      213 SETTABLEKS                       R22 R21 K42 ["Name"]
      215 JUMPIFNOT                        R8 ; [+4]
      216 GETIMPORT                        R22 K46 [Enum.InputBindingType.Scriptable]
      218 SETTABLEKS                       R22 R21 K47 ["Type"]
      220 SETTABLEKS                       R17 R21 K10 ["Parent"]
      222 JUMP                             ; [+16]
      223 JUMPIFNOT                        R8 ; [+15]
      224 JUMPIFNOT                        R17 ; [+14]
      225 LOADK                            R23 K50 ["ClickToMoveScriptableBinding"]
      226 NAMECALL                         R21 R17 K33 ["FindFirstChild"]
      228 CALL                             R21 2 1
      229 JUMPIFNOT                        R21 ; [+9]
      230 LOADK                            R24 K41 ["InputBinding"]
      231 NAMECALL                         R22 R21 K48 ["IsA"]
      233 CALL                             R22 2 1
      234 JUMPIFNOT                        R22 ; [+4]
      235 GETIMPORT                        R22 K46 [Enum.InputBindingType.Scriptable]
      237 SETTABLEKS                       R22 R21 K47 ["Type"]
      239 JUMPIFNOT                        R18 ; [+20]
      240 LOADK                            R23 K50 ["ClickToMoveScriptableBinding"]
      241 NAMECALL                         R21 R18 K33 ["FindFirstChild"]
      243 CALL                             R21 2 1
      244 JUMPIF                           R21 ; [+15]
      245 GETIMPORT                        R21 K40 [Instance.new]
      247 LOADK                            R22 K41 ["InputBinding"]
      248 CALL                             R21 1 1
      249 LOADK                            R22 K50 ["ClickToMoveScriptableBinding"]
      250 SETTABLEKS                       R22 R21 K42 ["Name"]
      252 JUMPIFNOT                        R8 ; [+4]
      253 GETIMPORT                        R22 K46 [Enum.InputBindingType.Scriptable]
      255 SETTABLEKS                       R22 R21 K47 ["Type"]
      257 SETTABLEKS                       R18 R21 K10 ["Parent"]
      259 JUMP                             ; [+16]
      260 JUMPIFNOT                        R8 ; [+15]
      261 JUMPIFNOT                        R18 ; [+14]
      262 LOADK                            R23 K50 ["ClickToMoveScriptableBinding"]
      263 NAMECALL                         R21 R18 K33 ["FindFirstChild"]
      265 CALL                             R21 2 1
      266 JUMPIFNOT                        R21 ; [+9]
      267 LOADK                            R24 K41 ["InputBinding"]
      268 NAMECALL                         R22 R21 K48 ["IsA"]
      270 CALL                             R22 2 1
      271 JUMPIFNOT                        R22 ; [+4]
      272 GETIMPORT                        R22 K46 [Enum.InputBindingType.Scriptable]
      274 SETTABLEKS                       R22 R21 K47 ["Type"]
      276 JUMPIFNOT                        R19 ; [+20]
      277 LOADK                            R23 K51 ["CameraScriptableBinding"]
      278 NAMECALL                         R21 R19 K33 ["FindFirstChild"]
      280 CALL                             R21 2 1
      281 JUMPIF                           R21 ; [+15]
      282 GETIMPORT                        R21 K40 [Instance.new]
      284 LOADK                            R22 K41 ["InputBinding"]
      285 CALL                             R21 1 1
      286 LOADK                            R22 K51 ["CameraScriptableBinding"]
      287 SETTABLEKS                       R22 R21 K42 ["Name"]
      289 JUMPIFNOT                        R8 ; [+4]
      290 GETIMPORT                        R22 K46 [Enum.InputBindingType.Scriptable]
      292 SETTABLEKS                       R22 R21 K47 ["Type"]
      294 SETTABLEKS                       R19 R21 K10 ["Parent"]
      296 JUMP                             ; [+16]
      297 JUMPIFNOT                        R8 ; [+15]
      298 JUMPIFNOT                        R19 ; [+14]
      299 LOADK                            R23 K51 ["CameraScriptableBinding"]
      300 NAMECALL                         R21 R19 K33 ["FindFirstChild"]
      302 CALL                             R21 2 1
      303 JUMPIFNOT                        R21 ; [+9]
      304 LOADK                            R24 K41 ["InputBinding"]
      305 NAMECALL                         R22 R21 K48 ["IsA"]
      307 CALL                             R22 2 1
      308 JUMPIFNOT                        R22 ; [+4]
      309 GETIMPORT                        R22 K46 [Enum.InputBindingType.Scriptable]
      311 SETTABLEKS                       R22 R21 K47 ["Type"]
      313 JUMPIFNOT                        R20 ; [+20]
      314 LOADK                            R23 K52 ["RotationScriptableBinding"]
      315 NAMECALL                         R21 R20 K33 ["FindFirstChild"]
      317 CALL                             R21 2 1
      318 JUMPIF                           R21 ; [+15]
      319 GETIMPORT                        R21 K40 [Instance.new]
      321 LOADK                            R22 K41 ["InputBinding"]
      322 CALL                             R21 1 1
      323 LOADK                            R22 K52 ["RotationScriptableBinding"]
      324 SETTABLEKS                       R22 R21 K42 ["Name"]
      326 JUMPIFNOT                        R8 ; [+4]
      327 GETIMPORT                        R22 K46 [Enum.InputBindingType.Scriptable]
      329 SETTABLEKS                       R22 R21 K47 ["Type"]
      331 SETTABLEKS                       R20 R21 K10 ["Parent"]
      333 JUMP                             ; [+16]
      334 JUMPIFNOT                        R8 ; [+15]
      335 JUMPIFNOT                        R20 ; [+14]
      336 LOADK                            R23 K52 ["RotationScriptableBinding"]
      337 NAMECALL                         R21 R20 K33 ["FindFirstChild"]
      339 CALL                             R21 2 1
      340 JUMPIFNOT                        R21 ; [+9]
      341 LOADK                            R24 K41 ["InputBinding"]
      342 NAMECALL                         R22 R21 K48 ["IsA"]
      344 CALL                             R22 2 1
      345 JUMPIFNOT                        R22 ; [+4]
      346 GETIMPORT                        R22 K46 [Enum.InputBindingType.Scriptable]
      348 SETTABLEKS                       R22 R21 K47 ["Type"]
      350 JUMPIF                           R9 ; [+47]
      351 DUPCLOSURE                       R15 K53 [PROTO_3]
      352 CAPTURE                          VAL R12
      353 CAPTURE                          VAL R7
      354 CAPTURE                          VAL R8
      355 CAPTURE                          VAL R13
      356 DUPCLOSURE                       R16 K54 [PROTO_4]
      357 CAPTURE                          VAL R15
      358 CAPTURE                          VAL R12
      359 CAPTURE                          VAL R13
      360 JUMPIFNOT                        R6 ; [+37]
      361 GETTABLEKS                       R17 R0 K55 ["PlayerAdded"]
      363 MOVE                             R19 R15
      364 NAMECALL                         R17 R17 K56 ["Connect"]
      366 CALL                             R17 2 0
      367 NAMECALL                         R17 R0 K57 ["GetPlayers"]
      369 CALL                             R17 1 3
      370 FORGPREP                         R17
      371 MOVE                             R22 R15
      372 MOVE                             R23 R21
      373 CALL                             R22 1 0
      374 FORGLOOP                         R17 2 ; [-4]
      376 JUMPIFNOT                        R11 ; [+11]
      377 DUPCLOSURE                       R19 K58 [PROTO_5]
      378 CAPTURE                          VAL R0
      379 CAPTURE                          VAL R15
      380 CAPTURE                          VAL R12
      381 CAPTURE                          VAL R13
      382 GETIMPORT                        R20 K61 [Enum.StepFrequency.Hz60]
      384 NAMECALL                         R17 R1 K62 ["BindToAnimation"]
      386 CALL                             R17 3 0
      387 JUMP                             ; [+10]
      388 DUPCLOSURE                       R19 K63 [PROTO_6]
      389 CAPTURE                          VAL R0
      390 CAPTURE                          VAL R15
      391 CAPTURE                          VAL R12
      392 CAPTURE                          VAL R13
      393 GETIMPORT                        R20 K61 [Enum.StepFrequency.Hz60]
      395 NAMECALL                         R17 R1 K64 ["BindToSimulation"]
      397 CALL                             R17 3 0
      398 JUMPIFNOT                        R10 ; [+149]
      399 GETTABLEKS                       R15 R2 K28 ["PlayerModule"]
      401 LOADK                            R17 K29 ["InputContexts"]
      402 NAMECALL                         R15 R15 K33 ["FindFirstChild"]
      404 CALL                             R15 2 1
      405 JUMPIF                           R15 ; [+4]
      406 GETIMPORT                        R16 K66 [warn]
      408 LOADK                            R17 K67 ["PlayerModule: InputContexts not found; skipping TV-remote (MicroGamepad) keycode bindings"]
      409 CALL                             R16 1 0
      410 MOVE                             R16 R15
      411 JUMPIFNOT                        R16 ; [+4]
      412 LOADK                            R18 K30 ["CharacterContext"]
      413 NAMECALL                         R16 R15 K33 ["FindFirstChild"]
      415 CALL                             R16 2 1
      416 MOVE                             R17 R15
      417 JUMPIFNOT                        R17 ; [+4]
      418 LOADK                            R19 K31 ["CameraContext"]
      419 NAMECALL                         R17 R15 K33 ["FindFirstChild"]
      421 CALL                             R17 2 1
      422 DUPCLOSURE                       R18 K68 [PROTO_7]
      423 JUMPIFNOT                        R16 ; [+77]
      424 LOADK                            R21 K32 ["MoveAction"]
      425 NAMECALL                         R19 R16 K33 ["FindFirstChild"]
      427 CALL                             R19 2 1
      428 DUPCLOSURE                       R20 K69 [PROTO_8]
      429 JUMPIFNOT                        R19 ; [+22]
      430 LOADK                            R23 K70 ["MicroGamepadBinding"]
      431 NAMECALL                         R21 R19 K33 ["FindFirstChild"]
      433 CALL                             R21 2 1
      434 JUMPIF                           R21 ; [+17]
      435 GETIMPORT                        R21 K40 [Instance.new]
      437 LOADK                            R22 K41 ["InputBinding"]
      438 CALL                             R21 1 1
      439 LOADK                            R22 K70 ["MicroGamepadBinding"]
      440 SETTABLEKS                       R22 R21 K42 ["Name"]
      442 GETIMPORT                        R22 K73 [Enum.KeyCode.ButtonUp]
      444 SETTABLEKS                       R22 R21 K74 ["Up"]
      446 GETIMPORT                        R22 K76 [Enum.KeyCode.ButtonDown]
      448 SETTABLEKS                       R22 R21 K77 ["Down"]
      450 SETTABLEKS                       R19 R21 K10 ["Parent"]
      452 LOADK                            R21 K34 ["JumpAction"]
      453 NAMECALL                         R19 R16 K33 ["FindFirstChild"]
      455 CALL                             R19 2 1
      456 DUPCLOSURE                       R20 K78 [PROTO_9]
      457 JUMPIFNOT                        R19 ; [+18]
      458 LOADK                            R23 K70 ["MicroGamepadBinding"]
      459 NAMECALL                         R21 R19 K33 ["FindFirstChild"]
      461 CALL                             R21 2 1
      462 JUMPIF                           R21 ; [+13]
      463 GETIMPORT                        R21 K40 [Instance.new]
      465 LOADK                            R22 K41 ["InputBinding"]
      466 CALL                             R21 1 1
      467 LOADK                            R22 K70 ["MicroGamepadBinding"]
      468 SETTABLEKS                       R22 R21 K42 ["Name"]
      470 GETIMPORT                        R22 K80 [Enum.KeyCode.ButtonCenter]
      472 SETTABLEKS                       R22 R21 K71 ["KeyCode"]
      474 SETTABLEKS                       R19 R21 K10 ["Parent"]
      476 LOADK                            R21 K81 ["AbilityAction1"]
      477 NAMECALL                         R19 R16 K33 ["FindFirstChild"]
      479 CALL                             R19 2 1
      480 DUPCLOSURE                       R20 K82 [PROTO_10]
      481 JUMPIFNOT                        R19 ; [+24]
      482 LOADK                            R23 K70 ["MicroGamepadBinding"]
      483 NAMECALL                         R21 R19 K33 ["FindFirstChild"]
      485 CALL                             R21 2 1
      486 JUMPIF                           R21 ; [+19]
      487 GETIMPORT                        R21 K40 [Instance.new]
      489 LOADK                            R22 K41 ["InputBinding"]
      490 CALL                             R21 1 1
      491 LOADK                            R22 K70 ["MicroGamepadBinding"]
      492 SETTABLEKS                       R22 R21 K42 ["Name"]
      494 GETIMPORT                        R22 K80 [Enum.KeyCode.ButtonCenter]
      496 SETTABLEKS                       R22 R21 K71 ["KeyCode"]
      498 SETTABLEKS                       R19 R21 K10 ["Parent"]
      500 JUMP                             ; [+5]
      501 JUMPIFNOT                        R15 ; [+4]
      502 GETIMPORT                        R19 K66 [warn]
      504 LOADK                            R20 K83 ["PlayerModule: CharacterContext not found; skipping TV-remote keycode bindings (ButtonUp/Down/Center) for character controls"]
      505 CALL                             R19 1 0
      506 JUMPIFNOT                        R17 ; [+36]
      507 LOADK                            R21 K84 ["CameraRotationAction"]
      508 NAMECALL                         R19 R17 K33 ["FindFirstChild"]
      510 CALL                             R19 2 1
      511 DUPCLOSURE                       R20 K85 [PROTO_11]
      512 JUMPIFNOT                        R19 ; [+35]
      513 LOADK                            R23 K70 ["MicroGamepadBinding"]
      514 NAMECALL                         R21 R19 K33 ["FindFirstChild"]
      516 CALL                             R21 2 1
      517 JUMPIF                           R21 ; [+30]
      518 GETIMPORT                        R21 K40 [Instance.new]
      520 LOADK                            R22 K41 ["InputBinding"]
      521 CALL                             R21 1 1
      522 LOADK                            R22 K70 ["MicroGamepadBinding"]
      523 SETTABLEKS                       R22 R21 K42 ["Name"]
      525 GETIMPORT                        R22 K87 [Vector2.new]
      527 LOADK                            R23 K88 [4.189]
      528 LOADK                            R24 K89 [-3.225]
      529 CALL                             R22 2 1
      530 SETTABLEKS                       R22 R21 K90 ["Vector2Scale"]
      532 GETIMPORT                        R22 K92 [Enum.KeyCode.ButtonRight]
      534 SETTABLEKS                       R22 R21 K93 ["Right"]
      536 GETIMPORT                        R22 K95 [Enum.KeyCode.ButtonLeft]
      538 SETTABLEKS                       R22 R21 K96 ["Left"]
      540 SETTABLEKS                       R19 R21 K10 ["Parent"]
      542 JUMP                             ; [+5]
      543 JUMPIFNOT                        R15 ; [+4]
      544 GETIMPORT                        R19 K66 [warn]
      546 LOADK                            R20 K97 ["PlayerModule: CameraContext not found; skipping TV-remote keycode bindings (ButtonLeft/Right) for camera rotation"]
      547 CALL                             R19 1 0
      548 GETTABLEKS                       R15 R5 K98 ["data"]
      550 LOADB                            R16 1
      551 SETTABLEKS                       R16 R15 K99 ["inputsSetupComplete"]
      553 LOADK                            R17 K26 ["INPUTS_SETUP"]
      554 NAMECALL                         R15 R5 K100 ["publish"]
      556 CALL                             R15 2 0
      557 RETURN                           R0 0
