PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCameraYInvertValue"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 JUMPIFNOTEQ                      R0 R1 ; [+2]
        7 RETURN                           R0 0
        8 SETUPVAL                         R0 1
        9 GETUPVAL                         R1 2
       10 NAMECALL                         R1 R1 K1 ["GetChildren"]
       12 CALL                             R1 1 3
       13 FORGPREP                         R1
       14 LOADK                            R8 K2 ["InputBinding"]
       15 NAMECALL                         R6 R5 K3 ["IsA"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+12]
       19 GETTABLEKS                       R6 R5 K4 ["Vector2Scale"]
       21 GETIMPORT                        R7 K7 [Vector2.new]
       23 GETTABLEKS                       R8 R6 K8 ["X"]
       25 GETTABLEKS                       R10 R6 K9 ["Y"]
       27 MINUS                            R9 R10
       28 CALL                             R7 2 1
       29 SETTABLEKS                       R7 R5 K4 ["Vector2Scale"]
       31 FORGLOOP                         R1 2 ; [-18]
       33 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["GamepadCameraSensitivity"]
        4 SETTABLEKS                       R1 R0 K1 ["Scale"]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+8]
        8 GETUPVAL                         R0 3
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 3
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K0 ["GamepadCameraSensitivity"]
       14 SETTABLEKS                       R1 R0 K1 ["Scale"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MouseSensitivity"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R0 R1 K1 ["Scale"]
        6 GETUPVAL                         R1 2
        7 SETTABLEKS                       R0 R1 K1 ["Scale"]
        9 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 1
        6 GETTABLEKS                       R2 R1 K3 ["CFrame"]
        8 NAMECALL                         R2 R2 K4 ["ToEulerAnglesYXZ"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R4 R0 K5 ["Y"]
       13 MUL                              R3 R4 R2
       14 LOADN                            R4 0
       15 JUMPIFNOTLE                      R4 R3 ; [+2]
       17 RETURN                           R0 1
       18 FASTCALL1                        MATH_ABS R2 ; [+3]
       19 MOVE                             R8 R2
       20 GETIMPORT                        R7 K12 [math.abs]
       22 CALL                             R7 1 1
       23 MULK                             R6 R7 K9 [2]
       24 DIVK                             R5 R6 K8 [3.14159265358979]
       25 POWK                             R4 R5 K7 [0.75]
       26 SUBRK                            R3 K6 [1] R4
       27 MULK                             R5 R3 K7 [0.75]
       28 ADDK                             R4 R5 K13 [0.25]
       29 GETIMPORT                        R6 K16 [Vector2.new]
       31 LOADN                            R7 1
       32 MOVE                             R8 R4
       33 CALL                             R6 2 1
       34 MUL                              R5 R6 R0
       35 RETURN                           R5 1

PROTO_4:
        0 LOADN                            R1 0
        1 GETUPVAL                         R3 0
        2 ADDK                             R2 R3 K0 [1]
        3 FASTCALL2                        MATH_MAX R1 R2 ; [+3]
        5 GETIMPORT                        R0 K3 [math.max]
        7 CALL                             R0 2 1
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_5:
        0 LOADN                            R1 0
        1 GETUPVAL                         R3 0
        2 SUBK                             R2 R3 K0 [1]
        3 FASTCALL2                        MATH_MAX R1 R2 ; [+3]
        5 GETIMPORT                        R0 K3 [math.max]
        7 CALL                             R0 2 1
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_6:
        0 LOADN                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 LOADN                            R2 0
        3 JUMPIFLT                         R2 R1 ; [+12]
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K0 ["GetState"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R1 R1 K1 ["Magnitude"]
       11 LOADN                            R2 0
       12 JUMPIFLT                         R2 R1 ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 JUMPIFLT                         R2 R1 ; [+2]
        4 LOADB                            R0 0 +1
        5 LOADB                            R0 1
        6 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["GetState"]
        5 CALL                             R2 1 1
        6 MUL                              R1 R2 R0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["PreferredInput"]
       10 GETIMPORT                        R3 K4 [Enum.PreferredInput.Touch]
       12 JUMPIFNOTEQ                      R2 R3 ; [+5]
       14 GETUPVAL                         R2 3
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 MOVE                             R1 R2
       18 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetState"]
        3 CALL                             R2 1 1
        4 MUL                              R1 R2 R0
        5 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+2]
        3 RETURN                           R0 0
        4 SETUPVAL                         R0 0
        5 LOADN                            R1 0
        6 SETUPVAL                         R1 1
        7 GETUPVAL                         R1 0
        8 JUMPIFNOT                        R1 ; [+13]
        9 GETUPVAL                         R1 2
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R1 K0 ["Enabled"]
       13 GETUPVAL                         R1 3
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R1 K0 ["Enabled"]
       17 GETUPVAL                         R1 4
       18 LOADB                            R2 1
       19 SETTABLEKS                       R2 R1 K0 ["Enabled"]
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 2
       23 LOADB                            R2 0
       24 SETTABLEKS                       R2 R1 K0 ["Enabled"]
       26 GETUPVAL                         R1 3
       27 LOADB                            R2 0
       28 SETTABLEKS                       R2 R1 K0 ["Enabled"]
       30 GETUPVAL                         R1 4
       31 LOADB                            R2 0
       32 SETTABLEKS                       R2 R1 K0 ["Enabled"]
       34 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 GETUPVAL                         R0 1
        3 RETURN                           R0 1

PROTO_16:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_17:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K1 [tick]
        4 CALL                             R0 0 1
        5 SETUPVAL                         R0 1
        6 RETURN                           R0 0

PROTO_18:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R1 K1 [tick]
        4 CALL                             R1 0 1
        5 GETUPVAL                         R2 1
        6 SUB                              R0 R1 R2
        7 LOADK                            R1 K2 [0.3]
        8 JUMPIFNOTLT                      R0 R1 ; [+15]
       10 GETUPVAL                         R0 2
       11 JUMPIF                           R0 ; [+9]
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K3 ["GetMouseDelta"]
       15 CALL                             R0 1 1
       16 GETTABLEKS                       R0 R0 K4 ["Magnitude"]
       18 LOADN                            R1 2
       19 JUMPIFNOTLT                      R0 R1 ; [+4]
       21 GETUPVAL                         R1 2
       22 NOT                              R0 R1
       23 SETUPVAL                         R0 2
       24 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 LOADB                            R0 0
        6 SETUPVAL                         R0 1
        7 LOADB                            R0 0
        8 SETUPVAL                         R0 2
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K0 ["Enabled"]
       13 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 0
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContextActionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UserInputService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Players"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [UserSettings]
       21 CALL                             R3 0 1
       22 LOADK                            R5 K8 ["UserGameSettings"]
       23 NAMECALL                         R3 R3 K3 ["GetService"]
       25 CALL                             R3 2 1
       26 GETIMPORT                        R4 K1 [game]
       28 LOADK                            R6 K9 ["VRService"]
       29 NAMECALL                         R4 R4 K3 ["GetService"]
       31 CALL                             R4 2 1
       32 GETIMPORT                        R5 K1 [game]
       34 LOADK                            R7 K10 ["GuiService"]
       35 NAMECALL                         R5 R5 K3 ["GetService"]
       37 CALL                             R5 2 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETIMPORT                        R7 K14 [script]
       42 GETTABLEKS                       R7 R7 K15 ["Parent"]
       44 GETTABLEKS                       R7 R7 K15 ["Parent"]
       46 LOADK                            R9 K16 ["CommonUtils"]
       47 NAMECALL                         R7 R7 K17 ["WaitForChild"]
       49 CALL                             R7 2 -1
       50 CALL                             R6 -1 1
       51 GETTABLEKS                       R7 R6 K18 ["get"]
       53 LOADK                            R8 K19 ["FlagUtil"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R7 K20 ["getUserFlag"]
       57 LOADK                            R9 K21 ["UserPSTextboxResetCameraInput"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R7 K20 ["getUserFlag"]
       61 LOADK                            R10 K22 ["UserPlayerScriptsSupportTVRemoteKeycodes"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K14 [script]
       65 GETTABLEKS                       R10 R10 K15 ["Parent"]
       67 GETTABLEKS                       R10 R10 K15 ["Parent"]
       69 LOADK                            R12 K23 ["InputContexts"]
       70 NAMECALL                         R10 R10 K17 ["WaitForChild"]
       72 CALL                             R10 2 1
       73 LOADK                            R13 K24 ["CameraContext"]
       74 NAMECALL                         R11 R10 K17 ["WaitForChild"]
       76 CALL                             R11 2 1
       77 LOADK                            R14 K25 ["CameraRotationAction"]
       78 NAMECALL                         R12 R11 K17 ["WaitForChild"]
       80 CALL                             R12 2 1
       81 LOADK                            R15 K26 ["CameraZoomAction"]
       82 NAMECALL                         R13 R11 K17 ["WaitForChild"]
       84 CALL                             R13 2 1
       85 LOADK                            R16 K27 ["GamepadBinding"]
       86 NAMECALL                         R14 R12 K17 ["WaitForChild"]
       88 CALL                             R14 2 1
       89 JUMPIFNOT                        R9 ; [+5]
       90 LOADK                            R17 K28 ["MicroGamepadBinding"]
       91 NAMECALL                         R15 R12 K17 ["WaitForChild"]
       93 CALL                             R15 2 1
       94 JUMP                             ; [+1]
       95 LOADNIL                          R15
       96 LOADK                            R18 K29 ["MouseBinding"]
       97 NAMECALL                         R16 R12 K17 ["WaitForChild"]
       99 CALL                             R16 2 1
      100 LOADK                            R19 K30 ["TrackpadBinding"]
      101 NAMECALL                         R17 R12 K17 ["WaitForChild"]
      103 CALL                             R17 2 1
      104 LOADK                            R20 K31 ["CameraToggleAction"]
      105 NAMECALL                         R18 R11 K17 ["WaitForChild"]
      107 CALL                             R18 2 1
      108 LOADK                            R21 K32 ["CameraPanActiveAction"]
      109 NAMECALL                         R19 R11 K17 ["WaitForChild"]
      111 CALL                             R19 2 1
      112 LOADN                            R20 1
      113 NEWCLOSURE                       R21 P0
      114 CAPTURE                          VAL R3
      115 CAPTURE                          REF R20
      116 CAPTURE                          VAL R12
      117 DUPCLOSURE                       R22 K33 [PROTO_1]
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R15
      122 DUPCLOSURE                       R23 K34 [PROTO_2]
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R17
      126 LOADK                            R26 K35 ["GamepadCameraSensitivity"]
      127 NAMECALL                         R24 R3 K36 ["GetPropertyChangedSignal"]
      129 CALL                             R24 2 1
      130 MOVE                             R26 R22
      131 NAMECALL                         R24 R24 K37 ["Connect"]
      133 CALL                             R24 2 0
      134 GETTABLEKS                       R24 R3 K35 ["GamepadCameraSensitivity"]
      136 SETTABLEKS                       R24 R14 K38 ["Scale"]
      138 JUMPIFNOT                        R9 ; [+5]
      139 JUMPIFNOT                        R15 ; [+4]
      140 GETTABLEKS                       R24 R3 K35 ["GamepadCameraSensitivity"]
      142 SETTABLEKS                       R24 R15 K38 ["Scale"]
      144 LOADK                            R26 K39 ["MouseSensitivity"]
      145 NAMECALL                         R24 R3 K36 ["GetPropertyChangedSignal"]
      147 CALL                             R24 2 1
      148 MOVE                             R26 R23
      149 NAMECALL                         R24 R24 K37 ["Connect"]
      151 CALL                             R24 2 0
      152 GETTABLEKS                       R24 R3 K39 ["MouseSensitivity"]
      154 SETTABLEKS                       R24 R16 K38 ["Scale"]
      156 SETTABLEKS                       R24 R17 K38 ["Scale"]
      158 MOVE                             R24 R21
      159 CALL                             R24 0 0
      160 DUPCLOSURE                       R24 K40 [PROTO_3]
      161 NEWTABLE                         R25 16 0
      163 LOADN                            R26 0
      164 NEWCLOSURE                       R27 P4
      165 CAPTURE                          REF R26
      166 NEWCLOSURE                       R28 P5
      167 CAPTURE                          REF R26
      168 NEWCLOSURE                       R29 P6
      169 CAPTURE                          REF R26
      170 NEWCLOSURE                       R30 P7
      171 CAPTURE                          REF R26
      172 CAPTURE                          VAL R12
      173 SETTABLEKS                       R30 R25 K41 ["getRotationActivated"]
      175 NEWCLOSURE                       R30 P8
      176 CAPTURE                          REF R26
      177 SETTABLEKS                       R30 R25 K42 ["getPanActivated"]
      179 DUPCLOSURE                       R30 K43 [PROTO_9]
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R24
      184 SETTABLEKS                       R30 R25 K44 ["getRotation"]
      186 DUPCLOSURE                       R30 K45 [PROTO_10]
      187 CAPTURE                          VAL R13
      188 SETTABLEKS                       R30 R25 K46 ["getZoomDelta"]
      190 GETTABLEKS                       R30 R19 K47 ["Pressed"]
      192 MOVE                             R32 R27
      193 NAMECALL                         R30 R30 K37 ["Connect"]
      195 CALL                             R30 2 0
      196 GETTABLEKS                       R30 R19 K48 ["Released"]
      198 MOVE                             R32 R28
      199 NAMECALL                         R30 R30 K37 ["Connect"]
      201 CALL                             R30 2 0
      202 LOADB                            R30 0
      203 NEWCLOSURE                       R31 P11
      204 CAPTURE                          REF R30
      205 CAPTURE                          REF R26
      206 CAPTURE                          VAL R13
      207 CAPTURE                          VAL R12
      208 CAPTURE                          VAL R19
      209 SETTABLEKS                       R31 R25 K49 ["setInputEnabled"]
      211 NEWCLOSURE                       R31 P12
      212 CAPTURE                          REF R30
      213 SETTABLEKS                       R31 R25 K50 ["getInputEnabled"]
      215 GETTABLEKS                       R31 R1 K51 ["WindowFocused"]
      217 MOVE                             R33 R29
      218 NAMECALL                         R31 R31 K37 ["Connect"]
      220 CALL                             R31 2 0
      221 GETTABLEKS                       R31 R1 K52 ["WindowFocusReleased"]
      223 MOVE                             R33 R29
      224 NAMECALL                         R31 R31 K37 ["Connect"]
      226 CALL                             R31 2 0
      227 GETTABLEKS                       R31 R5 K53 ["MenuOpened"]
      229 MOVE                             R33 R29
      230 NAMECALL                         R31 R31 K37 ["Connect"]
      232 CALL                             R31 2 0
      233 JUMPIFNOT                        R8 ; [+6]
      234 GETTABLEKS                       R31 R1 K54 ["TextBoxFocusReleased"]
      236 MOVE                             R33 R29
      237 NAMECALL                         R31 R31 K37 ["Connect"]
      239 CALL                             R31 2 0
      240 CLOSEUPVALS                      R30
      241 CLOSEUPVALS                      R26
      242 LOADB                            R26 0
      243 LOADB                            R27 0
      244 LOADN                            R28 0
      245 NEWCLOSURE                       R29 P13
      246 CAPTURE                          REF R26
      247 SETTABLEKS                       R29 R25 K55 ["getHoldPan"]
      249 NEWCLOSURE                       R29 P14
      250 CAPTURE                          REF R27
      251 SETTABLEKS                       R29 R25 K56 ["getTogglePan"]
      253 NEWCLOSURE                       R29 P15
      254 CAPTURE                          REF R27
      255 CAPTURE                          REF R26
      256 SETTABLEKS                       R29 R25 K57 ["getPanning"]
      258 NEWCLOSURE                       R29 P16
      259 CAPTURE                          REF R27
      260 SETTABLEKS                       R29 R25 K58 ["setTogglePan"]
      262 LOADB                            R29 0
      263 LOADNIL                          R30
      264 LOADNIL                          R31
      265 GETTABLEKS                       R32 R18 K47 ["Pressed"]
      267 NEWCLOSURE                       R34 P17
      268 CAPTURE                          REF R26
      269 CAPTURE                          REF R28
      270 NAMECALL                         R32 R32 K37 ["Connect"]
      272 CALL                             R32 2 1
      273 MOVE                             R30 R32
      274 GETTABLEKS                       R32 R18 K48 ["Released"]
      276 NEWCLOSURE                       R34 P18
      277 CAPTURE                          REF R26
      278 CAPTURE                          REF R28
      279 CAPTURE                          REF R27
      280 CAPTURE                          VAL R1
      281 NAMECALL                         R32 R32 K37 ["Connect"]
      283 CALL                             R32 2 1
      284 MOVE                             R31 R32
      285 NEWCLOSURE                       R32 P19
      286 CAPTURE                          REF R29
      287 CAPTURE                          REF R26
      288 CAPTURE                          REF R27
      289 CAPTURE                          VAL R18
      290 SETTABLEKS                       R32 R25 K59 ["enableCameraToggleInput"]
      292 NEWCLOSURE                       R32 P20
      293 CAPTURE                          REF R29
      294 CAPTURE                          VAL R18
      295 SETTABLEKS                       R32 R25 K60 ["disableCameraToggleInput"]
      297 CLOSEUPVALS                      R26
      298 CLOSEUPVALS                      R20
      299 RETURN                           R25 1
