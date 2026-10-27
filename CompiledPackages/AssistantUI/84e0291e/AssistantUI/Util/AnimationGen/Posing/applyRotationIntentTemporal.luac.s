PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+5]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 JUMP                             ; [+2]
        6 NEWTABLE                         R3 0 0
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R0
       10 CALL                             R4 1 1
       11 NEWTABLE                         R5 0 0
       13 MOVE                             R6 R2
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 GETUPVAL                         R12 1
       18 GETTABLE                         R11 R12 R10
       19 JUMPIFNOT                        R11 ; [+23]
       20 GETTABLE                         R11 R4 R10
       21 JUMPIFEQKNIL                     R11 ; [+21]
       23 GETTABLE                         R12 R3 R10
       24 JUMPIFEQKNIL                     R1 ; [+11]
       26 JUMPIFEQKNIL                     R12 ; [+9]
       28 GETTABLEKS                       R13 R12 K0 ["CFrame"]
       30 GETTABLEKS                       R15 R11 K0 ["CFrame"]
       32 NAMECALL                         R13 R13 K1 ["FuzzyEq"]
       34 CALL                             R13 2 1
       35 JUMPIF                           R13 ; [+7]
       36 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       38 MOVE                             R14 R5
       39 MOVE                             R15 R10
       40 GETIMPORT                        R13 K4 [table.insert]
       42 CALL                             R13 2 0
       43 FORGLOOP                         R6 2 ; [-27]
       45 GETIMPORT                        R6 K6 [table.sort]
       47 MOVE                             R7 R5
       48 CALL                             R6 1 0
       49 RETURN                           R5 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["GetComponents"]
        2 CALL                             R1 1 12
        3 NEWTABLE                         R13 0 3
        5 NEWTABLE                         R14 0 3
        7 MOVE                             R15 R4
        8 MOVE                             R16 R5
        9 MOVE                             R17 R6
       10 SETLIST                          R14 R15 3 [1]
       12 NEWTABLE                         R15 0 3
       14 MOVE                             R16 R7
       15 MOVE                             R17 R8
       16 MOVE                             R18 R9
       17 SETLIST                          R15 R16 3 [1]
       19 NEWTABLE                         R16 0 3
       21 MOVE                             R17 R10
       22 MOVE                             R18 R11
       23 MOVE                             R19 R12
       24 SETLIST                          R16 R17 3 [1]
       26 SETLIST                          R13 R14 3 [1]
       28 RETURN                           R13 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [CFrame.new]
        2 GETTABLEKS                       R3 R1 K3 ["X"]
        4 GETTABLEKS                       R4 R1 K4 ["Y"]
        6 GETTABLEKS                       R5 R1 K5 ["Z"]
        8 GETTABLEN                        R7 R0 1
        9 GETTABLEN                        R6 R7 1
       10 GETTABLEN                        R8 R0 1
       11 GETTABLEN                        R7 R8 2
       12 GETTABLEN                        R9 R0 1
       13 GETTABLEN                        R8 R9 3
       14 GETTABLEN                        R10 R0 2
       15 GETTABLEN                        R9 R10 1
       16 GETTABLEN                        R11 R0 2
       17 GETTABLEN                        R10 R11 2
       18 GETTABLEN                        R12 R0 2
       19 GETTABLEN                        R11 R12 3
       20 GETTABLEN                        R13 R0 3
       21 GETTABLEN                        R12 R13 1
       22 GETTABLEN                        R14 R0 3
       23 GETTABLEN                        R13 R14 2
       24 GETTABLEN                        R15 R0 3
       25 GETTABLEN                        R14 R15 3
       26 CALL                             R2 12 -1
       27 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["buildFrameRotations"]
        3 DUPTABLE                         R1 K4 [{"centerTargets", "priorLocalRotations", "jointIndices"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["centerTargets"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["priorLocalRotations"]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K3 ["jointIndices"]
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1

PROTO_4:
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        3 LOADB                            R2 0
        4 RETURN                           R2 1
        5 NEWTABLE                         R2 0 0
        7 NEWTABLE                         R3 0 0
        9 MOVE                             R4 R1
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETTABLEKS                       R9 R8 K1 ["rotateJointNames"]
       15 GETUPVAL                         R10 0
       16 GETTABLEKS                       R11 R8 K2 ["authored"]
       18 GETTABLEKS                       R12 R8 K3 ["baseline"]
       20 MOVE                             R13 R9
       21 CALL                             R10 3 3
       22 FORGPREP                         R10
       23 GETTABLE                         R15 R2 R14
       24 JUMPIF                           R15 ; [+9]
       25 LOADB                            R15 1
       26 SETTABLE                         R15 R2 R14
       27 FASTCALL2                        TABLE_INSERT R3 R14 ; [+5]
       29 MOVE                             R16 R3
       30 MOVE                             R17 R14
       31 GETIMPORT                        R15 K6 [table.insert]
       33 CALL                             R15 2 0
       34 FORGLOOP                         R10 2 ; [-12]
       36 FORGLOOP                         R4 2 ; [-24]
       38 GETIMPORT                        R4 K8 [table.sort]
       40 MOVE                             R5 R3
       41 CALL                             R4 1 0
       42 LENGTH                           R4 R3
       43 JUMPIFNOTEQKN                    R4 K0 [0] ; [+3]
       45 LOADB                            R4 0
       46 RETURN                           R4 1
       47 GETUPVAL                         R4 1
       48 MOVE                             R5 R0
       49 CALL                             R4 1 1
       50 LENGTH                           R5 R4
       51 JUMPIFNOTEQKN                    R5 K0 [0] ; [+3]
       53 LOADB                            R5 0
       54 RETURN                           R5 1
       55 LOADN                            R5 0
       56 MOVE                             R6 R4
       57 LOADNIL                          R7
       58 LOADNIL                          R8
       59 FORGPREP                         R6
       60 MOVE                             R12 R5
       61 GETUPVAL                         R13 2
       62 GETTABLEKS                       R13 R13 K9 ["timeToFrameIndex"]
       64 GETTABLEKS                       R14 R10 K10 ["Time"]
       66 CALL                             R13 1 -1
       67 FASTCALL                         MATH_MAX ; [+2]
       68 GETIMPORT                        R11 K13 [math.max]
       70 CALL                             R11 -1 1
       71 MOVE                             R5 R11
       72 FORGLOOP                         R6 2 ; [-13]
       74 MOVE                             R6 R1
       75 LOADNIL                          R7
       76 LOADNIL                          R8
       77 FORGPREP                         R6
       78 MOVE                             R12 R5
       79 GETUPVAL                         R13 2
       80 GETTABLEKS                       R13 R13 K9 ["timeToFrameIndex"]
       82 GETTABLEKS                       R14 R10 K14 ["time"]
       84 CALL                             R13 1 -1
       85 FASTCALL                         MATH_MAX ; [+2]
       86 GETIMPORT                        R11 K13 [math.max]
       88 CALL                             R11 -1 1
       89 MOVE                             R5 R11
       90 FORGLOOP                         R6 2 ; [-13]
       92 ADDK                             R6 R5 K15 [1]
       93 GETIMPORT                        R7 K17 [table.create]
       95 LENGTH                           R8 R3
       96 CALL                             R7 1 1
       97 LOADN                            R10 1
       98 LENGTH                           R8 R3
       99 LOADN                            R9 1
      100 FORNPREP                         R8
      101 SUBK                             R11 R10 K15 [1]
      102 SETTABLE                         R11 R7 R10
      103 FORNLOOP                         R8
      104 GETUPVAL                         R8 3
      105 GETIMPORT                        R9 K20 [CFrame.identity]
      107 CALL                             R8 1 1
      108 GETIMPORT                        R9 K17 [table.create]
      110 MOVE                             R10 R6
      111 CALL                             R9 1 1
      112 LOADN                            R12 0
      113 SUBK                             R10 R6 K15 [1]
      114 LOADN                            R11 1
      115 FORNPREP                         R10
      116 GETIMPORT                        R13 K17 [table.create]
      118 LENGTH                           R14 R3
      119 CALL                             R13 1 1
      120 GETUPVAL                         R15 4
      121 DIV                              R14 R12 R15
      122 MOVE                             R15 R3
      123 LOADNIL                          R16
      124 LOADNIL                          R17
      125 FORGPREP                         R15
      126 GETUPVAL                         R20 5
      127 GETTABLEKS                       R20 R20 K21 ["samplePoseCFrame"]
      129 MOVE                             R21 R4
      130 MOVE                             R22 R19
      131 MOVE                             R23 R14
      132 CALL                             R20 3 1
      133 JUMPIFEQKNIL                     R20 ; [+5]
      135 GETUPVAL                         R21 3
      136 MOVE                             R22 R20
      137 CALL                             R21 1 1
      138 JUMP                             ; [+1]
      139 MOVE                             R21 R8
      140 SETTABLE                         R21 R13 R18
      141 FORGLOOP                         R15 2 ; [-16]
      143 ADDK                             R15 R12 K15 [1]
      144 SETTABLE                         R13 R9 R15
      145 FORNLOOP                         R10
      146 NEWTABLE                         R10 0 0
      148 MOVE                             R11 R1
      149 LOADNIL                          R12
      150 LOADNIL                          R13
      151 FORGPREP                         R11
      152 GETUPVAL                         R16 2
      153 GETTABLEKS                       R16 R16 K9 ["timeToFrameIndex"]
      155 GETTABLEKS                       R17 R15 K14 ["time"]
      157 CALL                             R16 1 1
      158 GETUPVAL                         R17 6
      159 GETTABLEKS                       R18 R15 K2 ["authored"]
      161 CALL                             R17 1 1
      162 GETTABLEKS                       R18 R15 K1 ["rotateJointNames"]
      164 GETUPVAL                         R19 0
      165 GETTABLEKS                       R20 R15 K2 ["authored"]
      167 GETTABLEKS                       R21 R15 K3 ["baseline"]
      169 MOVE                             R22 R18
      170 CALL                             R19 3 1
      171 NEWTABLE                         R20 0 0
      173 MOVE                             R21 R19
      174 LOADNIL                          R22
      175 LOADNIL                          R23
      176 FORGPREP                         R21
      177 LOADB                            R26 1
      178 SETTABLE                         R26 R20 R25
      179 FORGLOOP                         R21 2 ; [-3]
      181 GETIMPORT                        R21 K17 [table.create]
      183 LENGTH                           R22 R3
      184 CALL                             R21 1 1
      185 ADDK                             R23 R16 K15 [1]
      186 GETTABLE                         R22 R9 R23
      187 MOVE                             R23 R3
      188 LOADNIL                          R24
      189 LOADNIL                          R25
      190 FORGPREP                         R23
      191 GETTABLE                         R28 R20 R27
      192 JUMPIFNOT                        R28 ; [+10]
      193 GETTABLE                         R28 R17 R27
      194 JUMPIFEQKNIL                     R28 ; [+8]
      196 GETUPVAL                         R28 3
      197 GETTABLE                         R29 R17 R27
      198 GETTABLEKS                       R29 R29 K18 ["CFrame"]
      200 CALL                             R28 1 1
      201 SETTABLE                         R28 R21 R26
      202 JUMP                             ; [+2]
      203 GETTABLE                         R28 R22 R26
      204 SETTABLE                         R28 R21 R26
      205 FORGLOOP                         R23 2 ; [-15]
      207 GETTABLE                         R23 R10 R16
      208 JUMPIFNOTEQKNIL                  R23 ; [+3]
      210 SETTABLE                         R21 R10 R16
      211 JUMP                             ; [+10]
      212 MOVE                             R24 R3
      213 LOADNIL                          R25
      214 LOADNIL                          R26
      215 FORGPREP                         R24
      216 GETTABLE                         R29 R20 R28
      217 JUMPIFNOT                        R29 ; [+2]
      218 GETTABLE                         R29 R21 R27
      219 SETTABLE                         R29 R23 R27
      220 FORGLOOP                         R24 2 ; [-5]
      222 FORGLOOP                         R11 2 ; [-71]
      224 GETIMPORT                        R11 K23 [pcall]
      226 NEWCLOSURE                       R12 P0
      227 CAPTURE                          UPVAL U7
      228 CAPTURE                          VAL R10
      229 CAPTURE                          VAL R9
      230 CAPTURE                          VAL R7
      231 CALL                             R11 1 2
      232 JUMPIFNOT                        R11 ; [+2]
      233 JUMPIFNOTEQKNIL                  R12 ; [+8]
      235 GETIMPORT                        R13 K25 [warn]
      237 LOADK                            R14 K26 ["[AnimationGen] local RotationIntentTemporal.buildFrameRotations failed:"]
      238 MOVE                             R15 R12
      239 CALL                             R13 2 0
      240 LOADB                            R13 0
      241 RETURN                           R13 1
      242 GETUPVAL                         R13 5
      243 GETTABLEKS                       R13 R13 K27 ["findNearestKeyframe"]
      245 MOVE                             R14 R4
      246 GETTABLEN                        R15 R1 1
      247 GETTABLEKS                       R15 R15 K14 ["time"]
      249 CALL                             R13 2 1
      250 LOADB                            R14 0
      251 MOVE                             R15 R12
      252 LOADNIL                          R16
      253 LOADNIL                          R17
      254 FORGPREP                         R15
      255 GETUPVAL                         R21 4
      256 DIV                              R20 R18 R21
      257 GETUPVAL                         R21 5
      258 GETTABLEKS                       R21 R21 K28 ["ensureKeyframeAtTime"]
      260 MOVE                             R22 R0
      261 MOVE                             R23 R4
      262 MOVE                             R24 R20
      263 CALL                             R21 3 1
      264 MOVE                             R22 R3
      265 LOADNIL                          R23
      266 LOADNIL                          R24
      267 FORGPREP                         R22
      268 GETUPVAL                         R27 5
      269 GETTABLEKS                       R27 R27 K29 ["ensurePose"]
      271 MOVE                             R28 R21
      272 MOVE                             R29 R26
      273 MOVE                             R30 R13
      274 CALL                             R27 3 1
      275 GETTABLEKS                       R28 R27 K18 ["CFrame"]
      277 GETTABLEKS                       R28 R28 K30 ["Position"]
      279 GETTABLE                         R30 R19 R25
      280 GETIMPORT                        R31 K32 [CFrame.new]
      282 GETTABLEKS                       R32 R28 K33 ["X"]
      284 GETTABLEKS                       R33 R28 K34 ["Y"]
      286 GETTABLEKS                       R34 R28 K35 ["Z"]
      288 GETTABLEN                        R36 R30 1
      289 GETTABLEN                        R35 R36 1
      290 GETTABLEN                        R37 R30 1
      291 GETTABLEN                        R36 R37 2
      292 GETTABLEN                        R38 R30 1
      293 GETTABLEN                        R37 R38 3
      294 GETTABLEN                        R39 R30 2
      295 GETTABLEN                        R38 R39 1
      296 GETTABLEN                        R40 R30 2
      297 GETTABLEN                        R39 R40 2
      298 GETTABLEN                        R41 R30 2
      299 GETTABLEN                        R40 R41 3
      300 GETTABLEN                        R42 R30 3
      301 GETTABLEN                        R41 R42 1
      302 GETTABLEN                        R43 R30 3
      303 GETTABLEN                        R42 R43 2
      304 GETTABLEN                        R44 R30 3
      305 GETTABLEN                        R43 R44 3
      306 CALL                             R31 12 1
      307 MOVE                             R29 R31
      308 SETTABLEKS                       R29 R27 K18 ["CFrame"]
      310 LOADB                            R14 1
      311 FORGLOOP                         R22 2 ; [-44]
      313 FORGLOOP                         R15 2 ; [-59]
      315 RETURN                           R14 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationGenConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Util"]
       20 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       22 GETTABLEKS                       R3 R3 K9 ["Posing"]
       24 GETTABLEKS                       R3 R3 K10 ["KeyframePoses"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Util"]
       31 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       33 GETTABLEKS                       R4 R4 K9 ["Posing"]
       35 GETTABLEKS                       R4 R4 K11 ["RotationIntentTemporal"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["Util"]
       42 GETTABLEKS                       R5 R5 K7 ["AnimationGen"]
       44 GETTABLEKS                       R5 R5 K9 ["Posing"]
       46 GETTABLEKS                       R5 R5 K12 ["ScrubbarFrameKeys"]
       48 CALL                             R4 1 1
       49 NEWTABLE                         R5 32 0
       51 LOADB                            R6 1
       52 SETTABLEKS                       R6 R5 K13 ["HumanoidRootPart"]
       54 LOADB                            R6 1
       55 SETTABLEKS                       R6 R5 K14 ["LowerTorso"]
       57 LOADB                            R6 1
       58 SETTABLEKS                       R6 R5 K15 ["UpperTorso"]
       60 LOADB                            R6 1
       61 SETTABLEKS                       R6 R5 K16 ["Head"]
       63 LOADB                            R6 1
       64 SETTABLEKS                       R6 R5 K17 ["Waist"]
       66 LOADB                            R6 1
       67 SETTABLEKS                       R6 R5 K18 ["Neck"]
       69 LOADB                            R6 1
       70 SETTABLEKS                       R6 R5 K19 ["LeftUpperArm"]
       72 LOADB                            R6 1
       73 SETTABLEKS                       R6 R5 K20 ["LeftLowerArm"]
       75 LOADB                            R6 1
       76 SETTABLEKS                       R6 R5 K21 ["LeftHand"]
       78 LOADB                            R6 1
       79 SETTABLEKS                       R6 R5 K22 ["RightUpperArm"]
       81 LOADB                            R6 1
       82 SETTABLEKS                       R6 R5 K23 ["RightLowerArm"]
       84 LOADB                            R6 1
       85 SETTABLEKS                       R6 R5 K24 ["RightHand"]
       87 LOADB                            R6 1
       88 SETTABLEKS                       R6 R5 K25 ["LeftUpperLeg"]
       90 LOADB                            R6 1
       91 SETTABLEKS                       R6 R5 K26 ["LeftLowerLeg"]
       93 LOADB                            R6 1
       94 SETTABLEKS                       R6 R5 K27 ["LeftFoot"]
       96 LOADB                            R6 1
       97 SETTABLEKS                       R6 R5 K28 ["RightUpperLeg"]
       99 LOADB                            R6 1
      100 SETTABLEKS                       R6 R5 K29 ["RightLowerLeg"]
      102 LOADB                            R6 1
      103 SETTABLEKS                       R6 R5 K30 ["RightFoot"]
      105 LOADB                            R6 1
      106 SETTABLEKS                       R6 R5 K31 ["Left Arm"]
      108 LOADB                            R6 1
      109 SETTABLEKS                       R6 R5 K32 ["Right Arm"]
      111 LOADB                            R6 1
      112 SETTABLEKS                       R6 R5 K33 ["Left Leg"]
      114 LOADB                            R6 1
      115 SETTABLEKS                       R6 R5 K34 ["Right Leg"]
      117 GETTABLEKS                       R6 R1 K35 ["DEFAULT_GENERATION_FPS"]
      119 GETTABLEKS                       R7 R2 K36 ["poseMap"]
      121 DUPCLOSURE                       R8 K37 [PROTO_0]
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R5
      124 DUPCLOSURE                       R9 K38 [PROTO_1]
      125 DUPCLOSURE                       R10 K39 [PROTO_2]
      126 GETTABLEKS                       R11 R2 K40 ["sortedKeyframes"]
      128 DUPCLOSURE                       R12 K41 [PROTO_4]
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R3
      137 RETURN                           R12 1
